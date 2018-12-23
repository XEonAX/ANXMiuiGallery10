.class Lcom/miui/gallery3d/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;,
        Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;,
        Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

.field private mTag:Lcom/miui/gallery3d/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 166
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 167
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/miui/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 168
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/miui/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    .line 169
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 170
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/miui/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 171
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 172
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/miui/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 173
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 174
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/miui/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 175
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 176
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/miui/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 177
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 178
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/miui/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    .line 177
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # I
    .param p3, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 150
    iput v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 158
    iput-boolean v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 160
    iput v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 180
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 204
    if-eqz p1, :cond_4

    .line 210
    iput-object p3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 211
    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 212
    new-instance v1, Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v1, p1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    .line 213
    iput p2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOptions:I

    .line 214
    iget-boolean v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v1, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->parseTiffHeader()V

    .line 219
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    .line 220
    .local v1, "offset":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 223
    long-to-int v3, v1

    iput v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfd0Position:I

    .line 224
    iput v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    .line 225
    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 227
    const-wide/16 v3, 0x8

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 228
    long-to-int v0, v1

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    .line 229
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifParser;->read([B)I

    .line 232
    :cond_2
    return-void

    .line 221
    :cond_3
    new-instance v0, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    .end local v1    # "offset":J
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null argument inputStream to ExifParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAllowed(II)Z
    .locals 2
    .param p1, "ifd"    # I
    .param p2, "tagId"    # I

    .line 639
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 640
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 641
    const/4 v1, 0x0

    return v1

    .line 643
    :cond_0
    invoke-static {v0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    return v1
.end method

.method private checkOffsetOrImageTag(Lcom/miui/gallery3d/exif/ExifTag;)V
    .locals 6
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .line 588
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    return-void

    .line 591
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v0

    .line 592
    .local v0, "tid":S
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    .line 593
    .local v1, "ifd":I
    sget-short v2, Lcom/miui/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 594
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 595
    invoke-direct {p0, v3}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 596
    :cond_1
    invoke-virtual {p1, v4}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 598
    :cond_2
    sget-short v2, Lcom/miui/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 600
    invoke-virtual {p1, v4}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 602
    :cond_3
    sget-short v2, Lcom/miui/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 603
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 604
    invoke-direct {p0, v3}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 605
    invoke-virtual {p1, v4}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 607
    :cond_4
    sget-short v2, Lcom/miui/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 608
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 609
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 610
    invoke-virtual {p1, v4}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery3d/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 612
    :cond_5
    sget-short v2, Lcom/miui/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 613
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 614
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 615
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_2

    .line 617
    :cond_6
    sget-short v2, Lcom/miui/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 618
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 619
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 620
    nop

    .local v4, "i":I
    :goto_0
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 621
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v4

    if-ne v4, v3, :cond_7

    .line 622
    invoke-virtual {p1, v2}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/miui/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 624
    :cond_7
    invoke-virtual {p1, v2}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/miui/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 620
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 628
    .end local v4    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;

    invoke-direct {v5, p1, v4}, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/miui/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v2, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 631
    :cond_9
    sget-short v2, Lcom/miui/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 632
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 633
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 634
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

    .line 636
    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .param p1, "ifdType"    # I

    .line 183
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 195
    return v1

    .line 191
    :pswitch_0
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 193
    :pswitch_1
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 189
    :pswitch_2
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 187
    :pswitch_3
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 185
    :pswitch_4
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOptions:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .line 199
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .line 393
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 404
    return v2

    .line 402
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 399
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    .line 395
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-direct {p0, v1}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-direct {p0, v3}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "options"    # I
    .param p2, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/miui/gallery3d/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/miui/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/miui/gallery3d/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/miui/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/miui/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 740
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 742
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_2

    .line 743
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 748
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1

    .line 751
    return-void

    .line 749
    :cond_1
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    :cond_2
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readTag()Lcom/miui/gallery3d/exif/ExifTag;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 536
    .local v0, "tagId":S
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v7

    .line 537
    .local v7, "dataFormat":S
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 538
    .local v8, "numOfComp":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v8, v10

    if-gtz v1, :cond_5

    .line 543
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    .line 544
    const-string v1, "ExifParser"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Tag %04x: Invalid data type %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->skip(J)J

    .line 546
    const/4 v1, 0x0

    return-object v1

    .line 549
    :cond_0
    new-instance v13, Lcom/miui/gallery3d/exif/ExifTag;

    long-to-int v4, v8

    iget v5, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    long-to-int v1, v8

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v12

    :goto_0
    move-object v1, v13

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 551
    .local v1, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v2

    .line 552
    .local v2, "dataSize":I
    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    .line 553
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 554
    .local v3, "offset":J
    cmp-long v5, v3, v10

    if-gtz v5, :cond_3

    .line 560
    iget v5, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfd0Position:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    const/4 v5, 0x7

    if-ne v7, v5, :cond_2

    .line 561
    long-to-int v5, v8

    new-array v5, v5, [B

    .line 562
    .local v5, "buf":[B
    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v10, v3

    add-int/lit8 v10, v10, -0x8

    long-to-int v11, v8

    invoke-static {v6, v10, v5, v12, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 564
    invoke-virtual {v1, v5}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    .line 565
    .end local v5    # "buf":[B
    goto :goto_1

    .line 566
    :cond_2
    long-to-int v5, v3

    invoke-virtual {v1, v5}, Lcom/miui/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 568
    .end local v3    # "offset":J
    :goto_1
    goto :goto_2

    .line 555
    .restart local v3    # "offset":J
    :cond_3
    new-instance v5, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;

    const-string v6, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v5, v6}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 569
    .end local v3    # "offset":J
    :cond_4
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->hasDefinedCount()Z

    move-result v4

    .line 571
    .local v4, "defCount":Z
    invoke-virtual {v1, v12}, Lcom/miui/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 573
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V

    .line 574
    invoke-virtual {v1, v4}, Lcom/miui/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 575
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    rsub-int/lit8 v6, v2, 0x4

    int-to-long v10, v6

    invoke-virtual {v5, v10, v11}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->skip(J)J

    .line 577
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/miui/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 579
    .end local v4    # "defCount":Z
    :goto_2
    return-object v1

    .line 539
    .end local v1    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v2    # "dataSize":I
    :cond_5
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v1, v2}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerCompressedImage(J)V
    .locals 4
    .param p1, "offset"    # J

    .line 526
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4
    .param p1, "ifdType"    # I
    .param p2, "offset"    # J

    .line 522
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4
    .param p1, "stripIndex"    # I
    .param p2, "offset"    # J

    .line 530
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 756
    .local v0, "dataStream":Lcom/miui/gallery3d/exif/CountedDataInputStream;
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, -0x28

    if-ne v1, v2, :cond_4

    .line 760
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 761
    .local v1, "marker":S
    :goto_0
    const/16 v2, -0x27

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 762
    invoke-static {v1}, Lcom/miui/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_3

    .line 763
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v2

    .line 766
    .local v2, "length":I
    const/16 v4, -0x1f

    if-ne v1, v4, :cond_0

    .line 767
    const/4 v4, 0x0

    .line 768
    .local v4, "header":I
    const/4 v5, 0x0

    .line 769
    .local v5, "headerTail":S
    const/16 v6, 0x8

    if-lt v2, v6, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v4

    .line 771
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v5

    .line 772
    add-int/lit8 v2, v2, -0x6

    .line 773
    const v6, 0x45786966

    if-ne v4, v6, :cond_0

    if-nez v5, :cond_0

    .line 774
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    .line 775
    iput v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mApp1End:I

    .line 776
    iget v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    iget v6, p0, Lcom/miui/gallery3d/exif/ExifParser;->mApp1End:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 777
    const/4 v3, 0x1

    return v3

    .line 781
    .end local v4    # "header":I
    .end local v5    # "headerTail":S
    :cond_0
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    add-int/lit8 v4, v2, -0x2

    int-to-long v4, v4

    add-int/lit8 v6, v2, -0x2

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 785
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 786
    .end local v2    # "length":I
    goto :goto_0

    .line 782
    .restart local v2    # "length":I
    :cond_2
    :goto_1
    const-string v4, "ExifParser"

    const-string v5, "Invalid JPEG format."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return v3

    .line 787
    .end local v2    # "length":I
    :cond_3
    return v3

    .line 757
    .end local v1    # "marker":S
    :cond_4
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid JPEG format"

    invoke-direct {v1, v2}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private skipTo(I)V
    .locals 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->skipTo(J)V

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 492
    return v1

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .line 791
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripCount()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mStripCount:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mImageEvent:Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 482
    return v1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/miui/gallery3d/exif/ExifTag;

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lcom/miui/gallery3d/exif/ExifTag;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .line 795
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 273
    iget-boolean v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 274
    return v1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 277
    .local v0, "offset":I
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    const/16 v5, 0xc

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 278
    .local v2, "endOfTags":I
    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readTag()Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    .line 280
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    if-nez v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->next()I

    move-result v1

    return v1

    .line 283
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    invoke-direct {p0, v1}, Lcom/miui/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/miui/gallery3d/exif/ExifTag;)V

    .line 286
    :cond_2
    return v4

    .line 287
    :cond_3
    if-ne v0, v2, :cond_9

    .line 289
    iget v6, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    const-wide/16 v7, 0x0

    if-nez v6, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v9

    .line 291
    .local v9, "ifdOffset":J
    invoke-direct {p0, v4}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 292
    :cond_4
    cmp-long v6, v9, v7

    if-eqz v6, :cond_5

    .line 293
    invoke-direct {p0, v4, v9, v10}, Lcom/miui/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 296
    .end local v9    # "ifdOffset":J
    :cond_5
    goto :goto_0

    .line 297
    :cond_6
    const/4 v4, 0x4

    .line 299
    .local v4, "offsetSize":I
    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 300
    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    .line 301
    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    sub-int v4, v6, v9

    .line 303
    :cond_7
    const/4 v6, 0x4

    if-ge v4, v6, :cond_8

    .line 304
    const-string v6, "ExifParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid size of link to next IFD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v9

    .line 307
    .restart local v9    # "ifdOffset":J
    cmp-long v6, v9, v7

    if-eqz v6, :cond_9

    .line 308
    const-string v6, "ExifParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid link to next IFD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v4    # "offsetSize":I
    .end local v9    # "ifdOffset":J
    :cond_9
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-eqz v4, :cond_10

    .line 314
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v4

    .line 315
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 317
    .local v6, "event":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/miui/gallery3d/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    nop

    .line 323
    instance-of v7, v6, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v7, :cond_c

    .line 324
    move-object v7, v6

    check-cast v7, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;

    iget v7, v7, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    iput v7, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    .line 325
    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v7}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v7

    iput v7, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 326
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 328
    iget v7, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    iget v8, p0, Lcom/miui/gallery3d/exif/ExifParser;->mApp1End:I

    if-le v7, v8, :cond_a

    .line 329
    const-string v3, "ExifParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid size of IFD "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v1

    .line 333
    :cond_a
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v7

    iput-boolean v7, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 334
    move-object v7, v6

    check-cast v7, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;

    iget-boolean v7, v7, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v7, :cond_b

    .line 335
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_b
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 339
    :cond_c
    instance-of v7, v6, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v7, :cond_d

    .line 340
    move-object v1, v6

    check-cast v1, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    iput-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mImageEvent:Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    .line 341
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mImageEvent:Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    iget v1, v1, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;->type:I

    return v1

    .line 343
    :cond_d
    move-object v7, v6

    check-cast v7, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;

    .line 344
    .local v7, "tagEvent":Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;
    iget-object v8, v7, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/miui/gallery3d/exif/ExifTag;

    iput-object v8, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    .line 345
    iget-object v8, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    invoke-virtual {v8}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_e

    .line 346
    iget-object v8, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    invoke-virtual {p0, v8}, Lcom/miui/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V

    .line 347
    iget-object v8, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    invoke-direct {p0, v8}, Lcom/miui/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/miui/gallery3d/exif/ExifTag;)V

    .line 349
    :cond_e
    iget-boolean v8, v7, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v8, :cond_f

    .line 350
    return v3

    .line 353
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "event":Ljava/lang/Object;
    .end local v7    # "tagEvent":Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;
    :cond_f
    :goto_1
    goto/16 :goto_0

    .line 318
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v6    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 319
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to skip to data at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", the file may be broken."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    goto/16 :goto_0

    .line 354
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "event":Ljava/lang/Object;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_10
    return v1
