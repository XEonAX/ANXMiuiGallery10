.class Lcom/miui/gallery3d/exif/ExifModifier;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ExifModifier"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToModified:Lcom/miui/gallery3d/exif/ExifData;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mOffsetBase:I

    .line 52
    iput-object p2, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/miui/gallery3d/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    .line 57
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;

    move-result-object v1

    .line 58
    .local v1, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    new-instance v2, Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v2, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    .line 59
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mOffsetBase:I

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifParser;->getTiffStartPosition()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mOffsetBase:I

    .line 60
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v1    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private modify()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;

    .line 144
    .local v1, "tagOffset":Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;
    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;->mTag:Lcom/miui/gallery3d/exif/ExifTag;

    iget v3, v1, Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery3d/exif/ExifModifier;->writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;I)V

    .line 145
    .end local v1    # "tagOffset":Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;
    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;I)V
    .locals 6
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;
    .param p2, "offset"    # I

    .line 153
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mOffsetBase:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 173
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getRational(I)Lcom/miui/gallery3d/exif/Rational;

    move-result-object v2

    .line 175
    .local v2, "v":Lcom/miui/gallery3d/exif/Rational;
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    .end local v2    # "v":Lcom/miui/gallery3d/exif/Rational;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    goto :goto_3

    .line 167
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    goto :goto_3

    .line 186
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 187
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    .end local v0    # "i":I
    .end local v1    # "n":I
    :pswitch_4
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 157
    .local v0, "buf":[B
    array-length v1, v0

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 158
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v3, v0, v1

    .line 159
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    goto :goto_3

    .line 181
    .end local v0    # "buf":[B
    :pswitch_5
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 182
    .restart local v0    # "buf":[B
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 183
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    nop

    .line 191
    .end local v0    # "buf":[B
    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected commit()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    move-object v1, v0

    .line 73
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lcom/miui/gallery3d/exif/ByteBufferInputStream;

    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v2, v3}, Lcom/miui/gallery3d/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v1, v2

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "flag":I
    const/4 v3, 0x5

    new-array v4, v3, [Lcom/miui/gallery3d/exif/IfdData;

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    .line 77
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    .line 78
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    .line 79
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    .line 80
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    aput-object v5, v4, v10

    .line 83
    .local v4, "ifdDatas":[Lcom/miui/gallery3d/exif/IfdData;
    aget-object v5, v4, v6

    if-eqz v5, :cond_0

    .line 84
    or-int/lit8 v2, v2, 0x1

    .line 86
    :cond_0
    aget-object v5, v4, v7

    if-eqz v5, :cond_1

    .line 87
    or-int/lit8 v2, v2, 0x2

    .line 89
    :cond_1
    aget-object v5, v4, v8

    if-eqz v5, :cond_2

    .line 90
    or-int/lit8 v2, v2, 0x4

    .line 92
    :cond_2
    aget-object v5, v4, v10

    if-eqz v5, :cond_3

    .line 93
    or-int/lit8 v2, v2, 0x8

    .line 95
    :cond_3
    aget-object v5, v4, v9

    if-eqz v5, :cond_4

    .line 96
    or-int/lit8 v2, v2, 0x10

    .line 99
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-static {v1, v2, v5}, Lcom/miui/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;

    move-result-object v5

    .line 100
    .local v5, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifParser;->next()I

    move-result v8

    .line 101
    .local v8, "event":I
    nop

    .line 102
    .local v0, "currIfd":Lcom/miui/gallery3d/exif/IfdData;
    :goto_0
    if-eq v8, v3, :cond_8

    .line 103
    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 111
    :pswitch_0
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifParser;->getTag()Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v9

    .line 112
    .local v9, "oldTag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v10

    invoke-virtual {v0, v10}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v10

    .line 113
    .local v10, "newTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v10, :cond_7

    .line 114
    invoke-virtual {v10}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v11

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v12

    if-ne v11, v12, :cond_6

    .line 115
    invoke-virtual {v10}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v11

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v12

    if-eq v11, v12, :cond_5

    goto :goto_1

    .line 118
    :cond_5
    iget-object v11, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v12, Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifTag;->getOffset()I

    move-result v13

    invoke-direct {v12, v10, v13}, Lcom/miui/gallery3d/exif/ExifModifier$TagOffset;-><init>(Lcom/miui/gallery3d/exif/ExifTag;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v11

    invoke-virtual {v0, v11}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 120
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v11

    if-nez v11, :cond_7

    .line 121
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "oldTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v10    # "newTag":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_2

    .line 116
    .restart local v9    # "oldTag":Lcom/miui/gallery3d/exif/ExifTag;
    .restart local v10    # "newTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_6
    :goto_1
    nop

    .line 136
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    return v6

    .line 105
    .end local v9    # "oldTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v10    # "newTag":Lcom/miui/gallery3d/exif/ExifTag;
    :pswitch_1
    :try_start_1
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v9

    aget-object v9, v4, v9

    move-object v0, v9

    .line 106
    if-nez v0, :cond_7

    .line 107
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    .line 127
    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifParser;->next()I

    move-result v9

    move v8, v9

    goto :goto_0

    .line 129
    :cond_8
    array-length v3, v4

    move v9, v6

    :goto_3
    if-ge v9, v3, :cond_a

    aget-object v10, v4, v9

    .line 130
    .local v10, "ifd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v11, :cond_9

    .line 131
    nop

    .line 136
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    return v6

    .line 129
    .end local v10    # "ifd":Lcom/miui/gallery3d/exif/IfdData;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 134
    :cond_a
    :try_start_2
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifModifier;->modify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .end local v0    # "currIfd":Lcom/miui/gallery3d/exif/IfdData;
    .end local v2    # "flag":I
    .end local v4    # "ifdDatas":[Lcom/miui/gallery3d/exif/IfdData;
    .end local v5    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .end local v8    # "event":I
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    nop

    .line 138
    return v7

    .line 136
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/miui/gallery3d/exif/ExifTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .line 194
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifData;->addTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 195
    return-void
.end method
