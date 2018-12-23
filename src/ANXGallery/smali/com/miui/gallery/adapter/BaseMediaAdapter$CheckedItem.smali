.class public Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;
.super Ljava/lang/Object;
.source "BaseMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/BaseMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckedItem"
.end annotation


# instance fields
.field private mHeight:I

.field private mId:J

.field private mMicroThumbnailFile:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mOriginFile:Ljava/lang/String;

.field private mServerType:I

.field private mSha1:Ljava/lang/String;

.field private mSize:J

.field private mThumbnailFile:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>(Lcom/miui/gallery/adapter/BaseMediaAdapter;I)V
    .locals 2
    .param p1, "adapter"    # Lcom/miui/gallery/adapter/BaseMediaAdapter;
    .param p2, "position"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getItemKey(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mId:J

    .line 64
    invoke-virtual {p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getSha1(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mSha1:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getMicroThumbFilePath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mMicroThumbnailFile:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getThumbFilePath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mThumbnailFile:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getOriginFilePath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mOriginFile:Ljava/lang/String;

    .line 68
    invoke-virtual {p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mMimeType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/adapter/BaseMediaAdapter;ILcom/miui/gallery/adapter/BaseMediaAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/adapter/BaseMediaAdapter;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/miui/gallery/adapter/BaseMediaAdapter$1;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;-><init>(Lcom/miui/gallery/adapter/BaseMediaAdapter;I)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mHeight:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mOriginFile:Ljava/lang/String;

    return-object v0
.end method

.method public getServerType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mServerType:I

    return v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mSize:J

    return-wide v0
.end method

.method public getThumbnailFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mThumbnailFile:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mWidth:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mHeight:I

    .line 109
    return-void
.end method

.method public setServerType(I)V
    .locals 0
    .param p1, "serverType"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mServerType:I

    .line 125
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mSize:J

    .line 101
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;->mWidth:I

    .line 117
    return-void
.end method
