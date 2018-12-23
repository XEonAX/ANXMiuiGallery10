.class public Lcom/miui/gallery/assistant/model/MediaFeatureItem;
.super Ljava/lang/Object;
.source "MediaFeatureItem.java"

# interfaces
.implements Lcom/miui/gallery/assistant/model/ImageFeatureItem;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/assistant/model/ImageFeatureItem;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDateTime:J

.field private mId:J

.field private transient mImageFeature:Lcom/miui/gallery/assistant/model/ImageFeature;

.field private mLocalFlag:I

.field private mMicroThumbnailPath:Ljava/lang/String;

.field private mOriginPath:Ljava/lang/String;

.field private mServerId:J

.field private mSha1:Ljava/lang/String;

.field private mThumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "localFlag"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "serverId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mId:J

    .line 49
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mSha1:Ljava/lang/String;

    .line 50
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mMicroThumbnailPath:Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mThumbnailPath:Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mOriginPath:Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mDateTime:J

    .line 54
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mLocalFlag:I

    .line 55
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mServerId:J

    .line 57
    :cond_0
    return-void
.end method

.method public static getMediaFeatureItemsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    new-instance v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;-><init>(Landroid/database/Cursor;)V

    .line 156
    .local v0, "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    .end local v0    # "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/assistant/model/MediaFeatureItem;)I
    .locals 4
    .param p1, "o"    # Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mImageFeature:Lcom/miui/gallery/assistant/model/ImageFeature;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mImageFeature:Lcom/miui/gallery/assistant/model/ImageFeature;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mImageFeature:Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->getScore()D

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mImageFeature:Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getScore()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->compareTo(Lcom/miui/gallery/assistant/model/MediaFeatureItem;)I

    move-result v0

    return v0
.end method

.method public getDateTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mDateTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mId:J

    return-wide v0
.end method

.method public getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mImageFeature:Lcom/miui/gallery/assistant/model/ImageFeature;

    return-object v0
.end method

.method public getLocalFlag()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mLocalFlag:I

    return v0
.end method

.method public getMediaId()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mId:J

    return-wide v0
.end method

.method public getMediaSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getMicroThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mMicroThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mOriginPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mServerId:J

    return-wide v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V
    .locals 0
    .param p1, "imageFeature"    # Lcom/miui/gallery/assistant/model/ImageFeature;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mImageFeature:Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 119
    return-void
.end method

.method public setMicroThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "microThumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mMicroThumbnailPath:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setOriginPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "originPath"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mOriginPath:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->mThumbnailPath:Ljava/lang/String;

    .line 90
    return-void
.end method