.end method

.method protected read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    .line 649
    .local v0, "type":S
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 651
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .line 652
    .local v1, "size":I
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 653
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    .line 655
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 656
    .local v2, "event":Ljava/lang/Object;
    instance-of v3, v2, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v3, :cond_1

    .line 658
    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 660
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v4, "ExifParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid thumbnail offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto/16 :goto_1

    .line 663
    :cond_1
    instance-of v3, v2, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v3, :cond_2

    .line 664
    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ifd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v2

    check-cast v5, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;

    iget v5, v5, Lcom/miui/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " overlaps value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 664
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    :cond_2
    instance-of v3, v2, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;

    if-eqz v3, :cond_3

    .line 667
    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tag value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v2

    check-cast v5, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;

    iget-object v5, v5, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/miui/gallery3d/exif/ExifTag;

    .line 668
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlaps value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 667
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    .line 672
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v3, v4

    .line 673
    .end local v1    # "size":I
    .local v3, "size":I
    const-string v1, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size of tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " setting count to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p1, v3}, Lcom/miui/gallery3d/exif/ExifTag;->forceSetComponentCount(I)V

    .line 680
    .end local v2    # "event":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 724
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [Lcom/miui/gallery3d/exif/Rational;

    .line 725
    .local v1, "value":[Lcom/miui/gallery3d/exif/Rational;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 726
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readRational()Lcom/miui/gallery3d/exif/Rational;

    move-result-object v4

    aput-object v4, v1, v2

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 728
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_5
    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([Lcom/miui/gallery3d/exif/Rational;)Z

    .end local v1    # "value":[Lcom/miui/gallery3d/exif/Rational;
    goto/16 :goto_7

    .line 716
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [I

    .line 717
    .local v1, "value":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_3
    if-ge v2, v3, :cond_6

    .line 718
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readLong()I

    move-result v4

    aput v4, v1, v2

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 720
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_6
    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    .line 722
    .end local v1    # "value":[I
    goto :goto_7

    .line 700
    :pswitch_3
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [Lcom/miui/gallery3d/exif/Rational;

    .line 701
    .local v1, "value":[Lcom/miui/gallery3d/exif/Rational;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_4
    if-ge v2, v3, :cond_7

    .line 702
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedRational()Lcom/miui/gallery3d/exif/Rational;

    move-result-object v4

    aput-object v4, v1, v2

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 704
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_7
    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([Lcom/miui/gallery3d/exif/Rational;)Z

    .line 706
    .end local v1    # "value":[Lcom/miui/gallery3d/exif/Rational;
    goto :goto_7

    .line 692
    :pswitch_4
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [J

    .line 693
    .local v1, "value":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_5
    if-ge v2, v3, :cond_8

    .line 694
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 696
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_8
    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    .line 698
    .end local v1    # "value":[J
    goto :goto_7

    .line 708
    :pswitch_5
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [I

    .line 709
    .local v1, "value":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_6
    if-ge v2, v3, :cond_9

    .line 710
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedShort()I

    move-result v4

    aput v4, v1, v2

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 712
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_9
    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    .line 714
    .end local v1    # "value":[I
    goto :goto_7

    .line 689
    :pswitch_6
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    .line 690
    goto :goto_7

    .line 683
    :pswitch_7
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [B

    .line 684
    .local v1, "buf":[B
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifParser;->read([B)I

    .line 685
    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    .line 687
    .end local v1    # "buf":[B
    nop

    .line 735
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/miui/gallery3d/exif/Rational;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    .line 872
    .local v0, "nomi":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readLong()I

    move-result v1

    .line 873
    .local v1, "denomi":I
    new-instance v2, Lcom/miui/gallery3d/exif/Rational;

    int-to-long v3, v0

    int-to-long v5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    sget-object v0, Lcom/miui/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    if-lez p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 830
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/miui/gallery3d/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 856
    .local v0, "nomi":J
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 857
    .local v2, "denomi":J
    new-instance v4, Lcom/miui/gallery3d/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V
    .locals 4
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .line 514
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/miui/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    const/16 v2, 0xc

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 366
    .local v0, "endOfTags":I
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTiffStream:Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    .line 367
    .local v1, "offset":I
    if-le v1, v0, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    iget-boolean v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    .line 371
    :goto_0
    if-ge v1, v0, :cond_3

    .line 372
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readTag()Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    .line 373
    add-int/lit8 v1, v1, 0xc

    .line 374
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    if-nez v2, :cond_1

    .line 375
    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifParser;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    invoke-direct {p0, v2}, Lcom/miui/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/miui/gallery3d/exif/ExifTag;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifParser;->skipTo(I)V

    .line 382
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 384
    .local v2, "ifdOffset":J
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v4, :cond_5

    .line 385
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/miui/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    .line 387
    invoke-direct {p0, v4, v2, v3}, Lcom/miui/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 390
    :cond_5
    return-void
.end method
