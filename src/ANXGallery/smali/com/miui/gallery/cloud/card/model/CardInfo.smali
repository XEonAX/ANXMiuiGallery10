.class public Lcom/miui/gallery/cloud/card/model/CardInfo;
.super Ljava/lang/Object;
.source "CardInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mExtraInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extraInfo"
    .end annotation
.end field

.field private mIsAppCreate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appCreate"
    .end annotation
.end field

.field private mMediaInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaInfo"
    .end annotation
.end field

.field private mServerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardId"
    .end annotation
.end field

.field private mSortTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sortTime"
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private mTag:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mUpdateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field

.field private scenarioId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scenarioId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mMediaInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    return-object v0
.end method

.method public getScenarioId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->scenarioId:I

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mSortTime:J

    return-wide v0
.end method

.method public getTag()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mTag:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mUpdateTime:J

    return-wide v0
.end method

.method public isAppCreate()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mIsAppCreate:Z

    return v0
.end method

.method public isStatusDelete()Z
    .locals 2

    .prologue
    .line 99
    const-string v0, "deleted"

    iget-object v1, p0, Lcom/miui/gallery/cloud/card/model/CardInfo;->mStatus:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
