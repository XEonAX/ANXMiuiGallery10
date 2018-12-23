.class public Lcom/miui/gallery/card/Card$Builder;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Lcom/miui/gallery/card/Card$Action;

.field private mAllMediaSha1s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseColor:I

.field private final mContext:Landroid/content/Context;

.field private mCoverMediaFeatureItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateBy:I

.field private mDeletable:Z

.field private mDescription:Ljava/lang/String;

.field private mDetailUrl:Ljava/lang/String;

.field private mImageResId:I

.field private mImageUri:Landroid/net/Uri;

.field private mIsIgnored:Z

.field private mIsVideo:Z

.field private mScenarioId:I

.field private mSelectedMediaSha1s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServerId:Ljava/lang/String;

.field private mServerTag:J

.field private mTitle:Ljava/lang/String;

.field private mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card$Builder;->mDeletable:Z

    .line 599
    iput-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsVideo:Z

    .line 604
    iput-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsIgnored:Z

    .line 612
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mContext:Landroid/content/Context;

    .line 613
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/gallery/card/Card;
    .locals 4

    .prologue
    .line 720
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    const-string v1, "Card"

    const-string/jumbo v2, "the title must not be empty."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mAction:Lcom/miui/gallery/card/Card$Action;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mAction:Lcom/miui/gallery/card/Card$Action;

    invoke-virtual {v1}, Lcom/miui/gallery/card/Card$Action;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    const-string v1, "Card"

    const-string/jumbo v2, "the text of action must not be empty."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_1
    new-instance v0, Lcom/miui/gallery/card/Card;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/Card;-><init>(Lcom/miui/gallery/card/Card$1;)V

    .line 729
    .local v0, "card":Lcom/miui/gallery/card/Card;
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$102(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 730
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$202(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 731
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mDetailUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$302(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 732
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mDeletable:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$402(Lcom/miui/gallery/card/Card;Z)Z

    .line 733
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsVideo:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$502(Lcom/miui/gallery/card/Card;Z)Z

    .line 734
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mImageUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/miui/gallery/card/Card;->access$700(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$602(Lcom/miui/gallery/card/Card;Landroid/net/Uri;)Landroid/net/Uri;

    .line 735
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mBaseColor:I

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$802(Lcom/miui/gallery/card/Card;I)I

    .line 736
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$902(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 737
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mAllMediaSha1s:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1002(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;

    .line 738
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1102(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;

    .line 739
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1202(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;

    .line 740
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mScenarioId:I

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1302(Lcom/miui/gallery/card/Card;I)I

    .line 741
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mServerId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1402(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 742
    iget-wide v2, p0, Lcom/miui/gallery/card/Card$Builder;->mServerTag:J

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/card/Card;->access$1502(Lcom/miui/gallery/card/Card;J)J

    .line 743
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mCreateBy:I

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1602(Lcom/miui/gallery/card/Card;I)I

    .line 744
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsIgnored:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1702(Lcom/miui/gallery/card/Card;Z)Z

    .line 745
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mImageResId:I

    if-lez v1, :cond_2

    .line 746
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/card/Card$Builder;->mImageResId:I

    invoke-static {v1, v2}, Lcom/miui/gallery/card/Card;->convertResIdToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$602(Lcom/miui/gallery/card/Card;Landroid/net/Uri;)Landroid/net/Uri;

    .line 748
    :cond_2
    return-object v0
.end method

.method public setAllMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/card/Card$Builder;"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "allMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mAllMediaSha1s:Ljava/util/List;

    .line 680
    return-object p0
.end method

.method public setCoverMediaFeatureItems(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Lcom/miui/gallery/card/Card$Builder;"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mCoverMediaFeatureItems:Ljava/util/List;

    .line 691
    return-object p0
.end method

.method public setCreateBy(I)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "createBy"    # I

    .prologue
    .line 710
    iput p1, p0, Lcom/miui/gallery/card/Card$Builder;->mCreateBy:I

    .line 711
    return-object p0
.end method

.method public setDeletable(Z)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card$Builder;->mDeletable:Z

    .line 665
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mDescription:Ljava/lang/String;

    .line 624
    return-object p0
.end method

.method public setDetailUrl(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mDetailUrl:Ljava/lang/String;

    .line 636
    return-object p0
.end method

.method public setImageUri(Landroid/net/Uri;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mImageUri:Landroid/net/Uri;

    .line 642
    return-object p0
.end method

.method public setIsIgnored(Z)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "isIgnored"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsIgnored:Z

    .line 716
    return-object p0
.end method

.method public setScenarioId(I)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "scenarioId"    # I

    .prologue
    .line 695
    iput p1, p0, Lcom/miui/gallery/card/Card$Builder;->mScenarioId:I

    .line 696
    return-object p0
.end method

.method public setSelectedMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/card/Card$Builder;"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mSelectedMediaSha1s:Ljava/util/List;

    .line 686
    return-object p0
.end method

.method public setServerId(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mServerId:Ljava/lang/String;

    .line 701
    return-object p0
.end method

.method public setServerTag(J)Lcom/miui/gallery/card/Card$Builder;
    .locals 1
    .param p1, "serverTag"    # J

    .prologue
    .line 705
    iput-wide p1, p0, Lcom/miui/gallery/card/Card$Builder;->mServerTag:J

    .line 706
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mTitle:Ljava/lang/String;

    .line 618
    return-object p0
.end method

.method public setUniqueKey(Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "uniqueKey"    # Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 675
    return-object p0
.end method
