.class public Lcom/miui/gallery/util/FileMimeUtil;
.super Ljava/lang/Object;
.source "FileMimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/FileMimeUtil$Mime;
    }
.end annotation


# static fields
.field private static final IMAGE_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

.field private static final MAX_END_LENGTH:I

.field private static final MAX_HEAD_LENGTH:I

.field private static final VIDEO_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

.field private static sSupportUploadMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const/16 v11, 0xc

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 82
    const/16 v3, 0xb

    new-array v3, v3, [Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/jpeg"

    new-array v7, v10, [B

    fill-array-data v7, :array_0

    new-array v8, v10, [B

    fill-array-data v8, :array_1

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/jpeg"

    new-array v7, v10, [B

    fill-array-data v7, :array_2

    new-array v8, v10, [B

    fill-array-data v8, :array_3

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v5, "image/png"

    const/16 v6, 0x8

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    invoke-direct {v4, v5, v6, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v4, v3, v10

    const/4 v4, 0x3

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/tga"

    new-array v7, v12, [B

    fill-array-data v7, :array_5

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/tga"

    new-array v7, v12, [B

    fill-array-data v7, :array_6

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v5, "image/gif"

    new-array v6, v13, [B

    fill-array-data v6, :array_7

    invoke-direct {v4, v5, v6, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v4, v3, v12

    new-instance v4, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v5, "image/gif"

    new-array v6, v13, [B

    fill-array-data v6, :array_8

    invoke-direct {v4, v5, v6, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v4, v3, v13

    const/4 v4, 0x7

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/bmp"

    new-array v7, v10, [B

    fill-array-data v7, :array_9

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/tiff"

    new-array v7, v10, [B

    fill-array-data v7, :array_a

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/tiff"

    new-array v7, v10, [B

    fill-array-data v7, :array_b

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string v6, "image/webp"

    new-array v7, v10, [B

    fill-array-data v7, :array_c

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    sput-object v3, Lcom/miui/gallery/util/FileMimeUtil;->IMAGE_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    .line 96
    const/16 v3, 0x9

    new-array v3, v3, [Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v6, "video/3gpp"

    new-array v7, v11, [B

    fill-array-data v7, :array_d

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v6, "video/mp4"

    new-array v7, v11, [B

    fill-array-data v7, :array_e

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v5, "video/mp4"

    new-array v6, v11, [B

    fill-array-data v6, :array_f

    invoke-direct {v4, v5, v6, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v4, v3, v10

    const/4 v4, 0x3

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v6, "video/mp4"

    const/16 v7, 0xb

    new-array v7, v7, [B

    fill-array-data v7, :array_10

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v6, "video/3gp"

    new-array v7, v11, [B

    fill-array-data v7, :array_11

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v5, "video/quicktime"

    const/16 v6, 0xa

    new-array v6, v6, [B

    fill-array-data v6, :array_12

    invoke-direct {v4, v5, v6, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v4, v3, v12

    new-instance v4, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v5, "video/mp4"

    new-array v6, v11, [B

    fill-array-data v6, :array_13

    invoke-direct {v4, v5, v6, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v4, v3, v13

    const/4 v4, 0x7

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v6, "video/quicktime"

    new-array v7, v11, [B

    fill-array-data v7, :array_14

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/miui/gallery/util/FileMimeUtil$Mime;

    const-string/jumbo v6, "video/mp4"

    new-array v7, v11, [B

    fill-array-data v7, :array_15

    invoke-direct {v5, v6, v7, v9}, Lcom/miui/gallery/util/FileMimeUtil$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v5, v3, v4

    sput-object v3, Lcom/miui/gallery/util/FileMimeUtil;->VIDEO_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    .line 159
    const/4 v1, 0x0

    .local v1, "h":I
    const/4 v0, 0x0

    .line 160
    .local v0, "e":I
    invoke-static {}, Lcom/miui/gallery/util/FileMimeUtil;->getMimes()[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 161
    .local v2, "mime":Lcom/miui/gallery/util/FileMimeUtil$Mime;
    invoke-virtual {v2}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->hasHead()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->getHeadLength()I

    move-result v6

    if-le v6, v1, :cond_0

    .line 162
    invoke-virtual {v2}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->getHeadLength()I

    move-result v1

    .line 164
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->hasEnd()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->getEndLength()I

    move-result v6

    if-le v6, v0, :cond_1

    .line 165
    invoke-virtual {v2}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->getEndLength()I

    move-result v0

    .line 160
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "mime":Lcom/miui/gallery/util/FileMimeUtil$Mime;
    :cond_2
    sput v1, Lcom/miui/gallery/util/FileMimeUtil;->MAX_HEAD_LENGTH:I

    .line 169
    sput v0, Lcom/miui/gallery/util/FileMimeUtil;->MAX_END_LENGTH:I

    .line 170
    return-void

    .line 82
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x42t
        0x4dt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x4dt
        0x4dt
    .end array-data

    nop

    :array_b
    .array-data 1
        0x49t
        0x49t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x52t
        0x49t
    .end array-data

    .line 96
    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x69t
        0x73t
        0x6ft
        0x6dt
        0x33t
        0x67t
        0x70t
        0x34t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x69t
        0x73t
        0x6ft
        0x6dt
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
    .end array-data

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x33t
        0x67t
        0x70t
    .end array-data

    :array_11
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x33t
        0x67t
        0x70t
        0x34t
    .end array-data

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x14t
        0x66t
        0x74t
        0x79t
        0x70t
        0x71t
        0x74t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x20t
        0x66t
        0x74t
        0x79t
        0x70t
        0x61t
        0x76t
        0x63t
        0x31t
    .end array-data

    :array_14
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
    .end array-data

    :array_15
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x20t
        0x66t
        0x74t
        0x79t
        0x70t
        0x69t
        0x73t
        0x6ft
        0x6dt
    .end array-data
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/miui/gallery/util/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "*/*"

    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 255
    :cond_1
    const-string v0, "*/*"

    goto :goto_0
.end method

.method public static getMimeTypeByParseFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v1, "*/*"

    .line 247
    .local v1, "mimeType":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/FileMimeUtil;->getMimes()[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/util/FileMimeUtil;->rawGetMimeType(Ljava/lang/String;[Lcom/miui/gallery/util/FileMimeUtil$Mime;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "FileMimeUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getMimes()[Lcom/miui/gallery/util/FileMimeUtil$Mime;
    .locals 5

    .prologue
    .line 232
    sget-object v3, Lcom/miui/gallery/util/FileMimeUtil;->IMAGE_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    array-length v3, v3

    sget-object v4, Lcom/miui/gallery/util/FileMimeUtil;->VIDEO_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    array-length v4, v4

    add-int v1, v3, v4

    .line 233
    .local v1, "length":I
    new-array v2, v1, [Lcom/miui/gallery/util/FileMimeUtil$Mime;

    .line 234
    .local v2, "mimes":[Lcom/miui/gallery/util/FileMimeUtil$Mime;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 235
    sget-object v3, Lcom/miui/gallery/util/FileMimeUtil;->IMAGE_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 236
    sget-object v3, Lcom/miui/gallery/util/FileMimeUtil;->IMAGE_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 234
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    sget-object v3, Lcom/miui/gallery/util/FileMimeUtil;->VIDEO_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    sget-object v4, Lcom/miui/gallery/util/FileMimeUtil;->IMAGE_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    array-length v4, v4

    sub-int v4, v0, v4

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    goto :goto_1

    .line 241
    :cond_1
    return-object v2
.end method

.method public static getSupportUploadMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 261
    invoke-static {p0}, Lcom/miui/gallery/util/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 264
    .local v1, "lastDot":I
    if-ltz v1, :cond_3

    .line 266
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/FileMimeUtil;->getSupportedMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "supportUploadMimeType":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 282
    .end local v1    # "lastDot":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "supportUploadMimeType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 269
    .restart local v1    # "lastDot":I
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "supportUploadMimeType":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    :try_start_0
    sget-object v4, Lcom/miui/gallery/util/FileMimeUtil;->VIDEO_MIMES:[Lcom/miui/gallery/util/FileMimeUtil$Mime;

    invoke-static {p0, v4}, Lcom/miui/gallery/util/FileMimeUtil;->rawGetMimeType(Ljava/lang/String;[Lcom/miui/gallery/util/FileMimeUtil$Mime;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 275
    :goto_1
    if-nez v3, :cond_1

    .line 282
    .end local v1    # "lastDot":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "supportUploadMimeType":Ljava/lang/String;
    :cond_3
    const-string v3, "*/*"

    goto :goto_0

    .line 272
    .restart local v1    # "lastDot":I
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "supportUploadMimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "FileMimeUtil"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static getSupportedMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getUploadSupportedFileTypes()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    .line 26
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/miui/gallery/util/FileMimeUtil;->sSupportUploadMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static hasExif(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p0}, Lcom/miui/gallery/util/MediaFile;->getFileType(Ljava/lang/String;)Lcom/miui/gallery/util/MediaFile$MediaFileType;

    move-result-object v0

    .line 299
    .local v0, "fileType":Lcom/miui/gallery/util/MediaFile$MediaFileType;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/miui/gallery/util/MediaFile$MediaFileType;->fileType:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGifFromMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "image/gif"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isImageFromMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVideoFromMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static rawGetMimeType(Ljava/lang/String;[Lcom/miui/gallery/util/FileMimeUtil$Mime;)Ljava/lang/String;
    .locals 17
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mimes"    # [Lcom/miui/gallery/util/FileMimeUtil$Mime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, "file":Ljava/io/RandomAccessFile;
    sget v12, Lcom/miui/gallery/util/FileMimeUtil;->MAX_HEAD_LENGTH:I

    new-array v7, v12, [B

    .line 175
    .local v7, "headBuffer":[B
    sget v12, Lcom/miui/gallery/util/FileMimeUtil;->MAX_END_LENGTH:I

    new-array v2, v12, [B

    .line 177
    .local v2, "endBuffer":[B
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v12, "r"

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .local v6, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    :try_start_1
    invoke-virtual {v6, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    const/4 v12, 0x0

    array-length v13, v7

    invoke-virtual {v6, v7, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v10

    .line 185
    .local v10, "headBufferedLength":I
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    .line 186
    .local v8, "fileLength":J
    array-length v12, v2

    int-to-long v12, v12

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 188
    .local v4, "endBufferedLength":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-ltz v12, :cond_0

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v4, v12

    if-lez v12, :cond_1

    .line 189
    :cond_0
    const-string v12, "FileMimeUtil"

    const-string/jumbo v13, "unexpected error, endBufferedLength: %d, file length: %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 190
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    .line 189
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    const/4 v12, 0x0

    .line 226
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 228
    :goto_0
    return-object v12

    .line 193
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_2

    .line 194
    :try_start_2
    const-string v12, "FileMimeUtil"

    const-string v13, "endBufferedLength is 0, just return null mime type"

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    const/4 v12, 0x0

    .line 226
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 198
    :cond_2
    sub-long v12, v8, v4

    :try_start_3
    invoke-virtual {v6, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 200
    const/4 v12, 0x0

    long-to-int v13, v4

    invoke-virtual {v6, v2, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v12

    int-to-long v12, v12

    cmp-long v12, v4, v12

    if-eqz v12, :cond_3

    .line 201
    const-wide/16 v4, 0x0

    .line 204
    :cond_3
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_8

    aget-object v11, p1, v12

    .line 205
    .local v11, "mime":Lcom/miui/gallery/util/FileMimeUtil$Mime;
    invoke-virtual {v11}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->hasHead()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 206
    invoke-virtual {v11}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->getHeadLength()I

    move-result v14

    if-ge v10, v14, :cond_5

    .line 204
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {v11, v7}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->isHeadRight([B)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 214
    :cond_6
    invoke-virtual {v11}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->hasEnd()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 215
    invoke-virtual {v11}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->getEndLength()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v4, v14

    if-ltz v14, :cond_4

    .line 218
    invoke-virtual {v11, v2}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->isEndRight([B)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 223
    :cond_7
    invoke-virtual {v11}, Lcom/miui/gallery/util/FileMimeUtil$Mime;->getMimeType()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v12

    .line 226
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v11    # "mime":Lcom/miui/gallery/util/FileMimeUtil$Mime;
    :cond_8
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 228
    const/4 v12, 0x0

    goto :goto_0

    .line 226
    .end local v4    # "endBufferedLength":J
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .end local v8    # "fileLength":J
    .end local v10    # "headBufferedLength":I
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v12

    :goto_2
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v12

    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v3, v6

    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
