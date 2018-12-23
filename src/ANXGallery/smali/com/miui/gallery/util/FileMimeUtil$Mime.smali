.class Lcom/miui/gallery/util/FileMimeUtil$Mime;
.super Ljava/lang/Object;
.source "FileMimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/FileMimeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mime"
.end annotation


# instance fields
.field private final mEnd:[B

.field private final mHead:[B

.field private final mMime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "head"    # [B
    .param p3, "end"    # [B

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mMime:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mHead:[B

    .line 40
    iput-object p3, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mEnd:[B

    .line 41
    return-void
.end method


# virtual methods
.method public getEndLength()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mEnd:[B

    array-length v0, v0

    return v0
.end method

.method public getHeadLength()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mHead:[B

    array-length v0, v0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mEnd:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHead()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mHead:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndRight([B)Z
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    .line 73
    iget-object v3, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mEnd:[B

    array-length v2, v3

    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "endIndex":I
    array-length v3, p1

    sub-int v0, v3, v2

    .local v0, "bufIndex":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 74
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mEnd:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_0

    .line 75
    const/4 v3, 0x0

    .line 78
    :goto_1
    return v3

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isHeadRight([B)Z
    .locals 4
    .param p1, "buf"    # [B

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mHead:[B

    array-length v1, v2

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 65
    aget-byte v2, p1, v0

    iget-object v3, p0, Lcom/miui/gallery/util/FileMimeUtil$Mime;->mHead:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 69
    :goto_1
    return v2

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
