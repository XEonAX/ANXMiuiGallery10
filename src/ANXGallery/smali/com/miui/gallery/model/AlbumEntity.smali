.class public Lcom/miui/gallery/model/AlbumEntity;
.super Ljava/lang/Object;
.source "AlbumEntity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/miui/gallery/model/AlbumConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/model/AlbumEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumClassification:I

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumUnwriteable:Z

.field private mAttributes:J

.field private mBabyInfo:Ljava/lang/String;

.field private mBabyShareInfo:Ljava/lang/String;

.field private mCount:I

.field private mCoverId:J

.field private mCoverPath:Ljava/lang/String;

.field private mCoverSha1:Ljava/lang/String;

.field private mCoverSyncState:I

.field private mId:J

.field private mLocalPath:Ljava/lang/String;

.field private mPeopleId:Ljava/lang/String;

.field private mServerId:Ljava/lang/String;

.field private mSortBy:J

.field private mThumbnailInfoOfBaby:Ljava/lang/String;

.field private mTopTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/miui/gallery/model/AlbumEntity$1;

    invoke-direct {v0}, Lcom/miui/gallery/model/AlbumEntity$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/model/AlbumEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mId:J

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverId:J

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverPath:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverSha1:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverSyncState:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCount:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mPeopleId:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mBabyInfo:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mThumbnailInfoOfBaby:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mServerId:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAttributes:J

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumUnwriteable:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mTopTime:J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mSortBy:J

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mBabyShareInfo:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mLocalPath:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumClassification:I

    .line 277
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/miui/gallery/model/AlbumEntity;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/miui/gallery/model/AlbumEntity;

    invoke-direct {v0}, Lcom/miui/gallery/model/AlbumEntity;-><init>()V

    .line 38
    .local v0, "entity":Lcom/miui/gallery/model/AlbumEntity;
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/gallery/model/AlbumEntity;->mId:J

    .line 39
    invoke-static {p0}, Lcom/miui/gallery/model/AlbumEntity;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumName:Ljava/lang/String;

    .line 40
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/gallery/model/AlbumEntity;->mCoverId:J

    .line 41
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mCoverPath:Ljava/lang/String;

    .line 42
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mCoverSha1:Ljava/lang/String;

    .line 43
    const/4 v3, 0x5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mCoverSyncState:I

    .line 44
    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mCount:I

    .line 45
    const/4 v3, 0x7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mPeopleId:Ljava/lang/String;

    .line 46
    const/16 v3, 0x8

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mBabyInfo:Ljava/lang/String;

    .line 47
    const/16 v3, 0x9

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mThumbnailInfoOfBaby:Ljava/lang/String;

    .line 48
    const/16 v3, 0xa

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/AlbumEntity;->mServerId:Ljava/lang/String;

    .line 49
    const/16 v3, 0xb

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/gallery/model/AlbumEntity;->mAttributes:J

    .line 50
    const/16 v3, 0xc

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    iput-boolean v1, v0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumUnwriteable:Z

    .line 51
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/model/AlbumEntity;->mTopTime:J

    .line 52
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/model/AlbumEntity;->mSortBy:J

    .line 53
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumEntity;->mBabyShareInfo:Ljava/lang/String;

    .line 54
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumEntity;->mLocalPath:Ljava/lang/String;

    .line 55
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumClassification:I

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 50
    goto :goto_1
.end method

.method private static getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 61
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 62
    .local v3, "context":Landroid/content/Context;
    const/16 v5, 0xa

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "serverId":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 64
    .local v0, "albumId":J
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    const v5, 0x7f0e0028

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "albumName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 66
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_0
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    const v5, 0x7f0e0041

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_1
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 69
    const v5, 0x7f0e0052

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_2
    const-wide/32 v6, 0x7ffffffe

    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    .line 71
    const v5, 0x7f0e002c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_3
    const-wide/32 v6, 0x7ffffffd

    cmp-long v5, v0, v6

    if-nez v5, :cond_4

    .line 73
    const v5, 0x7f0e003d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_4
    const-wide/32 v6, 0x7ffffffc

    cmp-long v5, v0, v6

    if-nez v5, :cond_5

    .line 75
    const v5, 0x7f0e0035

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_5
    const-wide/32 v6, 0x7ffffffa

    cmp-long v5, v0, v6

    if-nez v5, :cond_6

    .line 77
    const v5, 0x7f0e002d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAttributes:J

    return-wide v0
.end method

.method public getBabyInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mBabyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mId:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverSha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCoverSyncState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mPeopleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mBabyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mThumbnailInfoOfBaby:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAttributes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-boolean v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumUnwriteable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 248
    iget-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mTopTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-wide v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mSortBy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mBabyShareInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mLocalPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/miui/gallery/model/AlbumEntity;->mAlbumClassification:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
