.class public Lcom/miui/gallery/card/CardManager;
.super Ljava/lang/Object;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;,
        Lcom/miui/gallery/card/CardManager$CardObserver;,
        Lcom/miui/gallery/card/CardManager$CardObserverHolder;,
        Lcom/miui/gallery/card/CardManager$CardCache;
    }
.end annotation


# static fields
.field public static final CONVERT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/miui/gallery/card/CardManager;

.field private static sIsSupportImageFeatureSelection:Z

.field private static final sWhiteList:[Ljava/lang/String;


# instance fields
.field private mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

.field private final mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 62
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "dipper"

    aput-object v3, v1, v2

    const-string/jumbo v3, "ursa"

    aput-object v3, v1, v6

    const-string v3, "jason"

    aput-object v3, v1, v7

    const/4 v3, 0x3

    const-string/jumbo v4, "wayne"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "platina"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "chiron"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "sagit"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "polaris"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "perseus"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "equuleus"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "sirius"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "comet"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "lavender"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "capricorn"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "lithium"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "natrium"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "scorpio"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "gemini"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "cepheus"

    aput-object v4, v1, v3

    sput-object v1, Lcom/miui/gallery/card/CardManager;->sWhiteList:[Ljava/lang/String;

    .line 85
    sput-boolean v2, Lcom/miui/gallery/card/CardManager;->sIsSupportImageFeatureSelection:Z

    .line 86
    sget-object v3, Lcom/miui/gallery/card/CardManager;->sWhiteList:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    .local v0, "product":Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 87
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    sput-boolean v6, Lcom/miui/gallery/card/CardManager;->sIsSupportImageFeatureSelection:Z

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "serverId"

    aput-object v3, v1, v2

    const-string v2, "sha1"

    aput-object v2, v1, v6

    sput-object v1, Lcom/miui/gallery/card/CardManager;->CONVERT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;-><init>(Lcom/miui/gallery/card/CardManager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardObserverHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/card/CardManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/CardManager;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->triggerGuaranteeScenariosInternal(Z)V

    return-void
.end method

.method private declared-synchronized addInternal(Lcom/miui/gallery/card/Card;)V
    .locals 6
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 151
    monitor-enter p0

    if-nez p1, :cond_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v1

    .line 157
    .local v1, "existCard":Lcom/miui/gallery/card/Card;
    if-eqz v1, :cond_1

    .line 158
    const-string v3, "CardManager"

    const-string v4, "Card %s exist in db, do not insert again!"

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    .end local v1    # "existCard":Lcom/miui/gallery/card/Card;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 162
    .restart local v1    # "existCard":Lcom/miui/gallery/card/Card;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 163
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/dao/base/EntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v2

    .line 164
    .local v2, "result":Z
    if-eqz v2, :cond_2

    .line 165
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/card/CardManager$1;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/card/CardManager$1;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_2
    const-string v3, "CardManager"

    const-string v4, "add result %s"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private createNewCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 14
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    .line 640
    if-nez p1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/miui/gallery/card/Card$CardExtraInfo;

    invoke-static {v11, v12}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/card/Card$CardExtraInfo;

    .line 645
    .local v3, "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    const/4 v10, 0x0

    .line 646
    .local v10, "uniqueKey":Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    const/4 v4, 0x0

    .line 647
    .local v4, "isIgnored":Z
    if-eqz v3, :cond_2

    .line 648
    iget-object v10, v3, Lcom/miui/gallery/card/Card$CardExtraInfo;->uniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 649
    iget-boolean v4, v3, Lcom/miui/gallery/card/Card$CardExtraInfo;->isIgnored:Z

    .line 652
    :cond_2
    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v11

    if-nez v11, :cond_4

    .line 653
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAssistantScenarioStrategy()Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;

    move-result-object v1

    .line 654
    .local v1, "assistantScenarioStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
    if-eqz v1, :cond_4

    .line 655
    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getLocalScenarioRules()Ljava/util/List;

    move-result-object v5

    .line 656
    .local v5, "localRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;>;"
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 657
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;

    .line 658
    .local v8, "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    invoke-virtual {v8}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getScenarioId()I

    move-result v12

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 660
    const/4 v4, 0x1

    goto :goto_1

    .line 667
    .end local v1    # "assistantScenarioStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
    .end local v5    # "localRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;>;"
    .end local v8    # "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    :cond_4
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 671
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getMediaList()Ljava/util/List;

    move-result-object v7

    .line 672
    .local v7, "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getAllMediaList()Ljava/util/List;

    move-result-object v0

    .line 673
    .local v0, "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_5

    .line 674
    move-object v0, v7

    .line 676
    :cond_5
    invoke-static {v7}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 677
    .local v9, "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 680
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getCoverMediaList()Ljava/util/List;

    move-result-object v6

    .line 681
    .local v6, "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v11, Lcom/miui/gallery/card/Card$Builder;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/miui/gallery/card/Card$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 683
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    const/4 v12, 0x1

    .line 684
    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setDeletable(Z)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    const/4 v12, 0x0

    .line 685
    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setImageUri(Landroid/net/Uri;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 686
    invoke-static {}, Lcom/miui/gallery/card/CardUtil;->getAlbumUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setDetailUrl(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 687
    invoke-virtual {v11, v10}, Lcom/miui/gallery/card/Card$Builder;->setUniqueKey(Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 688
    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setAllMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 689
    invoke-virtual {v11, v9}, Lcom/miui/gallery/card/Card$Builder;->setSelectedMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 690
    invoke-static {v6}, Lcom/miui/gallery/card/CardUtil;->getCoverMediaItemsByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setCoverMediaFeatureItems(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 691
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setScenarioId(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 692
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/card/Card$Builder;->setServerId(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 693
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/miui/gallery/card/Card$Builder;->setServerTag(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v12

    .line 694
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Lcom/miui/gallery/card/Card$Builder;->setCreateBy(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 695
    invoke-virtual {v11, v4}, Lcom/miui/gallery/card/Card$Builder;->setIsIgnored(Z)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v11

    .line 696
    invoke-virtual {v11}, Lcom/miui/gallery/card/Card$Builder;->build()Lcom/miui/gallery/card/Card;

    move-result-object v2

    .line 697
    .local v2, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getSortTime()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lcom/miui/gallery/card/Card;->setCreateTime(J)V

    .line 698
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 699
    invoke-direct {p0, v2}, Lcom/miui/gallery/card/CardManager;->updateCardCoversIfNecessary(Lcom/miui/gallery/card/Card;)V

    .line 700
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 701
    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 703
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p0, v2, v11}, Lcom/miui/gallery/card/CardManager;->add(Lcom/miui/gallery/card/Card;Z)V

    goto/16 :goto_0

    .line 694
    .end local v2    # "card":Lcom/miui/gallery/card/Card;
    :cond_7
    const/4 v11, 0x1

    goto :goto_2
.end method

.method private declared-synchronized deleteInternal(Lcom/miui/gallery/card/Card;Z)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "deleteInDb"    # Z

    .prologue
    .line 203
    monitor-enter p0

    if-nez p1, :cond_0

    .line 228
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    if-eqz p2, :cond_2

    .line 208
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v0

    .line 213
    .local v0, "result":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/CardManager$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/card/CardManager$2;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_1
    const-string v1, "CardManager"

    const-string v2, "delete result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 210
    :cond_2
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 211
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_1
.end method

.method private getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;
    .locals 8
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "containIgnored"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 732
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v1, "serverId = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "selection":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND ignored = 0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    :cond_0
    const-class v1, Lcom/miui/gallery/card/Card;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 738
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/Card;

    .line 742
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method private getDuplicatedCard(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;
    .locals 14
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 620
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 622
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignored = 0 AND scenarioId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "createTime"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "localFlag"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "selection":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s,%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v1, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, "limit":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/Card;

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 628
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/Card;

    .line 630
    .local v6, "card":Lcom/miui/gallery/card/Card;
    invoke-static {v6, p1}, Lcom/miui/gallery/card/CardUtil;->isDuplicated(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :goto_0
    return-object v6

    :cond_0
    move-object v6, v3

    goto :goto_0
.end method

.method private getImageFeatureMap(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "imageSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 414
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v8, "imageFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    if-eqz p1, :cond_0

    .line 416
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const-string v2, "sha1 IN (\'%s\') "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "\',\'"

    .line 418
    invoke-static {v9, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    .line 417
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "score desc"

    move-object v5, v3

    .line 416
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 420
    .local v7, "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 422
    .local v6, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    .end local v6    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v7    # "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    :cond_0
    return-object v8
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/card/CardManager;
    .locals 2

    .prologue
    .line 114
    const-class v1, Lcom/miui/gallery/card/CardManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/card/CardManager;->sInstance:Lcom/miui/gallery/card/CardManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/miui/gallery/card/CardManager;

    invoke-direct {v0}, Lcom/miui/gallery/card/CardManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/card/CardManager;->sInstance:Lcom/miui/gallery/card/CardManager;

    .line 117
    :cond_0
    sget-object v0, Lcom/miui/gallery/card/CardManager;->sInstance:Lcom/miui/gallery/card/CardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isImageFeatureSelectionEnable()Z
    .locals 1

    .prologue
    .line 545
    sget-boolean v0, Lcom/miui/gallery/card/CardManager;->sIsSupportImageFeatureSelection:Z

    return v0
.end method

.method public static isStoryFunctionEnable()Z
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isImageFeatureSelectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeCardFromServer(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 8
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 583
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 584
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v2, v3

    .line 585
    .local v2, "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v0, v3

    .line 586
    .local v0, "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    if-nez v0, :cond_0

    .line 587
    move-object v0, v2

    .line 589
    :cond_0
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/miui/gallery/card/Card$CardExtraInfo;

    invoke-static {v3, v5}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/Card$CardExtraInfo;

    .line 591
    .local v1, "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getSortTime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/miui/gallery/card/Card;->setCreateTime(J)V

    .line 592
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 593
    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setCardExtraInfo(Lcom/miui/gallery/card/Card$CardExtraInfo;)V

    .line 595
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/card/CardManager;->mergeSha1s(Ljava/util/List;Ljava/util/List;)V

    .line 596
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/card/CardManager;->mergeSha1s(Ljava/util/List;Ljava/util/List;)V

    .line 598
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setScenarioId(I)V

    .line 599
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setServerId(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/miui/gallery/card/Card;->setServerTag(J)V

    .line 601
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setCreateBy(I)V

    .line 602
    invoke-virtual {p0, p1, v4}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    .line 604
    .end local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .end local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-void

    .line 584
    :cond_2
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getMediaList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 585
    .restart local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getAllMediaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 601
    .restart local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v1    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    :cond_4
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private mergeSha1s(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "sourceSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "mergedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    .local v0, "sha1":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    .end local v0    # "sha1":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private declared-synchronized triggerGuaranteeScenariosInternal(Z)V
    .locals 12
    .param p1, "recordTriggerTime"    # Z

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    const-string v2, "ignored = 0"

    .line 517
    .local v2, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/card/Card;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 518
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 519
    .local v7, "guaranteeCards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    const-string v0, "CardManager"

    const-string v1, "Card exists,no need trigger guarantee card!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 524
    :cond_1
    :try_start_1
    new-instance v0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;

    invoke-direct {v0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;-><init>()V

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->triggerGuaranteeScenario()V

    .line 525
    if-eqz p1, :cond_0

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setLastGuaranteeTriggerTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v6

    .line 529
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "CardManager"

    const-string/jumbo v1, "trigger scenario occur error.\n"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 516
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "guaranteeCards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateCardCoversIfNecessary(Lcom/miui/gallery/card/Card;)V
    .locals 14
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isCoversNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v6

    .line 364
    .local v6, "cardSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 366
    const-string v0, "%s IN (\'%s\')"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "sha1"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "\',\'"

    .line 368
    invoke-static {v4, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 366
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND localGroupId = (SELECT _id FROM cloud WHERE serverId=1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    const-string v0, "%s DESC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "mixedDateTime"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "IMAGE_ORDER":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 373
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 376
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/miui/gallery/card/CardManager;->getImageFeatureMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 379
    .local v10, "imageFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    if-eqz v8, :cond_3

    .line 380
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v13, "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v12, "newMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v11, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-direct {v11, v8}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;-><init>(Landroid/database/Cursor;)V

    .line 385
    .local v11, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v11}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v11}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v11, v0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V

    .line 387
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 390
    .end local v11    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 395
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v7, "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/4 v0, 0x5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 397
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 400
    :cond_1
    invoke-virtual {p1, v13}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;)V

    .line 402
    invoke-static {v7}, Lcom/miui/gallery/card/CardUtil;->isCoverMediaPathEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    invoke-static {v7}, Lcom/miui/gallery/card/CardUtil;->downloadCoverThumb(Ljava/util/List;)V

    .line 405
    :cond_2
    invoke-virtual {p1, v7}, Lcom/miui/gallery/card/Card;->setCoverMediaFeatureItems(Ljava/util/List;)V

    .line 411
    .end local v3    # "selection":Ljava/lang/String;
    .end local v5    # "IMAGE_ORDER":Ljava/lang/String;
    .end local v6    # "cardSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "i":I
    .end local v10    # "imageFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v12    # "newMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v13    # "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    return-void

    .line 408
    :cond_4
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->isCoverMediaPathEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->downloadCoverThumb(Ljava/util/List;)V

    goto :goto_2
.end method

.method private updateCardFromServerInternal(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 8
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v3, 0x0

    .line 707
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerTag()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v2, v3

    .line 711
    .local v2, "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v0, v3

    .line 712
    .local v0, "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_2
    if-nez v0, :cond_2

    .line 713
    move-object v0, v2

    .line 715
    :cond_2
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v1, v3

    .line 717
    .local v1, "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setTitle(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setDescription(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setScenarioId(I)V

    .line 720
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setServerId(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 722
    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setAllMediaSha1s(Ljava/util/List;)V

    .line 723
    invoke-static {v2}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;)V

    .line 724
    invoke-static {v1}, Lcom/miui/gallery/card/CardUtil;->getCoverMediaItemsByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setCoverMediaFeatureItems(Ljava/util/List;)V

    .line 725
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/miui/gallery/card/Card;->setServerTag(J)V

    .line 726
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    goto :goto_0

    .line 710
    .end local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getMediaList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 711
    .restart local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getAllMediaList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 715
    .restart local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getCoverMediaList()Ljava/util/List;

    move-result-object v1

    goto :goto_3
.end method

.method private declared-synchronized updateInternal(Lcom/miui/gallery/card/Card;)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 288
    monitor-enter p0

    if-nez p1, :cond_0

    .line 313
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v0

    .line 292
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 293
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/CardManager$4;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/card/CardManager$4;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_1
    const-string v1, "CardManager"

    const-string/jumbo v2, "update result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/miui/gallery/card/Card;Z)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "byLocal"    # Z

    .prologue
    .line 130
    monitor-enter p0

    if-nez p1, :cond_0

    .line 148
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    if-eqz p2, :cond_2

    .line 134
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 135
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, "now":J
    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setCreateTime(J)V

    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 145
    .end local v0    # "now":J
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->addInternal(Lcom/miui/gallery/card/Card;)V

    .line 146
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setHasCardEver()V

    .line 147
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isIgnored()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 142
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized delete(Lcom/miui/gallery/card/Card;Z)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "byLocal"    # Z

    .prologue
    .line 183
    monitor-enter p0

    if-nez p1, :cond_0

    .line 200
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    :try_start_0
    const-string v0, "CardManager"

    const-string v1, "delete card %s"

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/card/CardManager;->deleteInternal(Lcom/miui/gallery/card/Card;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 194
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->updateInternal(Lcom/miui/gallery/card/Card;)V

    .line 195
    new-instance v0, Lcom/miui/gallery/cloud/card/SyncCardToServer;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/card/SyncCardToServer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncDeleteCard(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 198
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/card/CardManager;->deleteInternal(Lcom/miui/gallery/card/Card;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCardByCardId(J)Lcom/miui/gallery/card/Card;
    .locals 1
    .param p1, "cardId"    # J

    .prologue
    .line 333
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/card/CardManager$CardCache;->getCard(J)Lcom/miui/gallery/card/Card;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCardInfoFromCard(Lcom/miui/gallery/card/Card;)Lcom/miui/gallery/card/CardSyncInfo;
    .locals 6
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 761
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/card/CardManager;->getServerIdSha1PairBySha1s(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 762
    .local v2, "selectedServerIdSha1Pairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/card/CardManager;->getServerIdSha1PairBySha1s(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 764
    .local v0, "allServerIdSha1Pairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v1

    .line 766
    .local v1, "covers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/card/CardSyncInfo;->newBuilder()Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 767
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setName(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 768
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setScenarioId(I)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    const-string v4, "normal"

    .line 769
    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setStatus(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 770
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->generateDuplicateKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setDuplicateKey(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 771
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 772
    invoke-static {v2}, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->getServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 773
    invoke-static {v0}, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->getServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setAllMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 774
    invoke-static {v2, v1}, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->getServerIdsOfCover(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setCoverMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 775
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCardExtraInfo()Lcom/miui/gallery/card/Card$CardExtraInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setExtraInfo(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 776
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setSortTime(J)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 777
    invoke-virtual {v3}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->build()Lcom/miui/gallery/card/CardSyncInfo;

    move-result-object v3

    return-object v3
.end method

.method public getLoadedCard()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    return-object v0
.end method

.method public getServerIdSha1PairBySha1s(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cardSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 812
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "remove_duplicate_items"

    .line 815
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 813
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 817
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "%s IN (\'%s\')"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "sha1"

    aput-object v4, v2, v7

    const-string v4, "\',\'"

    .line 819
    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 817
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "%s DESC"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v4, "alias_create_time"

    aput-object v4, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, "IMAGE_ORDER":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/card/CardManager;->CONVERT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Lcom/miui/gallery/card/CardManager$7;

    invoke-direct {v6, p0}, Lcom/miui/gallery/card/CardManager$7;-><init>(Lcom/miui/gallery/card/CardManager;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getUnsynchronizedCards(I)Ljava/util/List;
    .locals 10
    .param p1, "queryLimitOnce"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 747
    if-gtz p1, :cond_0

    .line 748
    const/16 p1, 0xa

    .line 750
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s,%s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 752
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignored = 0 AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%s = %s OR %s = %s OR %s = %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "localFlag"

    aput-object v6, v4, v7

    .line 753
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    const-string v6, "localFlag"

    aput-object v6, v4, v9

    const/4 v6, 0x3

    .line 754
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "localFlag"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    .line 755
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 752
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "selection":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/Card;

    const/4 v3, 0x0

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized loadMoreCard()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    monitor-enter p0

    const/4 v7, 0x0

    .line 338
    .local v7, "start":I
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v1}, Lcom/miui/gallery/card/CardManager$CardCache;->size()I

    move-result v7

    .line 341
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x1

    const/16 v8, 0x14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 343
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v1, Lcom/miui/gallery/card/Card;

    const-string v2, "ignored = 0 AND localFlag NOT IN (1,-2,-1,4)"

    const/4 v3, 0x0

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 344
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-nez v1, :cond_1

    .line 345
    new-instance v1, Lcom/miui/gallery/card/CardManager$CardCache;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/card/CardManager$CardCache;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/CardManager$1;)V

    iput-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    .line 347
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v1, v6}, Lcom/miui/gallery/card/CardManager$CardCache;->addCards(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_2
    monitor-exit p0

    return-object v6

    .line 337
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAccountDelete()V
    .locals 6

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    const-string v3, "CardManager"

    const-string v4, "onAccountDelete"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v3}, Lcom/miui/gallery/card/CardManager$CardCache;->clear()V

    .line 437
    :cond_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/card/Card;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 438
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/card/scenario/Record;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 439
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 440
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/card/SyncTag;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 442
    iget-object v3, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->onCardDeleted(ILcom/miui/gallery/card/Card;)V

    .line 445
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v2, "taskTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 449
    .local v1, "taskType":Ljava/lang/Integer;
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->cancelAll(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    .end local v1    # "taskType":Ljava/lang/Integer;
    .end local v2    # "taskTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CardManager"

    const-string v4, "onAccountDelete occur error.\n"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onDeleteImages(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "imageSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 849
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 851
    .local v8, "oldCardTime":J
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v1, :cond_1

    .line 852
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v1}, Lcom/miui/gallery/card/CardManager$CardCache;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/Card;

    .line 853
    .local v6, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v6, p1}, Lcom/miui/gallery/card/Card;->removeImages(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 854
    invoke-virtual {p0, v6, v10}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    .line 856
    :cond_0
    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v8

    .line 857
    goto :goto_0

    .line 860
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 861
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignored = 0 AND localFlag NOT IN (1,-2,-1,4) AND createTime<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, "selection":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/Card;

    const-string v4, "createTime desc"

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 863
    .local v7, "cardsInDb":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 864
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/Card;

    .line 865
    .restart local v6    # "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v6, p1}, Lcom/miui/gallery/card/Card;->removeImages(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 866
    invoke-virtual {p0, v6, v10}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    goto :goto_1

    .line 871
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    .end local v7    # "cardsInDb":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    .end local v8    # "oldCardTime":J
    :cond_3
    return-void
.end method

.method public registerObserver(Lcom/miui/gallery/card/CardManager$CardObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/card/CardManager$CardObserver;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public declared-synchronized triggerGuaranteeScenarios(Z)V
    .locals 6
    .param p1, "recordTriggerTime"    # Z

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    const-string v2, "CardManager"

    const-string v3, "Try trigger Guarantee Scenario"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isStoryFunctionEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    const-string v2, "CardManager"

    const-string v3, "Card funtion disable"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :goto_0
    monitor-exit p0

    return-void

    .line 497
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->getLastGuaranteeTriggerTime()J

    move-result-wide v0

    .line 500
    .local v0, "lastTriggerTime":J
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 501
    const-string v2, "CardManager"

    const-string/jumbo v3, "triggerScenarios too often"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    .end local v0    # "lastTriggerTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 505
    .restart local v0    # "lastTriggerTime":J
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/card/CardManager$5;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/card/CardManager$5;-><init>(Lcom/miui/gallery/card/CardManager;Z)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized triggerScenarios()V
    .locals 10

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isStoryFunctionEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const-string v1, "CardManager"

    const-string v6, "Card funtion disable"

    invoke-static {v1, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->getLastTriggerTime()J

    move-result-wide v4

    .line 466
    .local v4, "lastRequestTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 469
    .local v2, "jobExecInterval":J
    const-wide/32 v6, 0x1b7740

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    .line 470
    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    .line 471
    :cond_1
    const-string v1, "CardManager"

    const-string/jumbo v6, "triggerScenarios too often"

    invoke-static {v1, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 460
    .end local v2    # "jobExecInterval":J
    .end local v4    # "lastRequestTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 476
    .restart local v2    # "jobExecInterval":J
    .restart local v4    # "lastRequestTime":J
    :cond_2
    :try_start_2
    new-instance v1, Lcom/miui/gallery/card/scenario/ScenarioTrigger;

    invoke-direct {v1}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;-><init>()V

    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->trigger()V

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setLastTriggerTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "CardManager"

    const-string/jumbo v6, "trigger scenario occur error.\n"

    invoke-static {v1, v6, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unregisterObserver(Lcom/miui/gallery/card/CardManager$CardObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/card/CardManager$CardObserver;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public declared-synchronized update(Lcom/miui/gallery/card/Card;Z)V
    .locals 6
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "byLocal"    # Z

    .prologue
    .line 248
    monitor-enter p0

    if-nez p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_1
    :try_start_0
    const-string v1, "CardManager"

    const-string v2, "Update card id: %s,By local: %b"

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 258
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 259
    const-string v1, "CardManager"

    const-string v2, "Update a card with no card Id!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    if-eqz p2, :cond_5

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 266
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 279
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->updateCardCoversIfNecessary(Lcom/miui/gallery/card/Card;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->updateInternal(Lcom/miui/gallery/card/Card;)V

    .line 282
    if-eqz p2, :cond_0

    .line 283
    new-instance v1, Lcom/miui/gallery/cloud/card/SyncCardToServer;

    invoke-direct {v1}, Lcom/miui/gallery/cloud/card/SyncCardToServer;-><init>()V

    invoke-virtual {v1, p1}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncModifyCard(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 273
    .local v0, "existCard":Lcom/miui/gallery/card/Card;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 274
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/card/CardManager;->deleteInternal(Lcom/miui/gallery/card/Card;Z)V

    goto :goto_0

    .line 277
    :cond_6
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateCard(Lcom/miui/gallery/card/Card;)V
    .locals 2
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/card/CardManager$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/card/CardManager$3;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 241
    :cond_0
    return-void
.end method

.method public updateCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 5
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v4, 0x0

    .line 550
    if-nez p1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v1

    .line 555
    .local v1, "existCard":Lcom/miui/gallery/card/Card;
    if-nez v1, :cond_4

    .line 556
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->getDuplicatedCard(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 557
    .local v0, "dupCard":Lcom/miui/gallery/card/Card;
    if-eqz v0, :cond_3

    .line 558
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 559
    invoke-virtual {p0, v0, v4}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V

    goto :goto_0

    .line 561
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/card/CardManager;->mergeCardFromServer(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V

    goto :goto_0

    .line 564
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->createNewCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)V

    goto :goto_0

    .line 567
    .end local v0    # "dupCard":Lcom/miui/gallery/card/Card;
    :cond_4
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 569
    invoke-virtual {p0, v1, v4}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V

    goto :goto_0

    .line 570
    :cond_5
    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->isLocalDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/card/CardManager;->updateCardFromServerInternal(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V

    goto :goto_0
.end method
