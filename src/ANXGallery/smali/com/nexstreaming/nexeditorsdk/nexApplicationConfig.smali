.class public final Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;
.super Ljava/lang/Object;
.source "nexApplicationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;,
        Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$OnEffectLoadListener;
    }
.end annotation


# static fields
.field private static AppAssetPackageVersionCode:J = 0x0L

.field private static KMSingle:Lcom/nexstreaming/kminternal/kinemaster/config/a; = null

.field private static final SDK_VERSION_DevCode:I = 0xc

.field private static final SDK_VERSION_Major:I = 0x2

.field private static final SDK_VERSION_Minor:I = 0x0

.field private static final SDK_VERSION_Patch:I = 0xd

.field private static TAG:Ljava/lang/String; = null

.field private static aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile; = null

.field private static default_letterbox_effect:Ljava/lang/String; = null

.field public static final kAspectRatio_Mode_16v9:I = 0x1

.field public static final kAspectRatio_Mode_1v1:I = 0x2

.field public static final kAspectRatio_Mode_1v2:I = 0x5

.field public static final kAspectRatio_Mode_2v1:I = 0x4

.field public static final kAspectRatio_Mode_3v4:I = 0x7

.field public static final kAspectRatio_Mode_4v3:I = 0x6

.field public static final kAspectRatio_Mode_9v16:I = 0x3

.field public static final kAspectRatio_Mode_free:I = 0x0

.field public static final kOverlayCoordinateMode_ScreenDimention:I = 0x0

.field public static final kOverlayCoordinateMode_Stretching:I = 0x1

.field public static final kScreenMode_horizonDual:I = 0x1

.field public static final kScreenMode_normal:I

.field public static letterbox_effect_black:Ljava/lang/String;

.field public static letterbox_effect_blur10:Ljava/lang/String;

.field private static pendingDevAssetLoadError:Ljava/lang/String;

.field private static pendingDevAssetNotification:Z

.field private static sAspectRatioMode:I

.field private static final sInitAssetDBThreadPool:Ljava/util/concurrent/Executor;

.field private static sOverlayCoordinateMode:I

.field private static sScreenMode:I

.field private static s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

