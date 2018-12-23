.class public Lcom/miui/gallery/cloud/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudUtils$Insertable;,
        Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;,
        Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;,
        Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;
    }
.end annotation


# static fields
.field public static final HTTPHOST_GALLERY_V1:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTPHOST_GALLERY_V1_1:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTPHOST_GALLERY_V2:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTPHOST_GALLERY_V2_1:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTPHOST_GALLERY_V2_2:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTPHOST_GALLERY_V3:Ljava/lang/String;

.field private static final SELECTION_CAN_SYNC:Ljava/lang/String;

.field private static final SELECTION_EDITED:Ljava/lang/String;

.field private static final SELECTION_GROUP_AUTO_UPLOAD:Ljava/lang/String;

.field public static final SELECTION_NOT_SYNCED_OR_EDITED:Ljava/lang/String;

.field public static final SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

.field public static final itemIsGroup:Ljava/lang/String;

.field public static final itemIsNotGroup:Ljava/lang/String;

.field private static final photoLocalFlag_Create_ForceCreate_Move_Copy_Rename:Ljava/lang/String;

.field public static final photoLocalFlag_Synced:Ljava/lang/String;

.field private static sFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 363
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s NOT NULL AND %s!=\'\') AND (%s IS NULL OR %s!=%d) AND (%s IS NULL OR %s=\'\' OR %s=\'%s\')"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "editedColumns"

    aput-object v3, v2, v6

    const-string v3, "editedColumns"

    aput-object v3, v2, v8

    const-string v3, "localFlag"

    aput-object v3, v2, v7

    const-string v3, "localFlag"

    aput-object v3, v2, v9

    .line 367
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "serverStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "serverStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "serverStatus"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "custom"

    aput-object v4, v2, v3

    .line 363
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_EDITED:Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localFlag != 0 OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_EDITED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_NOT_SYNCED_OR_EDITED:Ljava/lang/String;

    .line 373
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d)"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "serverType"

    aput-object v3, v2, v6

    .line 374
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 373
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->itemIsGroup:Ljava/lang/String;

    .line 376
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d OR %s = %d)"

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "serverType"

    aput-object v3, v2, v6

    .line 377
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "serverType"

    aput-object v3, v2, v7

    .line 378
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 376
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->itemIsNotGroup:Ljava/lang/String;

    .line 380
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s AND (%s & %d != 0))"

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils;->itemIsGroup:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "attributes"

    aput-object v3, v2, v8

    const-wide/16 v4, 0x1

    .line 381
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    .line 380
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_GROUP_AUTO_UPLOAD:Ljava/lang/String;

    .line 383
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(((%s = %d OR %s = %d OR %s = %d) AND %s = \'%s\') OR (%s) OR (%s AND (%s IN (%d, %d) OR (%s IN (SELECT %s FROM %s WHERE %s)))))"

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "localFlag"

    aput-object v3, v2, v6

    .line 387
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "localFlag"

    aput-object v3, v2, v7

    .line 388
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "localFlag"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const/16 v4, 0xa

    .line 389
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "serverStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "custom"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_GROUP_AUTO_UPLOAD:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->itemIsNotGroup:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "localGroupId"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-wide/16 v4, 0x3e8

    .line 393
    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudTableUtils;->getCloudIdForGroupWithoutRecord(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-wide/16 v4, 0x3e9

    .line 394
    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudTableUtils;->getCloudIdForGroupWithoutRecord(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "localGroupId"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "cloud"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_GROUP_AUTO_UPLOAD:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 383
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_CAN_SYNC:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_NOT_SYNCED_OR_EDITED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_CAN_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getGalleryBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/v1/gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->HTTPHOST_GALLERY_V1:Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getGalleryBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/v1.1/gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->HTTPHOST_GALLERY_V1_1:Ljava/lang/String;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getGalleryBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/gallery/v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->HTTPHOST_GALLERY_V2:Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getGalleryBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/gallery/v2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->HTTPHOST_GALLERY_V2_1:Ljava/lang/String;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getGalleryBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/gallery/v2.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->HTTPHOST_GALLERY_V2_2:Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getGalleryBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/gallery/v3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->HTTPHOST_GALLERY_V3:Ljava/lang/String;

    .line 454
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->sLock:Ljava/lang/Object;

    .line 1814
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d AND %s = \"%s\")"

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "localFlag"

    aput-object v3, v2, v6

    .line 1815
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "serverStatus"

    aput-object v3, v2, v7

    const-string v3, "custom"

    aput-object v3, v2, v9

    .line 1814
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Synced:Ljava/lang/String;

    .line 1818
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d OR %s = %d OR %s = %d OR %s = %d OR %s = %d OR %s = %d )"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "localFlag"

    aput-object v3, v2, v6

    const/16 v3, 0x8

    .line 1821
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "localFlag"

    aput-object v3, v2, v7

    const/4 v3, 0x7

    .line 1822
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "localFlag"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const/4 v4, 0x5

    .line 1823
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "localFlag"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x6

    .line 1824
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "localFlag"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    .line 1825
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "localFlag"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa

    .line 1826
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1818
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Create_ForceCreate_Move_Copy_Rename:Ljava/lang/String;

    return-void
.end method

.method public static addRecordsForCameraAndScreenshots(Lcom/miui/gallery/cloud/CloudUtils$Insertable;)V
    .locals 4
    .param p0, "insertable"    # Lcom/miui/gallery/cloud/CloudUtils$Insertable;

    .prologue
    const/4 v3, 0x0

    .line 3380
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v1, "cloud"

    .line 3381
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraRecordValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 3380
    invoke-interface {p0, v0, v1, v3, v2}, Lcom/miui/gallery/cloud/CloudUtils$Insertable;->insert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3382
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v1, "cloud"

    .line 3383
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsRecordValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 3382
    invoke-interface {p0, v0, v1, v3, v2}, Lcom/miui/gallery/cloud/CloudUtils$Insertable;->insert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3384
    return-void
.end method

.method private static addRetryParameters(Ljava/util/List;IZLcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 3
    .param p1, "retryTimes"    # I
    .param p2, "needReRequest"    # Z
    .param p3, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;IZ",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1578
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-lez p1, :cond_0

    .line 1579
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "retry"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 1584
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 1585
    .restart local v0    # "value":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "needReRequest"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static buildBigThumbnailForImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/ThumbnailMetaWriter;)Ljava/lang/String;
    .locals 5
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "thumbnailDir"    # Ljava/lang/String;
    .param p3, "thumbnailFileName"    # Ljava/lang/String;
    .param p4, "writer"    # Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    .prologue
    const/4 v2, 0x0

    .line 1427
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1428
    const-string v3, "CloudUtils"

    const-string v4, "failed to convert, sourceFile=%s"

    invoke-static {v3, v4, p0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1463
    :cond_0
    :goto_0
    return-object v2

    .line 1431
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1432
    :cond_2
    const-string v3, "CloudUtils"

    const-string v4, "failed to convert, sourceFile=%s, thumbnailDir=%s, thumbnailFileName=%s"

    invoke-static {v3, v4, p0, p2, p3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1437
    :cond_3
    new-instance v0, Lcom/miui/gallery/cloud/CloudUtils$4;

    invoke-direct {v0, p2, p0, p3}, Lcom/miui/gallery/cloud/CloudUtils$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    .local v0, "thumbnailFactory":Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;
    const/4 v1, 0x0

    .line 1459
    .local v1, "thumbnailFile":Ljava/io/File;
    invoke-static {p0, v0, p4}, Lcom/miui/gallery/cloud/CloudUtils;->buildThumbnail(Ljava/lang/String;Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;Lcom/miui/gallery/cloud/ThumbnailMetaWriter;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildThumbnail(Ljava/lang/String;Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;Lcom/miui/gallery/cloud/ThumbnailMetaWriter;)Ljava/io/File;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;
    .param p2, "writer"    # Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    .prologue
    .line 1264
    invoke-interface {p1}, Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1293
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1270
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-interface {p1}, Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;->create()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1271
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 1273
    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/miui/gallery/cloud/CloudUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1274
    .local v3, "savedFile":Ljava/io/File;
    if-eqz v3, :cond_4

    .line 1275
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->write(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1276
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v4

    .line 1277
    invoke-interface {p1}, Lcom/miui/gallery/cloud/CloudUtils$ThumbnailFactory;->getDirectory()Ljava/lang/String;

    move-result-object v5

    .line 1276
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 1286
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1288
    const/4 v0, 0x0

    :cond_2
    move-object v1, v3

    goto :goto_0

    .line 1282
    :cond_3
    :try_start_1
    sget-object v4, Lcom/miui/gallery/util/MediaFileUtils$FileType;->THUMBNAIL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1288
    const/4 v0, 0x0

    .line 1293
    .end local v3    # "savedFile":Ljava/io/File;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1286
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1288
    const/4 v0, 0x0

    :cond_6
    throw v4
.end method

.method public static canUpload(Ljava/io/File;)I
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x4

    .line 2421
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2422
    :cond_0
    const/4 v3, 0x6

    .line 2444
    :cond_1
    :goto_0
    return v3

    .line 2425
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getServerType(Ljava/io/File;)I

    move-result v2

    .line 2426
    .local v2, "type":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    if-eqz v2, :cond_5

    .line 2432
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFilterMinSize()J

    move-result-wide v0

    .line 2434
    .local v0, "minFileSize":J
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 2435
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getFileSizeLimitStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->getImageMaxSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 2439
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 2440
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getFileSizeLimitStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->getVideoMaxSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 2444
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 2429
    .end local v0    # "minFileSize":J
    :cond_5
    const/4 v3, 0x5

    goto :goto_0
.end method

.method public static canUpload(Ljava/lang/String;)I
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2448
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2449
    const/4 v0, 0x6

    .line 2451
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public static checkAccount(Landroid/app/Activity;ZLjava/lang/Runnable;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isBlock"    # Z
    .param p2, "runOnPostExecute"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x2

    .line 2752
    const/4 v3, 0x0

    .line 2753
    .local v3, "ret":Z
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 2754
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 2755
    .local v1, "accountFromSystem":Landroid/accounts/Account;
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getAccountFromDB(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 2758
    .local v0, "accountFromDB":Landroid/accounts/Account;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2759
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2760
    :cond_0
    const-string v4, "CloudUtils"

    const-string v5, "account from DB not equals account from system, delete DB account"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    if-eqz p1, :cond_2

    .line 2763
    invoke-static {v6}, Lcom/miui/gallery/cloud/DeleteAccount;->executeDeleteAccount(I)Z

    move-result v3

    .line 2772
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2773
    if-eqz p1, :cond_4

    .line 2774
    new-instance v4, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;

    invoke-direct {v4, p2}, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->run()V

    .line 2780
    :cond_1
    :goto_1
    return v3

    .line 2765
    :cond_2
    const/4 v4, 0x0

    invoke-static {p0, v0, v6, v4}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountInTask(Landroid/app/Activity;Landroid/accounts/Account;ILcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;)V

    goto :goto_0

    .line 2769
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 2776
    :cond_4
    new-instance v4, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;

    invoke-direct {v4, p2}, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;-><init>(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public static collectAlbumDescription(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;
    .locals 14
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 925
    const/4 v3, 0x0

    .line 926
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "description":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_0

    .line 929
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 935
    .end local v3    # "json":Lorg/json/JSONObject;
    .local v4, "json":Lorg/json/JSONObject;
    :goto_0
    if-nez v4, :cond_5

    .line 936
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 939
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    .line 940
    .local v5, "localFile":Ljava/lang/String;
    const-string v9, "localFile"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 942
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAttributes()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    .line 943
    .local v0, "autoUpload":Z
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAttributes()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_2

    const/4 v7, 0x1

    .line 944
    .local v7, "manualUpload":Z
    :goto_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAttributes()J

    move-result-wide v10

    const-wide/16 v12, 0x40

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_3

    const/4 v8, 0x1

    .line 945
    .local v8, "showInOtherAlbums":Z
    :goto_4
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAttributes()J

    move-result-wide v10

    const-wide/16 v12, 0x80

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    const/4 v6, 0x1

    .line 946
    .local v6, "manualShowInOtherAlbums":Z
    :goto_5
    const-string v9, "autoUpload"

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 947
    const-string v9, "manualSetUpload"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 948
    const-string/jumbo v9, "showInOtherAlbums"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 949
    const-string v9, "manualShowInOtherAlbums"

    invoke-virtual {v3, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 951
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 957
    .end local v0    # "autoUpload":Z
    .end local v1    # "description":Ljava/lang/String;
    .end local v5    # "localFile":Ljava/lang/String;
    .end local v6    # "manualShowInOtherAlbums":Z
    .end local v7    # "manualUpload":Z
    .end local v8    # "showInOtherAlbums":Z
    :goto_6
    return-object v9

    .line 930
    .restart local v1    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 931
    .local v2, "e":Lorg/json/JSONException;
    const-string v9, "CloudUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to parse: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    move-object v4, v3

    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 942
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v5    # "localFile":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 943
    .restart local v0    # "autoUpload":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 944
    .restart local v7    # "manualUpload":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 945
    .restart local v8    # "showInOtherAlbums":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 953
    .end local v0    # "autoUpload":Z
    .end local v1    # "description":Ljava/lang/String;
    .end local v5    # "localFile":Ljava/lang/String;
    .end local v7    # "manualUpload":Z
    .end local v8    # "showInOtherAlbums":Z
    :catch_1
    move-exception v2

    .line 954
    .restart local v2    # "e":Lorg/json/JSONException;
    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 957
    const/4 v9, 0x0

    goto :goto_6

    .line 953
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    goto :goto_7

    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_5
    move-object v3, v4

    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    goto/16 :goto_1
.end method

.method public static collectMediaDescription(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;
    .locals 8
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 897
    const/4 v2, 0x0

    .line 898
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "description":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 901
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 907
    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    :goto_0
    if-nez v3, :cond_1

    .line 908
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 911
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :goto_1
    :try_start_3
    const-string v4, "isFavorite"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isFavorite()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 912
    const-string/jumbo v4, "specialTypeFlags"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSpecialTypeFlags()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 914
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 920
    .end local v0    # "description":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 902
    .restart local v0    # "description":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "CloudUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to parse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    move-object v3, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 916
    .end local v0    # "description":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 917
    .restart local v1    # "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 920
    const/4 v4, 0x0

    goto :goto_2

    .line 916
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v0    # "description":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    goto :goto_3

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    move-object v2, v3

    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public static copyImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "sourceFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "hideFolder"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1142
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "destFolderPath":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1180
    .end local p0    # "sourceFilePath":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1147
    .restart local p0    # "sourceFilePath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1148
    .local v6, "startTime":J
    const/4 v3, 0x0

    .line 1149
    .local v3, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1151
    .local v2, "hasException":Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/miui/gallery/cloud/CloudUtils$1;

    invoke-direct {v9, p1, v6, v7}, Lcom/miui/gallery/cloud/CloudUtils$1;-><init>(Ljava/lang/String;J)V

    invoke-static {v4, v8, v9}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/io/InputStream;Ljava/io/File;Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1168
    if-eqz v4, :cond_1

    .line 1170
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1176
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 1177
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    move-result v5

    .line 1178
    .local v5, "ret":Z
    const-string v8, "moveimage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "change mtime ret:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "ret":Z
    :goto_2
    move-object p0, p1

    .line 1180
    goto :goto_0

    .line 1171
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "CloudUtils"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1180
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    sget-object v8, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v9, v10, [Ljava/lang/String;

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto :goto_2

    .line 1163
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 1164
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v8, "CloudUtils"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1165
    const/4 v2, 0x1

    .line 1168
    if-eqz v3, :cond_3

    .line 1170
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1176
    :cond_3
    :goto_4
    if-nez v2, :cond_4

    .line 1177
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    move-result v5

    .line 1178
    .restart local v5    # "ret":Z
    const-string v8, "moveimage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "change mtime ret:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1171
    .end local v5    # "ret":Z
    :catch_2
    move-exception v1

    .line 1172
    const-string v8, "CloudUtils"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1180
    :cond_4
    sget-object v8, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v9, v10, [Ljava/lang/String;

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1168
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_5

    .line 1170
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1176
    :cond_5
    :goto_6
    if-nez v2, :cond_6

    .line 1177
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    move-result v5

    .line 1178
    .restart local v5    # "ret":Z
    const-string v9, "moveimage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "change mtime ret:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .end local v5    # "ret":Z
    :goto_7
    throw v8

    .line 1171
    :catch_3
    move-exception v1

    .line 1172
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "CloudUtils"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1180
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    sget-object v9, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v10, v10, [Ljava/lang/String;

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto :goto_7

    .line 1168
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 1163
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method public static createDBImageByUri(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1782
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    .line 1791
    :goto_0
    return-object v0

    .line 1784
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    new-instance v0, Lcom/miui/gallery/data/DBShareImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBShareImage;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1786
    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1787
    new-instance v0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1788
    :cond_2
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1789
    new-instance v0, Lcom/miui/gallery/data/DBShareSubUbiImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBShareSubUbiImage;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1791
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteDirty(Lcom/miui/gallery/data/DBImage;)V
    .locals 3
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1187
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1186
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1188
    invoke-static {p0}, Lcom/miui/gallery/util/UbiFocusUtils;->safeDeleteSubUbi(Lcom/miui/gallery/data/DBImage;)V

    .line 1189
    return-void
.end method

.method public static deleteItemInHiddenAlbum(J)Z
    .locals 14
    .param p0, "localId"    # J

    .prologue
    const-wide/16 v12, 0x3e9

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3343
    const-wide/16 v0, 0x3e9

    .line 3344
    .local v0, "hiddenGroupServerId":J
    invoke-static {v12, v13}, Lcom/miui/gallery/cloud/CloudTableUtils;->getCloudIdForGroupWithoutRecord(J)J

    move-result-wide v4

    .line 3345
    .local v4, "serverId":J
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%s=? AND %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "_id"

    aput-object v11, v10, v6

    .line 3348
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 3349
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 3348
    invoke-static {v11, v12, v6}, Lcom/miui/gallery/cloud/CloudTableUtils;->sGetWhereClauseAll(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 3346
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 3345
    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3352
    .local v2, "rows":I
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v6

    goto :goto_0
.end method

.method public static deleteShareAlbumInLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2573
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string v1, "albumId = ? "

    new-array v2, v8, [Ljava/lang/String;

    aput-object p0, v2, v7

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 2578
    .local v6, "rows":I
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " share albums which shareAlbumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "localFile"

    aput-object v2, v1, v7

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v1, v8

    const-string v2, "microthumbfile"

    aput-object v2, v1, v9

    const-string v2, "(groupId = ? OR localGroupId = ?) AND serverStatus = ?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v7

    aput-object p1, v3, v8

    const-string v4, "custom"

    aput-object v4, v3, v9

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/cloud/CloudUtils$6;

    invoke-direct {v5, p0}, Lcom/miui/gallery/cloud/CloudUtils$6;-><init>(Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    .line 2616
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    const-string v1, "albumId = ? OR localGroupId = ? "

    new-array v2, v9, [Ljava/lang/String;

    aput-object p0, v2, v7

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 2623
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " share images which shareAlbumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareUser;->SHARE_USER_URI:Landroid/net/Uri;

    const-string v1, "albumId = ? "

    new-array v2, v8, [Ljava/lang/String;

    aput-object p0, v2, v7

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 2629
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " share users which shareAlbumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method public static getAccountFromDB(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2320
    const/4 v7, 0x0

    .line 2321
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2323
    .local v6, "account":Landroid/accounts/Account;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "accountName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "accountType"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2330
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2332
    .local v8, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2333
    .local v9, "password":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2334
    new-instance v6, Landroid/accounts/Account;

    .end local v6    # "account":Landroid/accounts/Account;
    invoke-direct {v6, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    :cond_0
    if-eqz v7, :cond_1

    .line 2339
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2342
    :cond_1
    return-object v6

    .line 2338
    .end local v6    # "account":Landroid/accounts/Account;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 2339
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getAutoUploadAttributeFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 709
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 712
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "autoUpload"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    const-string v3, "autoUpload"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 722
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CloudUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCameraFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3613
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraLocalFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3605
    const-string v0, "DCIM/Camera"

    return-object v0
.end method

.method public static getCameraRecordValues()Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x3e7

    .line 3621
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3622
    .local v2, "cameraRecordValues":Landroid/content/ContentValues;
    const-wide/16 v0, -0x3e7

    .line 3623
    .local v0, "CAMERA_RECORD_TIME":J
    const-string v3, "dateModified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3624
    const-string v3, "dateTaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3625
    const-string v3, "mixedDateTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3626
    const-string v3, "fileName"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    const-string v3, "serverId"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3628
    const-string v3, "serverType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3629
    const-string v3, "serverStatus"

    const-string v4, "custom"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3630
    const-string v3, "localFlag"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3631
    const-string v3, "localFile"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraLocalFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3632
    const-string v3, "attributes"

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3633
    return-object v2
.end method

.method public static getCandidateItemsInAGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/lang/String;
    .param p3, "localGroupId"    # Ljava/lang/String;
    .param p4, "isShareAlbum"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/data/DBImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1926
    const/4 v11, 0x0

    .line 1927
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 1938
    .local v10, "candidateItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/DBImage;>;"
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1937
    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudTableUtils;->isGroupWithoutRecordByCloudId(J)Z

    move-result v16

    .line 1939
    .local v16, "isItemOfGroupWithoutRecrod":Z
    const/4 v8, 0x0

    .line 1940
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1942
    .local v13, "groupIdSelectionSeg":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 1944
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1943
    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudTableUtils;->getServerIdForGroupWithoutRecord(J)J

    move-result-wide v14

    .line 1945
    .local v14, "groupId":J
    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object p1, v8, v4

    const/4 v4, 0x1

    aput-object p2, v8, v4

    const/4 v4, 0x2

    aput-object p3, v8, v4

    const/4 v4, 0x3

    .line 1949
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1951
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "(%s = ? OR %s = ?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "localGroupId"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string v9, "groupId"

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1964
    .end local v14    # "groupId":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz p4, :cond_2

    .line 1965
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudShareLimit1Uri()Landroid/net/Uri;

    move-result-object v5

    .line 1967
    :goto_1
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "(%s = ? OR %s = ?) AND %s AND %s AND %s"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "fileName"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "sha1"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Create_ForceCreate_Move_Copy_Rename:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x3

    sget-object v20, Lcom/miui/gallery/cloud/CloudUtils;->itemIsNotGroup:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x4

    aput-object v13, v18, v19

    .line 1968
    move-object/from16 v0, v18

    invoke-static {v7, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 1964
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1975
    if-eqz v11, :cond_5

    .line 1976
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1977
    if-eqz p4, :cond_3

    new-instance v17, Lcom/miui/gallery/data/DBShareImage;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/miui/gallery/data/DBShareImage;-><init>(Landroid/database/Cursor;)V

    .line 1978
    .local v17, "item":Lcom/miui/gallery/data/DBImage;
    :goto_3
    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1984
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "groupIdSelectionSeg":Ljava/lang/String;
    .end local v16    # "isItemOfGroupWithoutRecrod":Z
    .end local v17    # "item":Lcom/miui/gallery/data/DBImage;
    :catch_0
    move-exception v12

    .line 1985
    .local v12, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_1
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1987
    if-eqz v11, :cond_0

    .line 1988
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1991
    .end local v12    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :cond_0
    :goto_4
    return-object v10

    .line 1955
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "groupIdSelectionSeg":Ljava/lang/String;
    .restart local v16    # "isItemOfGroupWithoutRecrod":Z
    :cond_1
    const/4 v4, 0x3

    :try_start_2
    new-array v8, v4, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object p1, v8, v4

    const/4 v4, 0x1

    aput-object p2, v8, v4

    const/4 v4, 0x2

    aput-object p3, v8, v4

    .line 1960
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "localGroupId"

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 1966
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudLimit1Uri()Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 1977
    :cond_3
    new-instance v17, Lcom/miui/gallery/data/DBCloud;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1987
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "groupIdSelectionSeg":Ljava/lang/String;
    .end local v16    # "isItemOfGroupWithoutRecrod":Z
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_4

    .line 1988
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 1981
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "groupIdSelectionSeg":Ljava/lang/String;
    .restart local v16    # "isItemOfGroupWithoutRecrod":Z
    :cond_5
    :try_start_3
    const-string v4, "CloudUtils"

    const-string/jumbo v5, "there isn\'t have any item in group: %s for fileName: %s, sha1: %s"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v4, v5, v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1987
    :cond_6
    if-eqz v11, :cond_0

    .line 1988
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method public static getCloudDistinctUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2192
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/util/UriUtil;->appendDistinct(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudLimit1Uri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2176
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudLimitUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudLimitUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "limit"    # I

    .prologue
    .line 2164
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getCloudShareAlbumLimit1Uri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2172
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getCloudShareLimit1Uri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2168
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentValuesForAll(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static getContentValuesForAll(Lorg/json/JSONObject;Z)Landroid/content/ContentValues;
    .locals 18
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .param p1, "needShareId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 498
    if-nez p0, :cond_1

    .line 499
    const/4 v13, 0x0

    .line 650
    :cond_0
    :goto_0
    return-object v13

    .line 501
    :cond_1
    const-string v14, "content"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 502
    const-string v14, "content"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 505
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForDefault(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v13

    .line 506
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "fileName"

    const-string v15, "fileName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v14, "groupId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 509
    const-string v14, "groupId"

    const-string v15, "groupId"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 512
    :cond_3
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isAutoUploadFeatureOpen()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "appKey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 513
    const-string v14, "appKey"

    const-string v15, "appKey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/miui/gallery/cloud/CloudUtils;->parseBabyInfo(Lorg/json/JSONObject;Landroid/content/ContentValues;)V

    .line 518
    const-string/jumbo v14, "size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 519
    const-string/jumbo v14, "size"

    const-string/jumbo v15, "size"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    :cond_5
    const-string v14, "dateModified"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 522
    const-string v14, "dateModified"

    const-string v15, "dateModified"

    .line 523
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 522
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    :cond_6
    const-string v14, "mimeType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 526
    const-string v14, "mimeType"

    const-string v15, "mimeType"

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 526
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_7
    const-string/jumbo v14, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 530
    const-string/jumbo v14, "title"

    const-string/jumbo v15, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_8
    const-string v14, "description"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 533
    const-string v14, "description"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, "description":Ljava/lang/String;
    const-string v14, "description"

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {v13, v6}, Lcom/miui/gallery/cloud/CloudUtils;->parseDescription(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 537
    .end local v6    # "description":Ljava/lang/String;
    :cond_9
    const-string v14, "dateTaken"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 539
    const-string v14, "babyInfoJson"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 540
    const-string v14, "dateTaken"

    const-wide/16 v16, -0x3e4

    .line 541
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 540
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    :cond_a
    :goto_1
    const-string v14, "duration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 549
    const-string v14, "duration"

    const-string v15, "duration"

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 549
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    :cond_b
    const-string/jumbo v14, "size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 553
    const-string/jumbo v14, "size"

    const-string/jumbo v15, "size"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    :cond_c
    if-eqz p1, :cond_d

    const-string v14, "shareId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 556
    const-string v14, "shareId"

    const-string v15, "shareId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_d
    const-string v14, "albumId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 559
    const-string v14, "albumId"

    const-string v15, "albumId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_e
    const-string v14, "creatorInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 563
    const-string v14, "creatorInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 564
    .local v5, "creatorInfo":Lorg/json/JSONObject;
    const-string v14, "creatorId"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 565
    const-string v14, "creatorId"

    const-string v15, "creatorId"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .end local v5    # "creatorInfo":Lorg/json/JSONObject;
    :cond_f
    const-string v14, "isPublic"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 570
    const-string v14, "isPublic"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 571
    .local v11, "isPublic":Z
    if-eqz v11, :cond_16

    .line 573
    const-string v14, "isPublic"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    const-string v14, "publicUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 575
    const-string v14, "publicUrl"

    const-string v15, "publicUrl"

    .line 576
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 575
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .end local v11    # "isPublic":Z
    :cond_10
    :goto_2
    const-string/jumbo v14, "ubiDefaultIndex"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 586
    const-string/jumbo v14, "ubiSubIndex"

    const-string/jumbo v15, "ubiDefaultIndex"

    .line 587
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 586
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    :cond_11
    const-string/jumbo v14, "ubiSubImageCount"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 590
    const-string/jumbo v14, "ubiSubImageCount"

    const-string/jumbo v15, "ubiSubImageCount"

    .line 591
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 590
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    :cond_12
    const-string v14, "currentFocusIndex"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 594
    const-string/jumbo v14, "ubiFocusIndex"

    const-string v15, "currentFocusIndex"

    .line 595
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 594
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    :cond_13
    const-string v14, "exifInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 600
    const-string v14, "exifInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 601
    .local v8, "exifJson":Lorg/json/JSONObject;
    sget-object v14, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_14
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    .line 602
    .local v7, "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    iget v14, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->exifValueType:I

    packed-switch v14, :pswitch_data_0

    .line 618
    const-string v14, "CloudUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exifDataConst.exifValueType is wrong: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->exifValueType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 543
    .end local v7    # "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    .end local v8    # "exifJson":Lorg/json/JSONObject;
    :cond_15
    const-string v14, "dateTaken"

    const-string v15, "dateTaken"

    .line 544
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    .line 543
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 580
    .restart local v11    # "isPublic":Z
    :cond_16
    const-string v14, "isPublic"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v14, "publicUrl"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 604
    .end local v11    # "isPublic":Z
    .restart local v7    # "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    .restart local v8    # "exifJson":Lorg/json/JSONObject;
    :pswitch_0
    iget-object v14, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 606
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCloudColumns()Ljava/util/ArrayList;

    move-result-object v14

    iget v0, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->columnIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    iget-object v14, v14, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    iget-object v0, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 607
    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 605
    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 611
    :pswitch_1
    iget-object v14, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 613
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCloudColumns()Ljava/util/ArrayList;

    move-result-object v14

    iget v0, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->columnIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    iget-object v14, v14, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    iget-object v0, v7, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 614
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 612
    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 626
    .end local v7    # "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    .end local v8    # "exifJson":Lorg/json/JSONObject;
    :cond_17
    const-string v14, "geoInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 627
    const-string v14, "geoInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 628
    .local v10, "geoJson":Lorg/json/JSONObject;
    const-string v14, "addressList"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, "addressList":Ljava/lang/String;
    const-string v14, "address"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "address":Ljava/lang/String;
    const-string v14, "isAccurate"

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 631
    .local v2, "accurate":Z
    const-string v14, "gps"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 632
    .local v9, "extraGps":Ljava/lang/String;
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1b

    .line 633
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1a

    const/4 v14, 0x0

    :goto_4
    invoke-static {v15, v14}, Lcom/miui/gallery/data/LocationManager;->formatAddress(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 634
    .local v12, "location":Ljava/lang/String;
    const-string v14, "location"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v14, "address"

    invoke-virtual {v13, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v12    # "location":Ljava/lang/String;
    :cond_18
    :goto_5
    if-nez v2, :cond_19

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_19

    .line 641
    const-string v14, "extraGPS"

    invoke-virtual {v13, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .end local v2    # "accurate":Z
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "addressList":Ljava/lang/String;
    .end local v9    # "extraGps":Ljava/lang/String;
    .end local v10    # "geoJson":Lorg/json/JSONObject;
    :cond_19
    const-string v14, "serverType"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v14, "serverType"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "serverId"

    .line 647
    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v14, "serverId"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/gallery/cloud/CloudUtils;->isUmodifyAlbum(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 648
    invoke-static {v13}, Lcom/miui/gallery/cloud/CloudUtils;->replaceFieldsForSystemAlbum(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .restart local v2    # "accurate":Z
    .restart local v3    # "address":Ljava/lang/String;
    .restart local v4    # "addressList":Ljava/lang/String;
    .restart local v9    # "extraGps":Ljava/lang/String;
    .restart local v10    # "geoJson":Lorg/json/JSONObject;
    :cond_1a
    move-object v14, v9

    .line 633
    goto :goto_4

    .line 636
    :cond_1b
    if-eqz v3, :cond_18

    .line 637
    if-eqz v2, :cond_1c

    const/4 v14, 0x0

    :goto_6
    invoke-static {v3, v14}, Lcom/miui/gallery/data/LocationManager;->formatAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 638
    .restart local v12    # "location":Ljava/lang/String;
    const-string v14, "location"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v12    # "location":Ljava/lang/String;
    :cond_1c
    move-object v14, v9

    .line 637
    goto :goto_6

    .line 602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getContentValuesForAllAndThumbNull(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 961
    if-nez p0, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 973
    :goto_0
    return-object v0

    .line 964
    :cond_0
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 965
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 968
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 970
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "thumbnailFile"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 971
    const-string v1, "microthumbfile"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getContentValuesForDefault(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 10
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 978
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 980
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "id"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 981
    const-string v6, "serverId"

    const-string v7, "id"

    invoke-static {p0, v7}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 983
    :cond_0
    const-string/jumbo v6, "status"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 984
    const-string v6, "serverStatus"

    const-string/jumbo v7, "status"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_1
    const-string/jumbo v6, "tag"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 987
    const-string v6, "serverTag"

    const-string/jumbo v7, "tag"

    invoke-static {p0, v7}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    :cond_2
    const-string/jumbo v6, "type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 991
    const-string/jumbo v6, "type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, "serverType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 993
    .local v4, "type":I
    const-string v6, "image"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 994
    const/4 v4, 0x1

    .line 1002
    :goto_0
    const-string v6, "serverType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    .end local v3    # "serverType":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_3
    const-string v6, "sha1"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1006
    const-string v6, "sha1"

    const-string v7, "sha1"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_4
    const-string v6, "labels"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1010
    const-string v6, "labels"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1011
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1012
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1013
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1014
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v6, "label"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "pet"

    const-string v7, "label"

    .line 1016
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1015
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1017
    const-string v6, "lables"

    const/4 v7, 0x1

    .line 1018
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1017
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :cond_5
    return-object v5

    .line 995
    .restart local v3    # "serverType":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_6
    const-string/jumbo v6, "video"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 996
    const/4 v4, 0x2

    goto :goto_0

    .line 997
    :cond_7
    const-string v6, "group"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 998
    const/4 v4, 0x0

    goto :goto_0

    .line 1000
    :cond_8
    const-string v6, "CloudUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error server type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1012
    .end local v3    # "serverType":Ljava/lang/String;
    .end local v4    # "type":I
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getContentValuesForOwnerAlbum(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz p0, :cond_6

    .line 1046
    const-string v2, "albumId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    const-string v2, "serverId"

    const-string v3, "albumId"

    .line 1048
    invoke-static {p0, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1047
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1050
    :cond_0
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1051
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "description":Ljava/lang/String;
    const-string v2, "description"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->parseDescription(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1055
    .end local v0    # "description":Ljava/lang/String;
    :cond_1
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1056
    const-string v2, "fileName"

    const-string v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_2
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isAutoUploadFeatureOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "appKey"

    .line 1060
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1061
    const-string v2, "appKey"

    const-string v3, "appKey"

    .line 1062
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1061
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_3
    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->parseBabyInfo(Lorg/json/JSONObject;Landroid/content/ContentValues;)V

    .line 1067
    const-string v2, "lastUpdateTime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1068
    const-string v2, "dateModified"

    const-string v3, "lastUpdateTime"

    .line 1069
    invoke-static {p0, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1068
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1071
    :cond_4
    const-string v2, "createTime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1072
    const-string v2, "dateTaken"

    const-string v3, "createTime"

    .line 1073
    invoke-static {p0, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1072
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1076
    :cond_5
    const-string v2, "serverType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1077
    const-string v2, "serverStatus"

    const-string v3, "custom"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v2, "serverId"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "serverId"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->isUmodifyAlbum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1081
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->replaceFieldsForSystemAlbum(Landroid/content/ContentValues;)V

    .line 1084
    :cond_6
    return-object v1
.end method

.method public static getContentValuesForUploadDeletePurged(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1032
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p0, :cond_1

    .line 1033
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1036
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForDefault(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1038
    :cond_1
    const-string v1, "localFlag"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    return-object v0
.end method

.method public static getCreatorIdByAlbumId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    .line 2222
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "creatorId"

    const-string v2, "albumId"

    invoke-static {v0, v1, v2, p0}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDBShareAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;
    .locals 9
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "columnValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1669
    const/4 v6, 0x0

    .line 1671
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 1672
    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 1673
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v5, v8

    .line 1674
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 1671
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1679
    if-eqz v6, :cond_1

    .line 1680
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1681
    new-instance v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-direct {v0, v6}, Lcom/miui/gallery/data/DBShareAlbum;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    if-eqz v6, :cond_0

    .line 1688
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1691
    :cond_0
    :goto_0
    return-object v0

    .line 1684
    :cond_1
    :try_start_1
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there isn\'t have any share album in local DB for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    :cond_2
    if-eqz v6, :cond_3

    .line 1688
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    .line 1691
    goto :goto_0

    .line 1687
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1688
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getDBShareAlbumByLocalId(Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;
    .locals 1
    .param p0, "localId"    # Ljava/lang/String;

    .prologue
    .line 1661
    const-string v0, "_id"

    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static getDBShareAlbumBySharedId(Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;
    .locals 1
    .param p0, "sharedId"    # Ljava/lang/String;

    .prologue
    .line 1665
    const-string v0, "albumId"

    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static getDBShareUserInLocal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1695
    const/4 v6, 0x0

    .line 1697
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 1698
    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 1699
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId = ? AND albumId = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 1697
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1704
    if-eqz v6, :cond_1

    .line 1705
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1706
    new-instance v0, Lcom/miui/gallery/data/DBShareUser;

    invoke-direct {v0, v6}, Lcom/miui/gallery/data/DBShareUser;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    if-eqz v6, :cond_0

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1717
    :cond_0
    :goto_0
    return-object v0

    .line 1709
    :cond_1
    :try_start_1
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there isn\'t have any user for userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", albumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1713
    :cond_2
    if-eqz v6, :cond_3

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    .line 1717
    goto :goto_0

    .line 1713
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getDownloadFileStatusFromDB(Lcom/miui/gallery/data/DBImage;)I
    .locals 6
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2885
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "downloadFileStatus"

    aput-object v2, v1, v5

    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    .line 2888
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/cloud/CloudUtils$7;

    invoke-direct {v5}, Lcom/miui/gallery/cloud/CloudUtils$7;-><init>()V

    .line 2885
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 2467
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2468
    const-string v1, "CloudUtils"

    const-string v2, "get extToken failed : cta not allowed"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    :goto_0
    return-object v3

    .line 2472
    :cond_0
    if-nez p1, :cond_1

    .line 2473
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    .line 2475
    :cond_1
    if-nez p1, :cond_2

    .line 2476
    const-string v1, "CloudUtils"

    const-string v2, "get extToken failed : account is null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2479
    :cond_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2480
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v2, "micgallery"

    const/4 v4, 0x1

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    .line 2482
    .local v9, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v8, 0x0

    .line 2484
    .local v8, "extTokenStr":Ljava/lang/String;
    :try_start_0
    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2489
    invoke-static {v8}, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v3

    goto :goto_0

    .line 2485
    :catch_0
    move-exception v7

    .line 2486
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "CloudUtils"

    const-string v2, "get extToken error"

    invoke-static {v1, v2, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getFileSizeLimitStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .locals 2

    .prologue
    .line 457
    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->sFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    if-nez v0, :cond_0

    .line 459
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getFileSizeLimitStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->sFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    .line 461
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->sFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    monitor-exit v1

    return-object v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "retryTimes"    # I
    .param p5, "needReRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "IZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 1547
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1548
    const-string v1, "CloudUtils"

    const-string v2, "CTA not confirmed when get from server"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const/4 v1, 0x0

    .line 1565
    :goto_0
    return-object v1

    .line 1552
    :cond_0
    if-nez p1, :cond_1

    .line 1553
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .restart local p1    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    invoke-static {p1, p4, p5, p3}, Lcom/miui/gallery/cloud/CloudUtils;->addRetryParameters(Ljava/util/List;IZLcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 1559
    const-string v1, "CloudUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    .line 1563
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getParamsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 1562
    invoke-interface {v1, p0, v2}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1565
    .local v0, "resultString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getGroupByAppKey(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 1810
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByAppKey(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v0

    .line 1811
    .local v0, "dbImage":Lcom/miui/gallery/data/DBCloud;
    return-object v0
.end method

.method public static getGroupByFileName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1803
    const-string v1, "fileName"

    const/4 v2, 0x1

    invoke-static {p0, v1, p1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupItemByColumnnameAndValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/miui/gallery/data/DBCloud;

    move-result-object v0

    .line 1805
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    .end local v0    # "dbImage":Lcom/miui/gallery/data/DBImage;
    return-object v0
.end method

.method public static getGroupIdByPhotoLocalId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "photoLocalId"    # Ljava/lang/String;

    .prologue
    .line 2924
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v2, "groupId"

    const-string v3, "_id"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupItemByColumnnameAndValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/miui/gallery/data/DBCloud;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1835
    const/4 v7, 0x0

    .line 1845
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p3, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1848
    .local v6, "columnSelection":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1849
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudLimit1Uri()Landroid/net/Uri;

    move-result-object v1

    .line 1850
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  AND ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Synced:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Create_ForceCreate_Move_Copy_Rename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->itemIsGroup:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 1848
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1861
    if-eqz v7, :cond_2

    .line 1862
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1863
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v0, v7}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    if-eqz v7, :cond_0

    .line 1869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1872
    :cond_0
    :goto_1
    return-object v0

    .line 1845
    .end local v6    # "columnSelection":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 1868
    .restart local v6    # "columnSelection":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 1869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 1872
    goto :goto_1

    .line 1868
    .end local v6    # "columnSelection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getGroupItemByColumnnameAndValueFromShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1877
    const/4 v6, 0x0

    .line 1879
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1880
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudShareAlbumLimit1Uri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 1879
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1882
    if-eqz v6, :cond_1

    .line 1883
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1884
    new-instance v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-direct {v0, v6}, Lcom/miui/gallery/data/DBShareAlbum;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    if-eqz v6, :cond_0

    .line 1890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_0
    :goto_0
    return-object v0

    .line 1889
    :cond_1
    if-eqz v6, :cond_2

    .line 1890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 1893
    goto :goto_0

    .line 1889
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInvitedDBShareUserInLocal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;
    .locals 11
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "relation"    # Ljava/lang/String;
    .param p4, "relationText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x1

    .line 1722
    const/4 v6, 0x0

    .line 1724
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "friend"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "family"

    .line 1725
    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v7, v0

    .line 1726
    .local v7, "needRelationText":Z
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 1727
    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 1728
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s = \'%s\' AND (%s IS NULL OR %s = \'%s\') AND %s = \'%s\' AND %s = \'%s\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_3

    const-string v3, " AND %s = \'%s\'"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "serverStatus"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "invited"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "userId"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "userId"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    aput-object p1, v5, v9

    const/4 v9, 0x5

    const-string v10, "albumId"

    aput-object v10, v5, v9

    const/4 v9, 0x6

    aput-object p2, v5, v9

    const/4 v9, 0x7

    const-string v10, "relation"

    aput-object v10, v5, v9

    const/16 v9, 0x8

    aput-object p3, v5, v9

    const/16 v9, 0x9

    const-string v10, "relationText"

    aput-object v10, v5, v9

    const/16 v9, 0xa

    aput-object p4, v5, v9

    .line 1729
    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1726
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1738
    if-eqz v6, :cond_4

    .line 1739
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1740
    new-instance v0, Lcom/miui/gallery/data/DBShareUser;

    invoke-direct {v0, v6}, Lcom/miui/gallery/data/DBShareUser;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    if-eqz v6, :cond_2

    .line 1748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1751
    :cond_2
    :goto_1
    return-object v0

    .line 1728
    :cond_3
    :try_start_1
    const-string v3, ""

    goto :goto_0

    .line 1743
    :cond_4
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there isn\'t have any user for userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", albumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1747
    :cond_5
    if-eqz v6, :cond_6

    .line 1748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v8

    .line 1751
    goto :goto_1

    .line 1747
    .end local v7    # "needRelationText":Z
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 1748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static getIsFavoriteFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 775
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 777
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 778
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "isFavorite"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    const-string v3, "isFavorite"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 787
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CloudUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "columnValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1760
    const/4 v6, 0x0

    .line 1762
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 1763
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1762
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1766
    if-eqz v6, :cond_1

    .line 1767
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    invoke-static {p0, v6}, Lcom/miui/gallery/cloud/CloudUtils;->createDBImageByUri(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1774
    if-eqz v6, :cond_0

    .line 1775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1778
    :cond_0
    :goto_0
    return-object v0

    .line 1771
    :cond_1
    :try_start_1
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there isn\'t have any item in local DB for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1774
    :cond_2
    if-eqz v6, :cond_3

    .line 1775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    .line 1778
    goto :goto_0

    .line 1774
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getItemByAppKey(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 1829
    const-string v0, "appKey"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupItemByColumnnameAndValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/miui/gallery/data/DBCloud;

    move-result-object v0

    return-object v0
.end method

.method public static getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 1756
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v1, "serverId"

    invoke-static {v0, p0, v1, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

.method public static getItemId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2648
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    .line 2649
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2650
    invoke-static {p0, v8}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 2649
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2655
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2657
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2665
    :goto_0
    return-wide v0

    .line 2661
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2665
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2661
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # I

    .prologue
    .line 2180
    invoke-static {p0, p1}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLimitUri(Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # I
    .param p2, "offset"    # I

    .prologue
    .line 2184
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalFileFromDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 695
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 698
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "localFile"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 705
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CloudUtils"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 705
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLocalGroupIdForSharerAlbum(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2904
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudShareAlbumLimit1Uri()Landroid/net/Uri;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v7

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=? AND %s=\'%s\'"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "albumId"

    aput-object v5, v4, v7

    const-string v5, "serverStatus"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "custom"

    aput-object v6, v4, v5

    .line 2906
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    aput-object p0, v3, v7

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/cloud/CloudUtils$8;

    invoke-direct {v5}, Lcom/miui/gallery/cloud/CloudUtils$8;-><init>()V

    .line 2904
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 4
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 3215
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3216
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getManualSetUploadFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 728
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 729
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "manualSetUpload"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    const-string v3, "manualSetUpload"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 739
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CloudUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMaxFileSizeLimit(Ljava/lang/String;)J
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2459
    invoke-static {p0}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getFileSizeLimitStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->getImageMaxSize()J

    move-result-wide v0

    .line 2462
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getFileSizeLimitStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->getVideoMaxSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getMinFileSizeLimit(Ljava/lang/String;)J
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2455
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFilterMinSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOwnerAlbumLocalFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "albumName"    # Ljava/lang/String;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 3580
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 3581
    .local v0, "appKeyToPathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "com.sina.weibo"

    const-string/jumbo v3, "sina/weibo/weibo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3582
    const-string v2, "com.tencent.mobileqq"

    const-string/jumbo v3, "tencent/qq_images"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    const-string v2, "com.tencent.mm"

    const-string/jumbo v3, "tencent/micromsg/weixin"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3584
    const-string v2, "com.xiaomi.channel"

    const-string v3, "miliao/saved"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    const-string v2, "com.xiaomi.shop"

    const-string v3, "mishop/save"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    const-string v2, "com.UCMobile"

    const-string/jumbo v3, "ucdownloads"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    const-string v2, "com.mt.mtxx.mtxx"

    const-string v3, "mtxx"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3588
    const-string v2, "cn.wps.moffice_eng"

    const-string v3, "kingsoftoffice/file/summary/preview"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    const-string v2, "com.baidu.tieba"

    const-string/jumbo v3, "tieba"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3590
    const-string v2, "com.qzone"

    const-string/jumbo v3, "tencent/qzonepic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3591
    const-string v2, "com.manboker.headportrait"

    const-string v3, "dcim/momentcam"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3593
    const/4 v1, 0x0

    .line 3594
    .local v1, "localFile":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3595
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "localFile":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 3597
    .restart local v1    # "localFile":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3598
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFolderRelativePathInCloud(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3601
    :cond_1
    return-object v1
.end method

.method private static getParamsMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1569
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1570
    .local v1, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 1571
    .local v0, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1573
    .end local v0    # "param":Lorg/apache/http/NameValuePair;
    :cond_0
    return-object v1
.end method

.method public static getProjectionAll()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 3657
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " * "

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static getRecordFromCloudAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnailFileColumn"    # Ljava/lang/String;
    .param p3, "microThumbnailFileColumn"    # Ljava/lang/String;
    .param p4, "localFileColumn"    # Ljava/lang/String;
    .param p5, "localFlagSyncd"    # Ljava/lang/String;

    .prologue
    .line 2057
    const/4 v6, 0x0

    .line 2059
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2061
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " COLLATE NOCASE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " COLLATE NOCASE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " COLLATE NOCASE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") AND ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Create_ForceCreate_Move_Copy_Rename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ) AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils;->itemIsNotGroup:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v4, v1

    const/4 v1, 0x1

    aput-object p0, v4, v1

    const/4 v1, 0x2

    aput-object p0, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    .line 2060
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2078
    :goto_0
    return-object v6

    .line 2074
    :catch_0
    move-exception v7

    .line 2075
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CloudUtils"

    invoke-static {v0, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getRecordFromCloudOwnerAlbum(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2043
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudLimit1Uri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "thumbnailFile"

    const-string v3, "microthumbfile"

    const-string v4, "localFile"

    sget-object v5, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Synced:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getRecordFromCloudAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getRecordFromCloudSharerAlbum(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2050
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "thumbnailFile"

    const-string v3, "microthumbfile"

    const-string v4, "localFile"

    sget-object v5, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Synced:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getRecordFromCloudAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshotsFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3617
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshotsLocalFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3609
    const-string v0, "DCIM/Screenshots"

    return-object v0
.end method

.method public static getScreenshotsRecordValues()Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x3e3

    .line 3637
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3638
    .local v2, "screenshotsRecordValues":Landroid/content/ContentValues;
    const-wide/16 v0, -0x3e3

    .line 3639
    .local v0, "SCREENSHOTS_RECORD_TIME":J
    const-string v3, "dateModified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3640
    const-string v3, "dateTaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3641
    const-string v3, "mixedDateTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3642
    const-string v3, "fileName"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    const-string v3, "serverId"

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3644
    const-string v3, "serverType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3645
    const-string v3, "serverStatus"

    const-string v4, "custom"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    const-string v3, "localFlag"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3647
    const-string v3, "localFile"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsLocalFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3648
    const-string v3, "attributes"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3649
    return-object v2
.end method

.method public static getServerIdByLocalId(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 2202
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudTableUtils;->getServerIdForGroupWithoutRecord(J)J

    move-result-wide v0

    .line 2203
    .local v0, "serverId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2204
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 2206
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v3, "serverId"

    const-string v4, "_id"

    invoke-static {p0, v2, v3, v4, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getServerType(Ljava/io/File;)I
    .locals 4
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 1641
    const/4 v2, -0x1

    .line 1642
    .local v2, "type":I
    if-eqz p0, :cond_0

    .line 1643
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/FileMimeUtil;->getSupportUploadMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1645
    const/4 v2, 0x1

    .line 1657
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1646
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1647
    const/4 v2, 0x2

    goto :goto_0

    .line 1649
    :cond_2
    invoke-static {p0}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1650
    .local v1, "suffix":Ljava/lang/String;
    const-string/jumbo v3, "y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "sa"

    .line 1652
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1653
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getShareAlbumIdByLocalId(Landroid/content/Context;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 2211
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string v1, "albumId"

    const-string v2, "_id"

    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 2213
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v3

    .line 2211
    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShareIdByLocalId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 2217
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    const-string v1, "shareId"

    const-string v2, "_id"

    invoke-static {p0, v0, v1, v2, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShowInOtherAlbumsAttributeFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 743
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 745
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 746
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "showInOtherAlbums"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    const-string/jumbo v3, "showInOtherAlbums"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 755
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CloudUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getShowInOtherAlbumsManualAttributeFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 761
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "manualShowInOtherAlbums"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    const-string v3, "manualShowInOtherAlbums"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 771
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CloudUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSpecialTypeFlagsFromDescription(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 793
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 794
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "specialTypeFlags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    const-string/jumbo v2, "specialTypeFlags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 801
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CloudUtils"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 801
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStringColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projectionColumnName"    # Ljava/lang/String;
    .param p3, "selectionColumnName"    # Ljava/lang/String;
    .param p4, "selectionVaue"    # Ljava/lang/String;

    .prologue
    .line 2237
    const/4 v6, 0x0

    .line 2239
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 2240
    invoke-static {p1, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2239
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2243
    if-eqz v6, :cond_1

    .line 2244
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2245
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2252
    if-eqz v6, :cond_0

    .line 2253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2256
    :cond_0
    :goto_0
    return-object v0

    .line 2248
    :cond_1
    :try_start_1
    const-string v0, "CloudUtils"

    const-string v1, "No item in DB for:  %s = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2252
    :cond_2
    if-eqz v6, :cond_3

    .line 2253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2256
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 2252
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getStringColumnValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "projectionColumnName"    # Ljava/lang/String;
    .param p2, "selectionColumnName"    # Ljava/lang/String;
    .param p3, "selectionValue"    # Ljava/lang/String;

    .prologue
    .line 2228
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnailNameBySha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sha1"    # Ljava/lang/String;

    .prologue
    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasCreateCopyMoveImageByGroupId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2261
    const/4 v6, 0x0

    .line 2263
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudLimit1Uri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "localGroupId = ? AND (localFlag = ? OR localFlag = ? OR localFlag = ? OR localFlag = ? OR localFlag = ? ) "

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/4 v9, 0x6

    .line 2275
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const/16 v9, 0x9

    .line 2276
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x3

    const/16 v9, 0x8

    .line 2277
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x4

    const/4 v9, 0x7

    .line 2278
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x5

    const/4 v9, 0x5

    .line 2279
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 2263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2281
    if-eqz v6, :cond_1

    .line 2282
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 2289
    if-eqz v6, :cond_0

    .line 2290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    .line 2293
    :goto_0
    return v0

    .line 2286
    :cond_1
    :try_start_1
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there isn\'t have any item in local DB for localId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2289
    :cond_2
    if-eqz v6, :cond_3

    .line 2290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 2293
    goto :goto_0

    .line 2289
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2955
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2956
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2957
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFileInCloudDB(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2086
    const/4 v0, 0x0

    .local v0, "cursor1":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 2088
    .local v1, "cursor2":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getRecordFromCloudOwnerAlbum(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2089
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->tryToMoveToNext(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 2099
    if-eqz v0, :cond_0

    .line 2100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2102
    :cond_0
    if-eqz v1, :cond_1

    .line 2103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2106
    :cond_1
    :goto_0
    return v2

    .line 2093
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getRecordFromCloudSharerAlbum(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2094
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->tryToMoveToNext(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 2099
    if-eqz v0, :cond_3

    .line 2100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2102
    :cond_3
    if-eqz v1, :cond_1

    .line 2103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2099
    :cond_4
    if-eqz v0, :cond_5

    .line 2100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2102
    :cond_5
    if-eqz v1, :cond_6

    .line 2103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2106
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 2099
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_7

    .line 2100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2102
    :cond_7
    if-eqz v1, :cond_8

    .line 2103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method private static isFileNeedUpload(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2676
    const/4 v6, 0x0

    .line 2678
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 2679
    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "localFile = ?  COLLATE NOCASE  AND ( localFlag = ? OR localFlag = ? ) "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/16 v9, 0x8

    .line 2688
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const/4 v9, 0x7

    .line 2689
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 2679
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2691
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2695
    if-eqz v6, :cond_0

    .line 2696
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    .line 2699
    :goto_0
    return v0

    .line 2695
    :cond_1
    if-eqz v6, :cond_2

    .line 2696
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 2699
    goto :goto_0

    .line 2695
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2696
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isFileNeedUpload(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2669
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/CloudUtils;->isFileNeedUpload(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    .line 2670
    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/CloudUtils;->isFileNeedUpload(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 2671
    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/CloudUtils;->isFileNeedUpload(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 2672
    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/CloudUtils;->isFileNeedUpload(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUmodifyAlbum(Ljava/lang/String;)Z
    .locals 1
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 3653
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudTableUtils;->isCameraGroup(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudTableUtils;->isScreenshotGroup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidAlbumId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    .line 2828
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static moveImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "sourceFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "hideFolder"    # Z

    .prologue
    .line 1109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1130
    .end local p0    # "sourceFilePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1112
    .restart local p0    # "sourceFilePath":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v4, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1115
    .local v2, "lastModifiedTime":J
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1118
    invoke-static {v4, v0}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1119
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_2

    .line 1120
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_2
    move-object p0, p1

    .line 1122
    goto :goto_0

    .line 1125
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudUtils;->copyImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1126
    .local v1, "resultPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1127
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-object p0, v1

    .line 1128
    goto :goto_0
.end method

.method public static moveImageToFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "sourceFilePath"    # Ljava/lang/String;
    .param p1, "destFolderPath"    # Ljava/lang/String;
    .param p2, "hideFolder"    # Z

    .prologue
    .line 1104
    invoke-static {p0}, Lmiui/os/ExtraFileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "destFilePath":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/miui/gallery/cloud/CloudUtils;->moveImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseBabyInfo(Lorg/json/JSONObject;Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isBabyAlbumFeatureOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "renderInfos"

    .line 655
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 656
    const-string v3, "renderInfos"

    .line 657
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 658
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 659
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 660
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "type"

    .line 661
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_BABY:Ljava/lang/String;

    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 663
    const-string v3, "babyInfoJson"

    .line 664
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v3, "peopleId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    const-string v3, "peopleId"

    const-string v4, "peopleId"

    .line 667
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 658
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseDescription(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 683
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "localFile"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "localFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 685
    const-string v3, "localFile"

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "localFile":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CloudUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p5, "retryTimes"    # I
    .param p6, "needReRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lorg/json/JSONObject;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "IZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 1512
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1513
    const-string v4, "CloudUtils"

    const-string v5, "CTA not confirmed when post request"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :goto_0
    return-object v3

    .line 1517
    :cond_0
    if-nez p1, :cond_1

    .line 1518
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    .restart local p1    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    invoke-static {p1, p5, p6, p4}, Lcom/miui/gallery/cloud/CloudUtils;->addRetryParameters(Ljava/util/List;IZLcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 1523
    if-eqz p2, :cond_2

    .line 1524
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    .local v2, "value":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "data"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, "CloudUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POST URL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    if-eqz p4, :cond_3

    .line 1534
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v3

    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getParamsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    .local v1, "resultString":Ljava/lang/String;
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1536
    .end local v1    # "resultString":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1537
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {p0, v0, v3}, Lcom/miui/gallery/cloud/NetworkUtils;->httpPostRequestForString(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "resultString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static readFileNameFromExif(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1299
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v0

    .line 1300
    .local v0, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getFileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1306
    .end local v0    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_0
    :goto_0
    return-object v2

    .line 1302
    :catch_0
    move-exception v1

    .line 1303
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CloudUtils"

    const-string v4, "Failed to read exif!!"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "newFileName"    # Ljava/lang/String;
    .param p2, "oldFileName"    # Ljava/lang/String;
    .param p3, "needNotifySystemProvider"    # Z

    .prologue
    .line 3429
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 3430
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v11

    .line 3429
    invoke-static {v10, v11}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3431
    const-string v10, "CloudUtils"

    const-string v11, "item in secret album needn\'t be renamed."

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    :goto_0
    return-void

    .line 3436
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3437
    invoke-static/range {p0 .. p1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3445
    .local v4, "newFileNameOfLocalStorage":Ljava/lang/String;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v3

    .line 3446
    .local v3, "folderRelativePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3447
    .local v2, "destFolder":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3448
    .local v5, "newLocalFile":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3449
    .local v6, "newThumbnailFile":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v7

    .line 3450
    .local v7, "oldLocalFile":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3451
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Lcom/miui/gallery/cloud/CloudUtils;->moveImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 3453
    if-eqz p3, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3454
    sget-object v10, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 3455
    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/io/File;

    const/4 v12, 0x0

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V

    .line 3458
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v8

    .line 3459
    .local v8, "thumbnailFile":Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3460
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/miui/gallery/cloud/CloudUtils;->moveImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3462
    if-eqz p3, :cond_2

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 3463
    sget-object v10, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 3464
    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/io/File;

    const/4 v12, 0x0

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V

    .line 3469
    :cond_2
    :goto_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3470
    .local v9, "valuesWithNewName":Landroid/content/ContentValues;
    const-string v10, "fileName"

    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    const-string/jumbo v10, "title"

    .line 3472
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    const-string v10, "localFile"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    const-string/jumbo v10, "thumbnailFile"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "_id"

    aput-object v15, v13, v14

    .line 3477
    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    .line 3478
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 3476
    invoke-static {v10, v9, v11, v12}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3480
    const-string v10, "CloudUtils"

    const-string v11, "item renamed, folderRelativePath: %s, oldFileName: %s, newFileName: %s"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v10, v11, v3, v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3440
    .end local v2    # "destFolder":Ljava/lang/String;
    .end local v3    # "folderRelativePath":Ljava/lang/String;
    .end local v4    # "newFileNameOfLocalStorage":Ljava/lang/String;
    .end local v5    # "newLocalFile":Ljava/lang/String;
    .end local v6    # "newThumbnailFile":Ljava/lang/String;
    .end local v7    # "oldLocalFile":Ljava/lang/String;
    .end local v8    # "thumbnailFile":Ljava/lang/String;
    .end local v9    # "valuesWithNewName":Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v4, p1

    .restart local v4    # "newFileNameOfLocalStorage":Ljava/lang/String;
    goto/16 :goto_1

    .line 3466
    .restart local v2    # "destFolder":Ljava/lang/String;
    .restart local v3    # "folderRelativePath":Ljava/lang/String;
    .restart local v5    # "newLocalFile":Ljava/lang/String;
    .restart local v6    # "newThumbnailFile":Ljava/lang/String;
    .restart local v7    # "oldLocalFile":Ljava/lang/String;
    .restart local v8    # "thumbnailFile":Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 3467
    move-object v6, v5

    goto :goto_2
.end method

.method public static renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Z)V
    .locals 4
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "needNotifySystemProvider"    # Z

    .prologue
    .line 3418
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 3420
    .local v1, "oldFileName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 3419
    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/DownloadPathHelper;->addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3422
    .local v0, "newFileName":Ljava/lang/String;
    invoke-static {p0, v0, v1, p1}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3423
    return-void
.end method

.method public static renameForPhotoConflict(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 3490
    move-object/from16 v11, p0

    .line 3491
    .local v11, "ret":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 3492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3493
    .local v6, "fix":J
    const-string v12, "_"

    .line 3494
    .local v12, "seperator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3495
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3496
    .local v10, "oldName":Ljava/lang/String;
    const/4 v8, -0x1

    .line 3497
    .local v8, "index":I
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/data/LocalUbifocus;->isUbifocusImage(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 3499
    invoke-static {v10}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPatternIndex(Ljava/lang/String;)I

    move-result v8

    .line 3500
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    .line 3501
    move/from16 v0, v17

    invoke-virtual {v10, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3502
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3503
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusSubFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 3504
    .local v15, "subUbiFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    if-eqz v15, :cond_2

    .line 3505
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .line 3507
    .local v13, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_2

    .line 3508
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3509
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    .line 3510
    .local v14, "subFile":Lcom/miui/gallery/data/LocalUbifocus$SubFile;
    invoke-virtual {v14}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object p0

    .line 3511
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3512
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 3513
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPatternIndex(Ljava/lang/String;)I

    move-result v8

    .line 3514
    if-ltz v8, :cond_0

    .line 3515
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    .line 3516
    move/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3517
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3518
    new-instance v16, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    .line 3507
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3522
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v13    # "size":I
    .end local v14    # "subFile":Lcom/miui/gallery/data/LocalUbifocus$SubFile;
    .end local v15    # "subUbiFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    :cond_1
    const-string v16, "_BURST"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    .line 3524
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    .line 3525
    move/from16 v0, v17

    invoke-virtual {v10, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3526
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3573
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "fix":J
    .end local v8    # "index":I
    .end local v10    # "oldName":Ljava/lang/String;
    .end local v12    # "seperator":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v11

    .line 3550
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "fix":J
    .restart local v8    # "index":I
    .restart local v10    # "oldName":Ljava/lang/String;
    .restart local v12    # "seperator":Ljava/lang/String;
    :cond_3
    const-string v16, "_STEREO.jpg"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 3551
    const-string v16, "_STEREO.jpg"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3552
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    .line 3553
    move/from16 v0, v17

    invoke-virtual {v10, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3554
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 3555
    :cond_4
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_5

    .line 3556
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    .line 3557
    move/from16 v0, v17

    invoke-virtual {v10, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3558
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3559
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    .line 3560
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3561
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getImageRelativeDngFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3562
    .local v3, "dngFile":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 3563
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3564
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".dng"

    .line 3565
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3566
    new-instance v16, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_1

    .line 3569
    .end local v3    # "dngFile":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3570
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_1
.end method

.method public static renameItemIfNeeded(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;Z)V
    .locals 3
    .param p0, "oldItem"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "newValues"    # Landroid/content/ContentValues;
    .param p2, "needNotifySystemProvider"    # Z

    .prologue
    .line 3408
    const-string v2, "fileName"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3409
    const-string v2, "fileName"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3410
    .local v0, "newFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 3411
    .local v1, "oldFileName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3412
    invoke-static {p0, v0, v1, p2}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3415
    .end local v0    # "newFileName":Ljava/lang/String;
    .end local v1    # "oldFileName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static replaceFieldsForSystemAlbum(Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3389
    const-string v4, "serverId"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3390
    .local v2, "serverId":J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 3391
    const-string v4, "fileName"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    const-string v4, "localFile"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraLocalFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    const-wide/16 v0, -0x3e7

    .line 3395
    .local v0, "CAMERA_RECORD_TIME":J
    const-string v4, "dateTaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3396
    const-string v4, "mixedDateTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3405
    .end local v0    # "CAMERA_RECORD_TIME":J
    :cond_0
    :goto_0
    return-void

    .line 3397
    :cond_1
    const-wide/16 v4, 0x2

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 3398
    const-string v4, "fileName"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    const-string v4, "localFile"

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsLocalFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    const-wide/16 v0, -0x3e3

    .line 3402
    .restart local v0    # "CAMERA_RECORD_TIME":J
    const-string v4, "dateTaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3403
    const-string v4, "mixedDateTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V
    .locals 14
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "oldDbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 816
    const-wide/16 v0, 0x0

    .line 817
    .local v0, "attributes":J
    const-string v9, "description"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, "description":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getAutoUploadAttributeFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 819
    .local v2, "autoUpload":Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getShowInOtherAlbumsAttributeFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 820
    .local v7, "showInOtherAlbums":Ljava/lang/Boolean;
    const-string v9, "localFile"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 822
    .local v5, "localFile":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 823
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getAttributes()J

    move-result-wide v10

    or-long/2addr v0, v10

    .line 832
    :cond_0
    :goto_0
    const-string v9, "babyInfoJson"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 833
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    const-wide/16 v10, 0x1

    and-long/2addr v10, v0

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 835
    :cond_1
    const-string v9, "CloudUtils"

    const-string v10, "correct attribute autoUpload to true for baby album"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_2
    const-wide/16 v10, 0x1

    or-long/2addr v0, v10

    .line 854
    :cond_3
    :goto_1
    if-eqz v7, :cond_10

    .line 855
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 856
    const-wide/16 v10, 0x40

    or-long/2addr v0, v10

    .line 860
    :goto_2
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getShowInOtherAlbumsManualAttributeFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 861
    .local v8, "showInOtherAlbumsManual":Ljava/lang/Boolean;
    if-eqz v8, :cond_4

    .line 862
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 863
    const-wide/16 v10, 0x80

    or-long/2addr v0, v10

    .line 877
    .end local v8    # "showInOtherAlbumsManual":Ljava/lang/Boolean;
    :cond_4
    :goto_3
    const-string v9, "attributes"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 879
    const-wide/16 v10, 0x1

    and-long/2addr v10, v0

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_12

    const/4 v9, 0x1

    move v10, v9

    :goto_4
    if-eqz v2, :cond_5

    .line 880
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_13

    :cond_5
    const/4 v9, 0x1

    :goto_5
    if-ne v10, v9, :cond_7

    const-wide/16 v10, 0x40

    and-long/2addr v10, v0

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_14

    const/4 v9, 0x1

    move v10, v9

    :goto_6
    if-eqz v7, :cond_6

    .line 882
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_15

    :cond_6
    const/4 v9, 0x1

    :goto_7
    if-eq v10, v9, :cond_9

    .line 883
    :cond_7
    const-string v4, ""

    .line 884
    .local v4, "editedColumns":Ljava/lang/String;
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 885
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v4

    .line 887
    :cond_8
    const-string v9, "editedColumns"

    .line 888
    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 887
    invoke-static {v4, v9}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->mergeEditedColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 889
    const/4 v9, 0x6

    .line 890
    invoke-static {v9}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v9

    .line 889
    invoke-static {v4, v9}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->mergeEditedColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 891
    const-string v9, "editedColumns"

    invoke-virtual {p0, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .end local v4    # "editedColumns":Ljava/lang/String;
    :cond_9
    return-void

    .line 825
    :cond_a
    const-string v9, "MIUI/Gallery/cloud"

    invoke-static {v5, v9}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 826
    if-nez v2, :cond_0

    .line 827
    const-wide/16 v10, 0x1

    or-long/2addr v0, v10

    goto/16 :goto_0

    .line 838
    :cond_b
    if-eqz v2, :cond_3

    .line 839
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 840
    const-wide/16 v10, 0x1

    or-long/2addr v0, v10

    .line 844
    :goto_8
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getManualSetUploadFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 845
    .local v6, "manualSetUpload":Ljava/lang/Boolean;
    if-eqz v6, :cond_3

    .line 846
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 847
    const-wide/16 v10, 0x2

    or-long/2addr v0, v10

    goto/16 :goto_1

    .line 842
    .end local v6    # "manualSetUpload":Ljava/lang/Boolean;
    :cond_c
    const-wide/16 v10, -0x2

    and-long/2addr v0, v10

    goto :goto_8

    .line 849
    .restart local v6    # "manualSetUpload":Ljava/lang/Boolean;
    :cond_d
    const-wide/16 v10, -0x3

    and-long/2addr v0, v10

    goto/16 :goto_1

    .line 858
    .end local v6    # "manualSetUpload":Ljava/lang/Boolean;
    :cond_e
    const-wide/16 v10, -0x41

    and-long/2addr v0, v10

    goto/16 :goto_2

    .line 865
    .restart local v8    # "showInOtherAlbumsManual":Ljava/lang/Boolean;
    :cond_f
    const-wide/16 v10, -0x81

    and-long/2addr v0, v10

    goto/16 :goto_3

    .line 868
    .end local v8    # "showInOtherAlbumsManual":Ljava/lang/Boolean;
    :cond_10
    if-eqz v2, :cond_4

    .line 870
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_11

    .line 871
    const-wide/16 v10, 0x40

    or-long/2addr v0, v10

    goto/16 :goto_3

    .line 873
    :cond_11
    const-wide/16 v10, -0x41

    and-long/2addr v0, v10

    goto/16 :goto_3

    .line 879
    :cond_12
    const/4 v9, 0x0

    move v10, v9

    goto/16 :goto_4

    .line 880
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_14
    const/4 v9, 0x0

    move v10, v9

    goto/16 :goto_6

    .line 882
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_7
.end method

.method public static reviseSpecialTypeFlags(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V
    .locals 6
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "oldDbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 805
    const-string v2, "description"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getSpecialTypeFlagsFromDescription(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 807
    .local v1, "specialTypeFlags":Ljava/lang/Long;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSpecialTypeFlags()J

    move-result-wide v4

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 810
    :cond_0
    if-eqz v1, :cond_1

    .line 811
    const-string/jumbo v2, "specialTypeFlags"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 813
    :cond_1
    return-void
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "toSaveBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1192
    invoke-static {p2}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1193
    .local v2, "fileExtension":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v0, "candidate":Ljava/io/File;
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/cloud/RequestCloudItem;->shouldHideDownloadFolder(Ljava/lang/String;)Z

    move-result v4

    .line 1196
    invoke-static {p1, v4}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 1220
    .end local v0    # "candidate":Ljava/io/File;
    :goto_0
    return-object v0

    .line 1201
    .restart local v0    # "candidate":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1202
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v3

    .line 1203
    goto :goto_0

    .line 1206
    :cond_1
    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/cloud/CloudUtils$2;

    invoke-direct {v5, p0, v2}, Lcom/miui/gallery/cloud/CloudUtils$2;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v4, v0, v5}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/io/InputStream;Ljava/io/File;Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v1

    .line 1215
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CloudUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to save image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1216
    sget-object v4, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    move-object v0, v3

    .line 1217
    goto :goto_0
.end method

.method public static sendBabyAlbumNewPhotoNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;JLjava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "soundUri"    # Landroid/net/Uri;
    .param p4, "albumLocalUniformId"    # J
    .param p6, "albumName"    # Ljava/lang/String;
    .param p7, "isOtherShared"    # Z

    .prologue
    .line 2712
    const v4, 0x7f0e006e

    const v5, 0x7f0e006e

    const v6, 0x7f02004e

    const-string v7, "com.miui.gallery.action.VIEW_ALBUM_NEW_PHOTO"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/miui/gallery/cloud/CloudUtils;->sendNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;IIILjava/lang/String;JLjava/lang/String;Z)V

    .line 2716
    return-void
.end method

.method private static sendNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;IIILjava/lang/String;JLjava/lang/String;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "soundUri"    # Landroid/net/Uri;
    .param p4, "tickerId"    # I
    .param p5, "contentTitleId"    # I
    .param p6, "smallIcon"    # I
    .param p7, "action"    # Ljava/lang/String;
    .param p8, "albumLocalUniformId"    # J
    .param p10, "albumName"    # Ljava/lang/String;
    .param p11, "isOtherShared"    # Z

    .prologue
    .line 2721
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2722
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2723
    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2724
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2725
    move/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2727
    if-eqz p3, :cond_0

    .line 2728
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 2731
    :cond_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2732
    .local v3, "intent":Landroid/content/Intent;
    const-wide/16 v8, -0x1

    cmp-long v7, p8, v8

    if-eqz v7, :cond_1

    .line 2733
    const-string v7, "album_id"

    move-wide/from16 v0, p8

    invoke-virtual {v3, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2734
    const-string v7, "album_name"

    move-object/from16 v0, p10

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2735
    const-string v7, "other_share_album"

    move/from16 v0, p11

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2736
    const/high16 v7, 0x4000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2737
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2739
    :cond_1
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2740
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2742
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 2743
    .local v4, "n":Landroid/app/Notification;
    const/16 v7, 0x10

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 2745
    const-string v7, "notification"

    .line 2746
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 2747
    .local v5, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v5, p2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2748
    return-void
.end method

.method public static sendShareAlbumNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "soundUri"    # Landroid/net/Uri;

    .prologue
    const v4, 0x7f0e0463

    .line 2704
    const v6, 0x7f02004e

    const-string v7, "com.miui.gallery.action.VIEW_ALBUM"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-static/range {v0 .. v11}, Lcom/miui/gallery/cloud/CloudUtils;->sendNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;IIILjava/lang/String;JLjava/lang/String;Z)V

    .line 2708
    return-void
.end method

.method public static sqlNotEmptyStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "columnName"    # Ljava/lang/String;

    .prologue
    .line 2637
    const-string v0, "%s!=\'\' AND %s is not NULL"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static supportShare()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2817
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsInternationalAccount()I

    move-result v0

    .line 2818
    .local v0, "isInternational":I
    if-ne v0, v2, :cond_1

    .line 2824
    :cond_0
    :goto_0
    return v1

    .line 2820
    :cond_1
    if-nez v0, :cond_2

    move v1, v2

    .line 2821
    goto :goto_0

    .line 2824
    :cond_2
    sget-boolean v3, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    if-eqz v3, :cond_3

    const-string v3, "HK"

    invoke-static {v3}, Lcom/miui/settings/Settings;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "TW"

    invoke-static {v3}, Lcom/miui/settings/Settings;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private static tryToMoveToNext(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2082
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_0
.end method

.method public static updateLocalGroupIdInGroup(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "localGroupId"    # Ljava/lang/String;
    .param p3, "albumIdColumnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2936
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2943
    :cond_0
    :goto_0
    return v1

    .line 2940
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2941
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "localGroupId"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=?"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p3, v4, v1

    .line 2945
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v1

    .line 2943
    invoke-static {p0, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2347
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static updateToLocalDBByServerId(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2358
    return-void
.end method

.method public static updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2362
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2363
    return-void
.end method

.method public static updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2367
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Z)V

    .line 2368
    return-void
.end method

.method public static updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "keepLocalFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2372
    if-eqz p1, :cond_2

    .line 2374
    const-string v2, "serverId"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2375
    .local v0, "serverId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2376
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2377
    .local v1, "updates":Landroid/content/ContentValues;
    const-string v2, "serverId"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2378
    const-string v2, "serverId = ?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2380
    .end local v1    # "updates":Landroid/content/ContentValues;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 2384
    .end local v0    # "serverId":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_1

    .line 2385
    const-string v2, "localFlag"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2389
    :cond_1
    const-string v2, "_id = ? AND localFlag != ? "

    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v4

    .line 2392
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 2389
    invoke-static {p0, p1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2394
    return-void

    .line 2382
    :cond_2
    new-instance p1, Landroid/content/ContentValues;

    .end local p1    # "values":Landroid/content/ContentValues;
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .restart local p1    # "values":Landroid/content/ContentValues;
    goto :goto_0
.end method

.method public static updateToPeopleFaceDBForDeleteItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2411
    const-string v0, "localFlag"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2412
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBByServerId(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2413
    return-void
.end method

.method public static updateToPeopleFaceDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2398
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBByServerId(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2399
    const-string v0, "localFlag"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2402
    const-string v0, "serverId = ? AND localFlag != ? "

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    const/4 v2, 0x1

    .line 2405
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2402
    invoke-static {p0, p1, v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2407
    return-void
.end method
