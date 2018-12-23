.class Lcom/miui/extraphoto/refocus/RefocusEffectManager;
.super Ljava/lang/Object;
.source "RefocusEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;,
        Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;,
        Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;
    }
.end annotation


# static fields
.field private static final FILE_NAME_CONFIG:Ljava/lang/String; = "config.json"

.field private static final PATH_DYNAMIC:Ljava/lang/String;

.field private static final PATH_RELIGHTING:Ljava/lang/String;

.field private static final PATH_ROOT:Ljava/lang/String; = "refocus"

.field private static final PATH_STATIC:Ljava/lang/String;

.field public static final PATH_STATIC_MASK:Ljava/lang/String;

.field public static final RELIGHTING_TYPE_NATURE:Ljava/lang/String; = "0x3"

.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private final mEffectConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mRelightingConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dynamic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_DYNAMIC:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "relighting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_RELIGHTING:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "static"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_STATIC:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_STATIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mask.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_STATIC_MASK:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->mEffectConfigs:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->mRelightingConfigs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_DYNAMIC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    .line 26
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->mEffectConfigs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    .line 26
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->mRelightingConfigs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_RELIGHTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->getConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->getRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->getRelightingConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->getRelightingRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_STATIC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    .line 26
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->mStaticConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/extraphoto/refocus/RefocusEffectManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 26
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->mStaticConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    return-object p1
.end method

.method private static getConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderName"    # Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_DYNAMIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderName"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_DYNAMIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRelightingConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderName"    # Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_RELIGHTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRelightingRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderName"    # Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->PATH_RELIGHTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method loadEffectsAsync(Landroid/content/res/AssetManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;)V
    .locals 3
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "effectLoadListener"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;

    .line 43
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;-><init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;Lcom/miui/extraphoto/refocus/RefocusEffectManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method