.field private static securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 64
    const-string v0, "nexApplicationConfig"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    .line 65
    sput-boolean v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->pendingDevAssetNotification:Z

    .line 66
    sput-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->pendingDevAssetLoadError:Ljava/lang/String;

    .line 67
    sput-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    .line 68
    const-wide v0, 0x16537062fadL

    sput-wide v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->AppAssetPackageVersionCode:J

    .line 69
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar16v9:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 130
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sAspectRatioMode:I

    .line 139
    sput v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sScreenMode:I

    .line 144
    sput v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sOverlayCoordinateMode:I

    .line 152
    const-string v0, "black"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->letterbox_effect_black:Ljava/lang/String;

    .line 160
    const-string v0, "com.nexstreaming.editor.blurall range.f_block_size 10.0"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->letterbox_effect_blur10:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->letterbox_effect_black:Ljava/lang/String;

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->default_letterbox_effect:Ljava/lang/String;

    .line 441
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sInitAssetDBThreadPool:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->loadInitDB(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100()Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    return-object v0
.end method

.method public static asyncLoadAssetDB(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 469
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    .line 472
    :cond_0
    if-eqz p0, :cond_1

    .line 473
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$4;

    invoke-direct {v1, p0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 480
    :cond_1
    return-void
.end method

.method public static declared-synchronized createApp(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 180
    const-class v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v2, "call createApp"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->KMSingle:Lcom/nexstreaming/kminternal/kinemaster/config/a;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/a;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->KMSingle:Lcom/nexstreaming/kminternal/kinemaster/config/a;

    .line 184
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$1;

    invoke-direct {v2}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit v1

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getApiLevel()I
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public static getAspectMode()I
    .locals 1

    .prologue
    .line 699
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sAspectRatioMode:I

    return v0
.end method

.method public static final getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
    .locals 1

    .prologue
    .line 941
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    return-object v0
.end method

.method public static getAspectRatio()F
    .locals 1

    .prologue
    .line 719
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v0

    .line 733
    :goto_0
    return v0

    :cond_0
    const v0, 0x3fe38e39

    goto :goto_0
.end method

.method public static getAspectRatioInScreenMode()F
    .locals 5

    .prologue
    .line 749
    const/high16 v1, 0x41800000    # 16.0f

    .line 750
    const/high16 v0, 0x41100000    # 9.0f

    .line 751
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    if-eqz v2, :cond_0

    .line 752
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 753
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 770
    :cond_0
    sget v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sScreenMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 771
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 774
    :cond_1
    const-string v2, "ScreenMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    div-float v0, v1, v0

    return v0
.end method

.method public static getAspectRatioMode()I
    .locals 1

    .prologue
    .line 791
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sAspectRatioMode:I

    return v0
.end method

.method public static getDefaultLetterboxEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->default_letterbox_effect:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevelopString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    const-string v0, "Develop"

    return-object v0
.end method

.method public static getExternalModuleManager()Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;
    .locals 1

    .prologue
    .line 970
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getInstance()Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    move-result-object v0

    return-object v0
.end method

.method public static getOverlayCoordinateMode()I
    .locals 1

    .prologue
    .line 978
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sOverlayCoordinateMode:I

    return v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 646
    const-string v0, "%d.%d.%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenMode()I
    .locals 1

    .prologue
    .line 820
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sScreenMode:I

    return v0
.end method

.method public static init(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 268
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KMSDK Version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getInstance(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    .line 272
    invoke-static {p2}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a(Ljava/lang/String;)V

    .line 286
    invoke-static {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(Landroid/content/Context;)V

    .line 291
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    aget v0, v0, v6

    if-eqz v0, :cond_1

    .line 292
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    invoke-static {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->setAppContext(Landroid/content/Context;[I)V

    .line 299
    :goto_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    if-nez v0, :cond_3

    .line 300
    const/4 v0, -0x1

    .line 301
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;

    invoke-direct {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;-><init>()V

    .line 302
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    sput-object v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    .line 303
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 304
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;-><init>([I[Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 305
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;)V

    :cond_0
    move v1, v2

    .line 308
    goto :goto_1

    .line 294
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->setAppContext(Landroid/content/Context;[I)V

    goto :goto_0

    .line 309
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " security provider!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_3
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    if-nez v0, :cond_4

    .line 313
    invoke-static {p0, p3}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->loadInitDB(Landroid/content/Context;Ljava/io/File;)V

    .line 330
    :goto_2
    return-void

    .line 315
    :cond_4
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$2;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$2;-><init>()V

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sInitAssetDBThreadPool:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    aput-object p0, v2, v6

    .line 328
    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-static {p0, p1, v0, v0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->init(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static initAssetDB(Landroid/content/Context;Ljava/io/File;)V
    .locals 6

    .prologue
    .line 361
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v1, "initAssetDB start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getInstance(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    .line 363
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    if-nez v0, :cond_2

    .line 364
    const/4 v0, -0x1

    .line 365
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;

    invoke-direct {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;-><init>()V

    .line 366
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    sput-object v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    .line 367
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;-><init>([I[Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 369
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;)V

    :cond_0
    move v1, v2

    .line 372
    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " security provider!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    if-nez v0, :cond_3

    .line 377
    invoke-static {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->loadInitDB(Landroid/content/Context;Ljava/io/File;)V

    .line 394
    :goto_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v1, "initAssetDB End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 379
    :cond_3
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$3;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$3;-><init>()V

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sInitAssetDBThreadPool:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 392
    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public static initMaster(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 341
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMaster nexEditorSDK Version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a(Ljava/lang/String;)V

    .line 343
    invoke-static {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(Landroid/content/Context;)V

    .line 344
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 345
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    invoke-static {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->setAppContext(Landroid/content/Context;[I)V

    .line 349
    :goto_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v1, "initMaster End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->setAppContext(Landroid/content/Context;[I)V

    goto :goto_0
.end method

.method public static final isSupportedApi(Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;)Z
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a(I)Z

    move-result v0

    return v0
.end method

.method private static loadInitDB(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 400
    :try_start_0
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    const-string v1, "kmassets"

    sget-wide v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->AppAssetPackageVersionCode:J

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    if-eqz p1, :cond_0

    .line 408
    :try_start_1
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/io/File;)V

    .line 409
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b(Ljava/io/File;)Z

    move-result v0

    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->pendingDevAssetNotification:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    :goto_0
    invoke-static {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a(Landroid/content/Context;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    .line 423
    invoke-static {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    .line 439
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot read prepackaged assets"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 411
    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/io/File;)V

    .line 412
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b(Ljava/io/File;)Z

    move-result v0

    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->pendingDevAssetNotification:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 415
    :catch_1
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->pendingDevAssetLoadError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static releaseApp()V
    .locals 4

    .prologue
    .line 489
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v1, "call releaseApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    if-eqz v0, :cond_2

    .line 492
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 493
    if-eqz v3, :cond_0

    .line 494
    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->b(Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;)V

    .line 492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnRegister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " security provider!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->securityProvider:[Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;

    .line 502
    :cond_2
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 503
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a()V

    .line 506
    :cond_3
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->releaseNativeEngine()V

    .line 507
    return-void
.end method

.method public static releaseNativeEngine()V
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->KMSingle:Lcom/nexstreaming/kminternal/kinemaster/config/a;

    if-eqz v0, :cond_0

    .line 515
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->KMSingle:Lcom/nexstreaming/kminternal/kinemaster/config/a;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->d()V

    .line 517
    :cond_0
    return-void
.end method

.method public static final setAppAssetPackageVersionCode(J)V
    .locals 0

    .prologue
    .line 890
    sput-wide p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->AppAssetPackageVersionCode:J

    .line 891
    return-void
.end method

.method public static setAspectMode(I)V
    .locals 1

    .prologue
    .line 678
    invoke-static {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectProfile(I)Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 679
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    if-eqz v0, :cond_0

    .line 680
    sput p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sAspectRatioMode:I

    .line 681
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setAspectRatio(F)V

    .line 683
    :cond_0
    return-void
.end method

.method public static setAspectProfile(Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;)V
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectMode()I

    move-result v0

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sAspectRatioMode:I

    .line 930
    sput-object p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 931
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->aspectProfile:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setAspectRatio(F)V

    .line 932
    return-void
.end method

.method public static final setAssetInstallRootPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 918
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->setInstalledAssetPath(Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method public static final setAssetStoreRootPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 904
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->setAssetStoreRootPath(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public static setDefaultLetterboxEffect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    sput-object p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->default_letterbox_effect:Ljava/lang/String;

    .line 952
    return-void
.end method

.method public static setEffectLoadListener(Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$OnEffectLoadListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 632
    return-void
.end method

.method public static setOverlayCoordinateMode(I)V
    .locals 0

    .prologue
    .line 974
    sput p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sOverlayCoordinateMode:I

    .line 975
    return-void
.end method

.method public static setScreenMode(I)V
    .locals 3

    .prologue
    .line 805
    const-string v0, "ScreenMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    sput p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->sScreenMode:I

    .line 807
    return-void
.end method

.method public static waitForLoading(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 540
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v1, "call waitForLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v0, :cond_1

    .line 543
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->s_asyncInitDBTask:Lcom/nexstreaming/app/common/task/Task;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$5;

    invoke-direct {v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 553
    :cond_0
    :goto_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v1, "call waitForLoading end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 550
    :cond_1
    if-eqz p1, :cond_0

    .line 551
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static waitForMinimumLoading(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 576
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->TAG:Ljava/lang/String;

    const-string v1, "call waitForMinimumLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->waitForLoading(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method
