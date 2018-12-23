.class public Lcom/miui/gallery/card/Card;
.super Lcom/miui/gallery/dao/base/Entity;
.source "Card.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/Card$CardExtraInfo;,
        Lcom/miui/gallery/card/Card$Action;,
        Lcom/miui/gallery/card/Card$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/dao/base/Entity;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/card/Card;",
        ">;"
    }
.end annotation


# instance fields
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

.field private mCreateTime:J

.field private mDeletable:Z

.field private mDescription:Ljava/lang/String;

.field private mDetailUrl:Ljava/lang/String;

.field private mExtras:Ljava/util/HashMap;
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

.field private mImageResId:I

.field private mImageUri:Landroid/net/Uri;

.field private mIsIgnored:Z

.field private mIsVideo:Z

.field private mLocalFlag:I

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

.field private mUpdateTime:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mDeletable:Z

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/Card$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/Card$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/card/Card;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/miui/gallery/card/Card;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    return p1
.end method

.method static synthetic access$1402(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/miui/gallery/card/Card;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/miui/gallery/card/Card;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    return p1
.end method

.method static synthetic access$1702(Lcom/miui/gallery/card/Card;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    return p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/card/Card;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card;->mDeletable:Z

    return p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/card/Card;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card;->mIsVideo:Z

    return p1
.end method

.method static synthetic access$602(Lcom/miui/gallery/card/Card;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/miui/gallery/card/Card;->decodeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/card/Card;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    return p1
.end method

.method static synthetic access$902(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    return-object p1
.end method

.method public static convertResIdToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "entry":Ljava/lang/String;
    const-string v2, "%s://%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static convertUriToResId(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private static decodeUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 755
    if-nez p0, :cond_0

    .line 756
    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getType()I
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapToString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 774
    if-nez p0, :cond_0

    .line 782
    :goto_0
    return-object v1

    .line 778
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Card"

    const-string v3, "mapToString occur error.\n"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private parseStyles(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-static {p1}, Lcom/miui/gallery/card/Card;->stringToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 519
    .local v0, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    const-string v1, "baseColor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/card/Card;->stringToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    goto :goto_0
.end method

.method private putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method private setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 514
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsVideo:Z

    .line 515
    return-void

    .line 514
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static stringToInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 803
    if-nez p0, :cond_0

    .line 811
    :goto_0
    return v1

    .line 807
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Card"

    const-string/jumbo v3, "stringToInt occur error.\n"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static stringToMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 788
    if-nez p0, :cond_0

    move-object v2, v3

    .line 798
    :goto_0
    return-object v2

    .line 792
    :cond_0
    :try_start_0
    new-instance v2, Lcom/miui/gallery/card/Card$1;

    invoke-direct {v2}, Lcom/miui/gallery/card/Card$1;-><init>()V

    .line 793
    invoke-virtual {v2}, Lcom/miui/gallery/card/Card$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 794
    .local v1, "mapType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Card"

    const-string/jumbo v4, "stringToMap occur error.\n"

    invoke-static {v2, v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v3

    .line 798
    goto :goto_0
.end method

.method private wrapStyles()Ljava/lang/String;
    .locals 3

    .prologue
    .line 527
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 528
    .local v0, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "baseColor"

    iget v2, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {v0}, Lcom/miui/gallery/card/Card;->mapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/card/Card;)I
    .locals 4
    .param p1, "o"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 546
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    iget-wide v2, p1, Lcom/miui/gallery/card/Card;->mCreateTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/miui/gallery/card/Card;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/Card;->compareTo(Lcom/miui/gallery/card/Card;)I

    move-result v0

    return v0
.end method

.method public copyFrom(Lcom/miui/gallery/card/Card;)V
    .locals 2
    .param p1, "newCard"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDetailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    .line 447
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    .line 448
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isDeletable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mDeletable:Z

    .line 449
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isVideo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsVideo:Z

    .line 450
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 451
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    .line 452
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    .line 453
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    .line 454
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/card/Card;->getImageResId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    .line 455
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getBaseColor()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    .line 457
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 458
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerTag()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    .line 460
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    .line 461
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    .line 462
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCreateBy()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    .line 463
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isIgnored()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    .line 465
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    if-ne p0, p1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v1

    .line 552
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/card/Card;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 554
    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 556
    .local v0, "card":Lcom/miui/gallery/card/Card;
    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mId:J

    iget-wide v6, v0, Lcom/miui/gallery/card/Card;->mId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public generateDuplicateKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAllMediaSha1s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBaseColor()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    return v0
.end method

.method public getCardExtraInfo()Lcom/miui/gallery/card/Card$CardExtraInfo;
    .locals 3

    .prologue
    .line 330
    new-instance v0, Lcom/miui/gallery/card/Card$CardExtraInfo;

    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    iget-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/card/Card$CardExtraInfo;-><init>(Lcom/miui/gallery/card/scenario/Record$UniqueKey;Z)V

    return-object v0
.end method

.method public getCoverMediaFeatureItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    return-object v0
.end method

.method public getCreateBy()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResId(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    .line 203
    :cond_0
    iget v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/miui/gallery/card/Card;->convertUriToResId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    .line 206
    :cond_1
    iget v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    goto :goto_0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalFlag()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    return v0
.end method

.method public getRecordStartTime()J
    .locals 2

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getStartTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getRecordTargetTime()J
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getTargetTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getScenarioId()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    return v0
.end method

.method public declared-synchronized getSelectedMediaSha1s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTag()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    return-wide v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string v1, "cardId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v1, "title"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "description"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "actionText"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "actionUrl"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "detailUrl"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "imageUri"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "createTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "deletable"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v1, "type"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v1, "styles"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "extras"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "scenarioId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "serverId"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "serverTag"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "localFlag"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v1, "updateTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "createdBy"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v1, "ignored"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getUniqueConstraints()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 469
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 561
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mId:J

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized isCoversNeedRefresh()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x0

    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 496
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 497
    .local v0, "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 498
    .local v1, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 495
    .end local v0    # "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 502
    .restart local v0    # "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    .local v2, "mediaSha1":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 504
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 507
    .end local v2    # "mediaSha1":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    .line 508
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v6, :cond_5

    iget-object v4, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-lt v4, v6, :cond_5

    :cond_4
    const/4 v3, 0x1

    .line 510
    .end local v0    # "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    monitor-exit p0

    return v3
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mDeletable:Z

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isIgnored()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    return v0
.end method

.method public isLocalDeleted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 533
    iget v1, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsVideo:Z

    return v0
.end method

.method protected onConvertToContents(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    const-string/jumbo v0, "title"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "description"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "actionText"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 413
    const-string v0, "actionUrl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 414
    const-string v0, "detailUrl"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 416
    const-string v0, "imageUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 420
    :goto_0
    const-string v0, "createTime"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v3, "deletable"

    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mDeletable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string/jumbo v0, "type"

    invoke-direct {p0}, Lcom/miui/gallery/card/Card;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string/jumbo v0, "styles"

    invoke-direct {p0}, Lcom/miui/gallery/card/Card;->wrapStyles()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v0, "unique_key"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "all_images"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v0, "selected_images"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "covers"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "extras"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/miui/gallery/card/Card;->mapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "scenarioId"

    iget v3, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const-string v0, "serverId"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "serverTag"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    const-string v0, "localFlag"

    iget v3, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    const-string/jumbo v0, "updateTime"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 436
    const-string v0, "createdBy"

    iget v3, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v0, "ignored"

    iget-boolean v3, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    return-void

    .line 418
    :cond_0
    const-string v0, "imageUri"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 421
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 437
    goto :goto_2
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 374
    const-string/jumbo v2, "title"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    .line 375
    const-string v2, "description"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    .line 376
    const-string v2, "detailUrl"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    .line 377
    const-string v2, "imageUri"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "imageUri":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 379
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    .line 381
    :cond_0
    const-string v2, "createTime"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    .line 382
    const-string v2, "deletable"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/miui/gallery/card/Card;->mDeletable:Z

    .line 383
    const-string/jumbo v2, "type"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->setType(I)V

    .line 384
    const-string/jumbo v2, "styles"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->parseStyles(Ljava/lang/String;)V

    .line 385
    const-string v2, "extras"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/card/Card;->stringToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    .line 387
    const-string/jumbo v2, "unique_key"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 389
    :try_start_0
    const-string v2, "all_images"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    .line 390
    const-string v2, "selected_images"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    .line 391
    const-string v2, "covers"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_1
    const-string v2, "scenarioId"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 397
    iget v2, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    if-gtz v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-virtual {v2}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getScenarioId()I

    move-result v2

    :goto_2
    iput v2, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 400
    :cond_1
    const-string v2, "serverId"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    .line 401
    const-string v2, "serverTag"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    .line 402
    const-string v2, "localFlag"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    .line 403
    const-string/jumbo v2, "updateTime"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    .line 404
    const-string v2, "createdBy"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    .line 405
    const-string v2, "ignored"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    :goto_3
    iput-boolean v3, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    .line 406
    return-void

    :cond_2
    move v2, v4

    .line 382
    goto/16 :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Card"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create card from cursor error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    move v2, v4

    .line 398
    goto :goto_2

    :cond_4
    move v3, v4

    .line 405
    goto :goto_3
.end method

.method public declared-synchronized removeImages(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "imageSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 566
    .local v1, "removeCount":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    .local v0, "deleteSha1":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    add-int/lit8 v1, v1, 0x1

    .line 571
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 565
    .end local v0    # "deleteSha1":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 574
    :cond_1
    if-lez v1, :cond_2

    .line 575
    :try_start_1
    const-string v2, "Card"

    const-string v3, "Delete %d images from Card %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, p0, Lcom/miui/gallery/card/Card;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :cond_2
    if-lez v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    monitor-exit p0

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized setAllMediaSha1s(Ljava/util/List;)V
    .locals 1
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
    .line 251
    .local p1, "allMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCardExtraInfo(Lcom/miui/gallery/card/Card$CardExtraInfo;)V
    .locals 1
    .param p1, "cardExtraInfo"    # Lcom/miui/gallery/card/Card$CardExtraInfo;

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p1, Lcom/miui/gallery/card/Card$CardExtraInfo;->uniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 336
    iget-boolean v0, p1, Lcom/miui/gallery/card/Card$CardExtraInfo;->isIgnored:Z

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    .line 338
    :cond_0
    return-void
.end method

.method public declared-synchronized setCoverMediaFeatureItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCreateBy(I)V
    .locals 0
    .param p1, "createBy"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    .line 323
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    .line 150
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setLocalFlag(I)V
    .locals 0
    .param p1, "localFlag"    # I

    .prologue
    .line 306
    iput p1, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    .line 307
    return-void
.end method

.method public setScenarioId(I)V
    .locals 0
    .param p1, "scenarioId"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 283
    return-void
.end method

.method public declared-synchronized setSelectedMediaSha1s(Ljava/util/List;)V
    .locals 1
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
    .line 259
    .local p1, "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setServerTag(J)V
    .locals 1
    .param p1, "serverTag"    # J

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    .line 299
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1
    .param p1, "updateTime"    # J

    .prologue
    .line 314
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    .line 315
    return-void
.end method
