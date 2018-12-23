.class public Lcom/miui/gallery/data/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocationManager$Statistics;,
        Lcom/miui/gallery/data/LocationManager$CacheItem;,
        Lcom/miui/gallery/data/LocationManager$AddressCache;,
        Lcom/miui/gallery/data/LocationManager$LocaleParser;,
        Lcom/miui/gallery/data/LocationManager$AddressParser;,
        Lcom/miui/gallery/data/LocationManager$ExtraGps;,
        Lcom/miui/gallery/data/LocationManager$CloudItem;
    }
.end annotation


# static fields
.field private static final ALIAS_EXIF_GPS_VALID:Ljava/lang/String;

.field private static final ALIAS_LOCATION_INFO_INVALID:Ljava/lang/String;

.field private static final FIXED_ADDRESS_LOCALE:Ljava/util/Locale;

.field private static final INVALID_NAME:Ljava/util/HashMap;
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

.field private static final LOCATION_INFO_PROJECTION:[Ljava/lang/String;

.field private static final LOCATION_INFO_SELECTION:Ljava/lang/String;

.field private static mInstance:Lcom/miui/gallery/data/LocationManager;


# instance fields
.field private final CONNECTOR:Ljava/lang/String;

.field private final SEPARATOR:Ljava/lang/String;

.field private mAddressCache:Lcom/miui/gallery/data/LocationManager$AddressCache;

.field private mMediaGpsInfoStage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lcom/miui/gallery/data/LocationManager;->FIXED_ADDRESS_LOCALE:Ljava/util/Locale;

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "exifGPSLatitude"

    aput-object v1, v0, v4

    const-string v1, "exifGPSLatitudeRef"

    aput-object v1, v0, v5

    const-string v1, "exifGPSLongitude"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "extraGPS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/LocationManager;->LOCATION_INFO_PROJECTION:[Ljava/lang/String;

    .line 99
    const-string v0, "((%s NOT NULL AND %s NOT NULL) or %s NOT NULL)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "exifGPSLatitude"

    aput-object v2, v1, v3

    const-string v2, "exifGPSLongitude"

    aput-object v2, v1, v4

    const-string v2, "extraGPS"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocationManager;->ALIAS_EXIF_GPS_VALID:Ljava/lang/String;

    .line 102
    const-string v0, "(%s IS NULL)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "address"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocationManager;->ALIAS_LOCATION_INFO_INVALID:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/data/LocationManager;->ALIAS_EXIF_GPS_VALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/data/LocationManager;->ALIAS_LOCATION_INFO_INVALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocationManager;->LOCATION_INFO_SELECTION:Ljava/lang/String;

    .line 881
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/LocationManager;->INVALID_NAME:Ljava/util/HashMap;

    .line 883
    sget-object v0, Lcom/miui/gallery/data/LocationManager;->INVALID_NAME:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5947\u7eb3"

    const-string/jumbo v2, "\u4e2d\u56fd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/miui/gallery/data/LocationManager$AddressCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/data/LocationManager$AddressCache;-><init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/data/LocationManager;->mAddressCache:Lcom/miui/gallery/data/LocationManager$AddressCache;

    .line 110
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e02cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocationManager;->SEPARATOR:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocationManager;->CONNECTOR:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/LocationManager;->mMediaGpsInfoStage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/LocationManager;Landroid/database/Cursor;)Lcom/miui/gallery/data/LocationManager$CloudItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/data/LocationManager;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/LocationManager;->parseCursor(Landroid/database/Cursor;)Lcom/miui/gallery/data/LocationManager$CloudItem;

    move-result-object v0

    return-object v0
.end method

.method private checkVersionAndUpgrade()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 728
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/gallery/preference/GalleryPreferences$LocationManager;->getLocationDetailsVersion(I)I

    move-result v0

    .line 729
    .local v0, "oldVersion":I
    if-lez v0, :cond_0

    if-ge v0, v4, :cond_0

    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->isSyncable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    const-string v2, "LocationManager"

    const-string v3, "On clear old addresses due to location manager upgrade"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 732
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 733
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v2, v1, v5, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 735
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eq v0, v4, :cond_1

    .line 736
    invoke-static {v4}, Lcom/miui/gallery/preference/GalleryPreferences$LocationManager;->setLocationDetailsVersion(I)V

    .line 738
    :cond_1
    return-void
.end method

.method private static ensureAreaLevel(I)I
    .locals 1
    .param p0, "delayTime"    # I

    .prologue
    .line 600
    if-nez p0, :cond_0

    .line 601
    const/4 v0, 0x6

    .line 607
    :goto_0
    return v0

    .line 602
    :cond_0
    const/16 v0, 0xf

    if-ge p0, v0, :cond_1

    .line 603
    const/4 v0, 0x4

    goto :goto_0

    .line 604
    :cond_1
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_2

    .line 605
    const/4 v0, 0x3

    goto :goto_0

    .line 607
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fixAddressFault(Landroid/location/Address;)Landroid/location/Address;
    .locals 4
    .param p0, "address"    # Landroid/location/Address;

    .prologue
    .line 887
    if-eqz p0, :cond_2

    .line 889
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/miui/gallery/data/LocationManager;->INVALID_NAME:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 891
    .local v0, "fixed":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 895
    :cond_0
    invoke-virtual {p0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 896
    if-eqz v1, :cond_1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 897
    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 899
    :cond_1
    invoke-virtual {p0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 900
    if-eqz v1, :cond_2

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 901
    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    .line 904
    .end local v0    # "fixed":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method private static formatAddress(Landroid/location/Address;I)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Landroid/location/Address;
    .param p1, "targetLevel"    # I

    .prologue
    .line 614
    if-nez p0, :cond_0

    .line 615
    const/4 v3, 0x0

    .line 630
    :goto_0
    return-object v3

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-static {p0, v3, p1}, Lcom/miui/gallery/data/LocationManager;->obtainArea(Landroid/location/Address;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 619
    invoke-static {p0, v4, p1}, Lcom/miui/gallery/data/LocationManager;->obtainArea(Landroid/location/Address;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    .line 620
    invoke-static {p0, v4, p1}, Lcom/miui/gallery/data/LocationManager;->obtainArea(Landroid/location/Address;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    .line 621
    invoke-static {p0, v4, p1}, Lcom/miui/gallery/data/LocationManager;->obtainArea(Landroid/location/Address;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    .line 622
    invoke-static {p0, v4, p1}, Lcom/miui/gallery/data/LocationManager;->obtainArea(Landroid/location/Address;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const/4 v3, 0x5

    invoke-static {p0, v3, p1}, Lcom/miui/gallery/data/LocationManager;->obtainArea(Landroid/location/Address;II)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "thoroughfare":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const/4 v3, 0x6

    invoke-static {p0, v3, p1}, Lcom/miui/gallery/data/LocationManager;->obtainArea(Landroid/location/Address;II)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "subThoroughfare":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static formatAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "extraGps"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 523
    if-nez p0, :cond_0

    .line 532
    :goto_0
    return-object v1

    .line 528
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/data/LocationManager$AddressParser;->fromJson(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/gallery/data/LocationManager;->getAddressTargetLevel(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/gallery/data/LocationManager;->formatAddress(Landroid/location/Address;I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "LocationManager"

    const-string v3, "formatAddress error."

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static formatAddress(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "addressList"    # Lorg/json/JSONArray;
    .param p1, "extraGps"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 496
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-object v4

    .line 501
    :cond_1
    const/4 v0, 0x0

    .line 502
    .local v0, "address":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 503
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 504
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 505
    invoke-static {v3}, Lcom/miui/gallery/data/LocationManager$LocaleParser;->toString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/miui/gallery/data/LocationManager$AddressParser;->getLocaleStringFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 509
    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/data/LocationManager$AddressParser;->fromJson(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v5

    invoke-static {p1}, Lcom/miui/gallery/data/LocationManager;->getAddressTargetLevel(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/gallery/data/LocationManager;->formatAddress(Landroid/location/Address;I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 503
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 510
    .end local v2    # "i":I
    .end local v3    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "LocationManager"

    const-string v6, "formatAddress error."

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private formatAreaNames(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    const/4 v3, 0x0

    .line 580
    :goto_0
    return-object v3

    .line 567
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 568
    .local v2, "length":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 569
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 572
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v3, v2, -0x2

    if-ge v1, v3, :cond_2

    .line 574
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/data/LocationManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 577
    :cond_2
    add-int/lit8 v3, v2, -0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/data/LocationManager;->CONNECTOR:Ljava/lang/String;

    .line 578
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v2, -0x1

    .line 579
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static formatExifGpsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "lat"    # Ljava/lang/String;
    .param p1, "lng"    # Ljava/lang/String;
    .param p2, "latRef"    # Ljava/lang/String;
    .param p3, "lngRef"    # Ljava/lang/String;

    .prologue
    .line 674
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p2}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 676
    invoke-static {p1, p3}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 675
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static formatExtraGpsString(DDJ)Ljava/lang/String;
    .locals 4
    .param p0, "lat"    # D
    .param p2, "lng"    # D
    .param p4, "delay"    # J

    .prologue
    .line 682
    const-string v0, "%s,%s,%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAddress(Landroid/content/Context;Ljava/util/Locale;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Landroid/location/Address;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "item"    # Lcom/miui/gallery/data/LocationManager$CloudItem;
    .param p4, "foreground"    # Z
    .param p5, "stat"    # Lcom/miui/gallery/data/LocationManager$Statistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 850
    const/4 v10, 0x0

    .line 853
    .local v10, "address":Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/LocationManager;->mAddressCache:Lcom/miui/gallery/data/LocationManager$AddressCache;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lat:F

    float-to-double v4, v4

    move-object/from16 v0, p3

    iget v6, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lng:F

    float-to-double v6, v6

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/data/LocationManager$AddressCache;->get(Ljava/util/Locale;DD)Lcom/miui/gallery/data/LocationManager$CacheItem;

    move-result-object v12

    .line 854
    .local v12, "cacheItem":Lcom/miui/gallery/data/LocationManager$CacheItem;
    if-eqz v12, :cond_0

    .line 855
    iget-object v10, v12, Lcom/miui/gallery/data/LocationManager$CacheItem;->address:Landroid/location/Address;

    .line 856
    move-object/from16 v0, p5

    iget v2, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p5

    iput v2, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    .line 857
    move-object/from16 v0, p5

    iget v2, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheDistance:I

    iget v4, v12, Lcom/miui/gallery/data/LocationManager$CacheItem;->distance:I

    add-int/2addr v2, v4

    move-object/from16 v0, p5

    iput v2, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheDistance:I

    .line 858
    if-eqz p4, :cond_0

    .line 859
    const-string v2, "LocationManager"

    const-string v4, "cache hit."

    invoke-static {v2, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    if-nez v10, :cond_2

    .line 865
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 866
    .local v3, "geocoder":Landroid/location/Geocoder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 867
    .local v16, "start":J
    move-object/from16 v0, p3

    iget v2, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lat:F

    float-to-double v4, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lng:F

    float-to-double v6, v2

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v11

    .line 868
    .local v11, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v14, v4, v16

    .line 869
    .local v14, "cost":J
    move-object/from16 v0, p5

    iget v2, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->cost:I

    int-to-long v4, v2

    add-long/2addr v4, v14

    long-to-int v2, v4

    move-object/from16 v0, p5

    iput v2, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->cost:I

    .line 870
    if-eqz p4, :cond_1

    .line 871
    const-string v2, "LocationManager"

    const-string v4, "get location cost: %s"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    :cond_1
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 874
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-static {v2}, Lcom/miui/gallery/data/LocationManager;->fixAddressFault(Landroid/location/Address;)Landroid/location/Address;

    move-result-object v10

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/data/LocationManager;->mAddressCache:Lcom/miui/gallery/data/LocationManager$AddressCache;

    move-object/from16 v0, p3

    iget v2, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lat:F

    float-to-double v6, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lng:F

    float-to-double v8, v2

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/miui/gallery/data/LocationManager$AddressCache;->put(Ljava/util/Locale;DDLandroid/location/Address;)V

    .line 878
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    .end local v11    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v14    # "cost":J
    .end local v16    # "start":J
    :cond_2
    return-object v10
.end method

.method private getAddressList(Landroid/content/Context;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/miui/gallery/data/LocationManager$CloudItem;
    .param p3, "foreground"    # Z
    .param p4, "stat"    # Lcom/miui/gallery/data/LocationManager$Statistics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/gallery/data/LocationManager$CloudItem;",
            "Z",
            "Lcom/miui/gallery/data/LocationManager$Statistics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .local v2, "locale":Ljava/util/Locale;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 827
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/data/LocationManager;->getAddress(Landroid/content/Context;Ljava/util/Locale;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Landroid/location/Address;

    move-result-object v9

    .line 828
    .local v9, "defaultLocaleAddress":Landroid/location/Address;
    if-nez v9, :cond_0

    .line 829
    const-string v0, "LocationManager"

    const-string v1, "default address not valid."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget v0, p4, Lcom/miui/gallery/data/LocationManager$Statistics;->addressNull:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p4, Lcom/miui/gallery/data/LocationManager$Statistics;->addressNull:I

    .line 831
    const/4 v0, 0x0

    .line 845
    :goto_0
    return-object v0

    .line 834
    :cond_0
    sget-boolean v0, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gallery/data/LocationManager;->FIXED_ADDRESS_LOCALE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    :cond_1
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_2
    sget-object v5, Lcom/miui/gallery/data/LocationManager;->FIXED_ADDRESS_LOCALE:Ljava/util/Locale;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/miui/gallery/data/LocationManager;->getAddress(Landroid/content/Context;Ljava/util/Locale;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Landroid/location/Address;

    move-result-object v10

    .line 840
    .local v10, "fixedLocaleAddress":Landroid/location/Address;
    if-nez v10, :cond_3

    .line 841
    const-string v0, "LocationManager"

    const-string v1, "fixed address not valid."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget v0, p4, Lcom/miui/gallery/data/LocationManager$Statistics;->addressNull:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p4, Lcom/miui/gallery/data/LocationManager$Statistics;->addressNull:I

    .line 843
    const/4 v0, 0x0

    goto :goto_0

    .line 845
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/location/Address;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object v10, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAddressTargetLevel(Ljava/lang/String;)I
    .locals 3
    .param p0, "extraGps"    # Ljava/lang/String;

    .prologue
    .line 536
    const/4 v1, 0x6

    .line 537
    .local v1, "targetLevel":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    invoke-static {p0}, Lcom/miui/gallery/data/LocationManager;->parseGpsString(Ljava/lang/String;)Lcom/miui/gallery/data/LocationManager$ExtraGps;

    move-result-object v0

    .line 539
    .local v0, "result":Lcom/miui/gallery/data/LocationManager$ExtraGps;
    if-eqz v0, :cond_1

    .line 540
    iget v2, v0, Lcom/miui/gallery/data/LocationManager$ExtraGps;->delayTime:I

    invoke-static {v2}, Lcom/miui/gallery/data/LocationManager;->ensureAreaLevel(I)I

    move-result v1

    .line 545
    .end local v0    # "result":Lcom/miui/gallery/data/LocationManager$ExtraGps;
    :cond_0
    :goto_0
    return v1

    .line 542
    .restart local v0    # "result":Lcom/miui/gallery/data/LocationManager$ExtraGps;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getArea(Landroid/location/Address;I)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Landroid/location/Address;
    .param p1, "areaLevel"    # I

    .prologue
    .line 649
    packed-switch p1, :pswitch_data_0

    .line 665
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 651
    :pswitch_0
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :pswitch_1
    invoke-virtual {p0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 655
    :pswitch_2
    invoke-virtual {p0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 657
    :pswitch_3
    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 659
    :pswitch_4
    invoke-virtual {p0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 661
    :pswitch_5
    invoke-virtual {p0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :pswitch_6
    invoke-virtual {p0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/data/LocationManager;
    .locals 2

    .prologue
    .line 119
    const-class v1, Lcom/miui/gallery/data/LocationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/data/LocationManager;->mInstance:Lcom/miui/gallery/data/LocationManager;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/miui/gallery/data/LocationManager;

    invoke-direct {v0}, Lcom/miui/gallery/data/LocationManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/LocationManager;->mInstance:Lcom/miui/gallery/data/LocationManager;

    .line 122
    :cond_0
    sget-object v0, Lcom/miui/gallery/data/LocationManager;->mInstance:Lcom/miui/gallery/data/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNamesOfArea([[Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .param p0, "areas"    # [[Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "areaIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 552
    aget-object v2, p0, v0

    array-length v2, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 553
    aget-object v2, p0, v0

    aget-object v1, v2, p2

    .line 554
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_1
    return-void
.end method

.method private static isLatLngValid(DD)Z
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 932
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 670
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSyncable()Z
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method private loadLocationForItem(Landroid/content/Context;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/miui/gallery/data/LocationManager$CloudItem;
    .param p3, "foreground"    # Z
    .param p4, "stat"    # Lcom/miui/gallery/data/LocationManager$Statistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 747
    if-nez p4, :cond_0

    .line 748
    new-instance p4, Lcom/miui/gallery/data/LocationManager$Statistics;

    .end local p4    # "stat":Lcom/miui/gallery/data/LocationManager$Statistics;
    const/4 v9, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/miui/gallery/data/LocationManager$Statistics;-><init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V

    .line 751
    .restart local p4    # "stat":Lcom/miui/gallery/data/LocationManager$Statistics;
    :cond_0
    move-object/from16 v0, p2

    iget v9, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lat:F

    float-to-double v10, v9

    move-object/from16 v0, p2

    iget v9, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->lng:F

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Lcom/miui/gallery/data/LocationManager;->isLatLngValid(DD)Z

    move-result v9

    if-nez v9, :cond_2

    .line 752
    const-string v9, "LocationManager"

    const-string v10, "Lat or lng not valid."

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, p4

    iget v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->latLngInvalid:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p4

    iput v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->latLngInvalid:I

    .line 754
    const/4 v6, 0x0

    .line 816
    :cond_1
    :goto_0
    return v6

    .line 757
    :cond_2
    invoke-direct/range {p0 .. p4}, Lcom/miui/gallery/data/LocationManager;->getAddressList(Landroid/content/Context;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Ljava/util/List;

    move-result-object v3

    .line 758
    .local v3, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 759
    const/4 v6, 0x0

    goto :goto_0

    .line 762
    :cond_3
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Address;

    move-object/from16 v0, p2

    iget v10, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->delayTime:I

    invoke-static {v10}, Lcom/miui/gallery/data/LocationManager;->ensureAreaLevel(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/miui/gallery/data/LocationManager;->formatAddress(Landroid/location/Address;I)Ljava/lang/String;

    move-result-object v5

    .line 763
    .local v5, "location":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/data/LocationManager$AddressParser;->toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, "addressJson":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->isSyncable()Z

    move-result v9

    if-nez v9, :cond_5

    .line 767
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 768
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "location"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v9, "address"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    sget-object v9, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->id:J

    .line 771
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 770
    move-object/from16 v0, p1

    invoke-static {v0, v9, v8, v10, v11}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_4

    const/4 v6, 0x1

    .line 773
    .local v6, "result":Z
    :goto_1
    if-nez v6, :cond_1

    .line 774
    const-string v9, "LocationManager"

    const-string v10, "Save location info failed."

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p4

    iget v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p4

    iput v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    goto :goto_0

    .line 770
    .end local v6    # "result":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 780
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v6, 0x1

    .line 781
    .restart local v6    # "result":Z
    const-string v7, ""

    .line 782
    .local v7, "updateValues":Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 783
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 784
    .restart local v8    # "values":Landroid/content/ContentValues;
    const-string v9, "location"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v9, "address"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v9, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->id:J

    .line 787
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 786
    move-object/from16 v0, p1

    invoke-static {v0, v9, v8, v10, v11}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_6

    const/4 v6, 0x1

    .line 794
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_2
    if-nez v6, :cond_8

    .line 795
    const-string v9, "LocationManager"

    const-string v10, "Save location info failed."

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p4

    iget v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p4

    iput v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    .line 797
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 786
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 789
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_7
    const-string v9, "%s=%s, %s=%s,"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "location"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 790
    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "address"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 791
    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 789
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 801
    :cond_8
    const/16 v9, 0x46

    invoke-static {v9}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v4

    .line 803
    .local v4, "editedColumnsElement":Ljava/lang/String;
    const-string/jumbo v9, "update %s set %s %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s=%s"

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "cloud"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    const-string v12, "editedColumns"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "editedColumns"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v4, v10, v11

    const/4 v11, 0x5

    aput-object v4, v10, v11

    const/4 v11, 0x6

    aput-object v4, v10, v11

    const/4 v11, 0x7

    const-string v12, "_id"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/miui/gallery/data/LocationManager$CloudItem;->id:J

    .line 811
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 804
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 803
    invoke-static {v9}, Lcom/miui/gallery/util/GalleryUtils;->safeExec(Ljava/lang/String;)Z

    move-result v6

    .line 812
    if-nez v6, :cond_1

    .line 813
    const-string v9, "LocationManager"

    const-string v10, "Save location info and update edited column failed."

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    move-object/from16 v0, p4

    iget v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p4

    iput v9, v0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    goto/16 :goto_0
.end method

.method private static obtainArea(Landroid/location/Address;II)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Landroid/location/Address;
    .param p1, "level"    # I
    .param p2, "targetLevel"    # I

    .prologue
    .line 634
    if-gt p1, p2, :cond_0

    .line 635
    invoke-static {p0, p1}, Lcom/miui/gallery/data/LocationManager;->getArea(Landroid/location/Address;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/LocationManager;->obtainString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static obtainString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 641
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/miui/gallery/data/LocationManager;->obtainString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static obtainString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 645
    if-nez p0, :cond_0

    .end local p1    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defValue":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private parseCursor(Landroid/database/Cursor;)Lcom/miui/gallery/data/LocationManager$CloudItem;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 908
    new-instance v1, Lcom/miui/gallery/data/LocationManager$CloudItem;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/miui/gallery/data/LocationManager$CloudItem;-><init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V

    .line 909
    .local v1, "item":Lcom/miui/gallery/data/LocationManager$CloudItem;
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->id:J

    .line 910
    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->location:Ljava/lang/String;

    .line 911
    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->address:Ljava/lang/String;

    .line 912
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, "lat":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "latRef":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "lng":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, "lngRef":Ljava/lang/String;
    const/4 v7, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "extraGps":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 918
    invoke-static {v2, v3}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    iput v7, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->lat:F

    .line 919
    invoke-static {v4, v5}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    iput v7, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->lng:F

    .line 928
    :cond_0
    :goto_0
    return-object v1

    .line 921
    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/data/LocationManager;->parseGpsString(Ljava/lang/String;)Lcom/miui/gallery/data/LocationManager$ExtraGps;

    move-result-object v6

    .line 922
    .local v6, "result":Lcom/miui/gallery/data/LocationManager$ExtraGps;
    if-eqz v6, :cond_0

    .line 923
    iget v7, v6, Lcom/miui/gallery/data/LocationManager$ExtraGps;->lat:F

    iput v7, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->lat:F

    .line 924
    iget v7, v6, Lcom/miui/gallery/data/LocationManager$ExtraGps;->lng:F

    iput v7, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->lng:F

    .line 925
    iget v7, v6, Lcom/miui/gallery/data/LocationManager$ExtraGps;->delayTime:I

    iput v7, v1, Lcom/miui/gallery/data/LocationManager$CloudItem;->delayTime:I

    goto :goto_0
.end method

.method private static parseGpsString(Ljava/lang/String;)Lcom/miui/gallery/data/LocationManager$ExtraGps;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 686
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 707
    :cond_0
    :goto_0
    return-object v2

    .line 690
    :cond_1
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "array":[Ljava/lang/String;
    array-length v1, v0

    .line 692
    .local v1, "length":I
    if-eq v1, v5, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    move-object v2, v3

    .line 693
    goto :goto_0

    .line 696
    :cond_2
    new-instance v2, Lcom/miui/gallery/data/LocationManager$ExtraGps;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/LocationManager$ExtraGps;-><init>(Lcom/miui/gallery/data/LocationManager$1;)V

    .line 698
    .local v2, "result":Lcom/miui/gallery/data/LocationManager$ExtraGps;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/miui/gallery/data/LocationManager$ExtraGps;->lat:F

    .line 699
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v2, Lcom/miui/gallery/data/LocationManager$ExtraGps;->lng:F

    .line 700
    if-le v1, v5, :cond_0

    .line 701
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/miui/gallery/data/LocationManager$ExtraGps;->delayTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 707
    goto :goto_0
.end method

.method private static recordStatistics(Lcom/miui/gallery/data/LocationManager$Statistics;)V
    .locals 4
    .param p0, "stat"    # Lcom/miui/gallery/data/LocationManager$Statistics;

    .prologue
    .line 711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 712
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "count"

    iget v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v1, "error"

    iget v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->error:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v1, "costAvg"

    invoke-virtual {p0}, Lcom/miui/gallery/data/LocationManager$Statistics;->getAverageCost()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string/jumbo v1, "totalTime"

    invoke-virtual {p0}, Lcom/miui/gallery/data/LocationManager$Statistics;->getTotalTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v1, "cacheHitPercent"

    invoke-virtual {p0}, Lcom/miui/gallery/data/LocationManager$Statistics;->getCacheHitPercent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v1, "cacheAvgDistance"

    invoke-virtual {p0}, Lcom/miui/gallery/data/LocationManager$Statistics;->getAvgCacheDistance()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v1, "latLngInvalid"

    iget v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->latLngInvalid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v1, "addressNull"

    iget v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->addressNull:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v1, "saveFail"

    iget v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v1, "LocationManager"

    const-string v2, "loadLocations: %s"

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    const-string v1, "location_manager"

    const-string v2, "location_manager_load_stat"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 725
    return-void
.end method

.method public static segmentLocation(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 585
    if-nez p0, :cond_1

    move-object v0, v1

    .line 595
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    const-string v2, "/"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "segments":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    array-length v2, v0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 591
    const-string v2, "LocationManager"

    const-string/jumbo v3, "the length of location is not correct. %s"

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 592
    goto :goto_0
.end method


# virtual methods
.method public appendDefaultLocationValues(Landroid/content/ContentValues;)V
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 281
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 282
    .local v0, "context":Landroid/content/Context;
    const-string v11, "exifGPSLatitude"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "latitude":Ljava/lang/String;
    const-string v11, "exifGPSLatitudeRef"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "latitudeRef":Ljava/lang/String;
    const-string v11, "exifGPSLongitude"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, "longitude":Ljava/lang/String;
    const-string v11, "exifGPSLongitudeRef"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "longitudeRef":Ljava/lang/String;
    const-string v11, "extraGPS"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "extraGps":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "lat":F
    const/4 v6, 0x0

    .line 289
    .local v6, "lng":F
    const/4 v2, 0x0

    .line 291
    .local v2, "hasLatLng":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 292
    const/4 v2, 0x1

    .line 293
    invoke-static {v4, v5}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    .line 294
    invoke-static {v8, v9}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    .line 304
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 305
    invoke-static {}, Lcom/miui/gallery/data/CitySearcher;->getInstance()Lcom/miui/gallery/data/CitySearcher;

    move-result-object v11

    new-instance v12, Lcom/miui/gallery/data/Coordinate;

    invoke-direct {v12, v3, v6}, Lcom/miui/gallery/data/Coordinate;-><init>(FF)V

    invoke-virtual {v11, v12}, Lcom/miui/gallery/data/CitySearcher;->decode(Lcom/miui/gallery/data/Coordinate;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "location":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/gallery/data/LocationUtil;->isLocationValidate(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 307
    const-string v11, "location"

    invoke-static {v0, v7}, Lcom/miui/gallery/data/LocationUtil;->getCityNameFromRes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v7    # "location":Ljava/lang/String;
    :cond_1
    return-void

    .line 295
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 296
    invoke-static {v1}, Lcom/miui/gallery/data/LocationManager;->parseGpsString(Ljava/lang/String;)Lcom/miui/gallery/data/LocationManager$ExtraGps;

    move-result-object v10

    .line 297
    .local v10, "result":Lcom/miui/gallery/data/LocationManager$ExtraGps;
    if-eqz v10, :cond_0

    .line 298
    const/4 v2, 0x1

    .line 299
    iget v3, v10, Lcom/miui/gallery/data/LocationManager$ExtraGps;->lat:F

    .line 300
    iget v6, v10, Lcom/miui/gallery/data/LocationManager$ExtraGps;->lng:F

    goto :goto_0
.end method

.method public appendExtraGpsInfo(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 370
    iget-object v3, p0, Lcom/miui/gallery/data/LocationManager;->mMediaGpsInfoStage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    .local v0, "extraGps":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string v3, "exifGPSLatitude"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "latitude":Ljava/lang/String;
    const-string v3, "exifGPSLongitude"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "longitude":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    :cond_2
    const-string v3, "extraGPS"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public generateTitleLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 392
    .end local p1    # "location":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 390
    .restart local p1    # "location":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public generateTitleLine(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 415
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 416
    const/4 v9, 0x0

    .line 486
    :cond_0
    :goto_0
    return-object v9

    .line 420
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 421
    .local v3, "count":I
    const/4 v4, 0x0

    .line 422
    .local v4, "hasMultiParts":Z
    const/4 v0, 0x0

    .line 423
    .local v0, "areaLength":I
    new-array v2, v3, [[Ljava/lang/String;

    .line 424
    .local v2, "areas":[[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    move v1, v0

    .end local v0    # "areaLength":I
    .local v1, "areaLength":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 425
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/miui/gallery/data/LocationManager;->segmentLocation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 426
    .local v10, "segments":[Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 427
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "areaLength":I
    .restart local v0    # "areaLength":I
    aput-object v10, v2, v1

    .line 428
    array-length v11, v10

    if-le v11, v12, :cond_2

    move v11, v12

    :goto_2
    or-int/2addr v4, v11

    .line 424
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0    # "areaLength":I
    .restart local v1    # "areaLength":I
    goto :goto_1

    .end local v1    # "areaLength":I
    .restart local v0    # "areaLength":I
    :cond_2
    move v11, v13

    .line 428
    goto :goto_2

    .line 433
    .end local v0    # "areaLength":I
    .end local v10    # "segments":[Ljava/lang/String;
    .restart local v1    # "areaLength":I
    :cond_3
    if-nez v4, :cond_6

    .line 434
    const-string v9, ""

    .line 435
    .local v9, "result":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_0

    .line 436
    aget-object v11, v2, v5

    aget-object v7, v11, v13

    .line 439
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/gallery/data/LocationUtil;->isLocationValidate(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 440
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 441
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/gallery/data/LocationManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 443
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 435
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 450
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "result":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v9, "result":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .local v6, "mNamesOfArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, ""

    .line 453
    .local v8, "preName":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_5
    const/4 v11, 0x6

    if-ge v5, v11, :cond_d

    .line 454
    invoke-static {v2, v1, v5, v6}, Lcom/miui/gallery/data/LocationManager;->getNamesOfArea([[Ljava/lang/String;IILjava/util/List;)V

    .line 457
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v12, :cond_8

    .line 458
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 459
    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_7
    invoke-direct {p0, v6}, Lcom/miui/gallery/data/LocationManager;->formatAreaNames(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 464
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v12, :cond_9

    .line 465
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 468
    .restart local v7    # "name":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 453
    .end local v7    # "name":Ljava/lang/String;
    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 471
    .restart local v7    # "name":Ljava/lang/String;
    :cond_a
    move-object v8, v7

    .line 474
    if-nez v5, :cond_b

    const-string/jumbo v11, "\u4e2d\u56fd"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 478
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_c

    .line 479
    iget-object v11, p0, Lcom/miui/gallery/data/LocationManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_c
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 486
    .end local v7    # "name":Ljava/lang/String;
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .end local v6    # "mNamesOfArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "preName":Ljava/lang/String;
    .end local v9    # "result":Ljava/lang/StringBuilder;
    .restart local v10    # "segments":[Ljava/lang/String;
    :cond_e
    move v0, v1

    .end local v1    # "areaLength":I
    .restart local v0    # "areaLength":I
    goto/16 :goto_3
.end method

.method public loadAllLocation()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v12

    .line 135
    .local v12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "location_manager"

    const-string v2, "location_manager_geocoder_error"

    invoke-static {v1, v2, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    const-string v1, "LocationManager"

    const-string v2, "loadAllLocation, geocoder is not present."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v12    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v1, "LocationManager"

    const-string v2, "loadAllLocation starts"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/miui/gallery/data/LocationManager;->checkVersionAndUpgrade()V

    .line 146
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    const-string v1, "LocationManager"

    const-string v2, "CTA is not available"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/data/LocationManager;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    const-string v1, "LocationManager"

    const-string v2, "Network is not available"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getLocationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;->getDailyUpdateLimit()I

    move-result v10

    .line 158
    .local v10, "limitNum":I
    if-gtz v10, :cond_3

    .line 159
    const-string v1, "LocationManager"

    const-string v2, "CloudControl limit is 0"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    .line 165
    invoke-static {v1, v10}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/data/LocationManager;->LOCATION_INFO_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/miui/gallery/data/LocationManager;->LOCATION_INFO_SELECTION:Ljava/lang/String;

    const-string v5, "mixedDateTime DESC"

    new-instance v6, Lcom/miui/gallery/data/LocationManager$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/data/LocationManager$1;-><init>(Lcom/miui/gallery/data/LocationManager;)V

    .line 164
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 183
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationManager$CloudItem;>;"
    const/4 v7, 0x0

    .line 184
    .local v7, "count":I
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    const-string v1, "LocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAllLocation size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v13, Lcom/miui/gallery/data/LocationManager$Statistics;

    invoke-direct {v13, p0, v4}, Lcom/miui/gallery/data/LocationManager$Statistics;-><init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V

    .line 187
    .local v13, "stat":Lcom/miui/gallery/data/LocationManager$Statistics;
    invoke-virtual {v13}, Lcom/miui/gallery/data/LocationManager$Statistics;->start()V

    .line 188
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v13, Lcom/miui/gallery/data/LocationManager$Statistics;->count:I

    .line 190
    :try_start_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/data/LocationManager$CloudItem;

    .line 191
    .local v9, "item":Lcom/miui/gallery/data/LocationManager$CloudItem;
    invoke-direct {p0}, Lcom/miui/gallery/data/LocationManager;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 192
    const-string v1, "LocationManager"

    const-string v2, "Network is not available"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v9    # "item":Lcom/miui/gallery/data/LocationManager$CloudItem;
    :cond_4
    :goto_2
    if-gtz v7, :cond_5

    iget v1, v13, Lcom/miui/gallery/data/LocationManager$Statistics;->error:I

    if-lez v1, :cond_6

    .line 205
    :cond_5
    invoke-static {v13}, Lcom/miui/gallery/data/LocationManager;->recordStatistics(Lcom/miui/gallery/data/LocationManager$Statistics;)V

    .line 206
    if-lez v7, :cond_6

    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->isSyncable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 211
    .end local v13    # "stat":Lcom/miui/gallery/data/LocationManager$Statistics;
    :cond_6
    const-string v1, "LocationManager"

    const-string v2, "loadAllLocation success %s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    .restart local v9    # "item":Lcom/miui/gallery/data/LocationManager$CloudItem;
    .restart local v13    # "stat":Lcom/miui/gallery/data/LocationManager$Statistics;
    :cond_7
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v0, v9, v2, v13}, Lcom/miui/gallery/data/LocationManager;->loadLocationForItem(Landroid/content/Context;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 198
    :cond_8
    iget v2, v13, Lcom/miui/gallery/data/LocationManager$Statistics;->error:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/miui/gallery/data/LocationManager$Statistics;->error:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 201
    .end local v9    # "item":Lcom/miui/gallery/data/LocationManager$CloudItem;
    :catch_0
    move-exception v8

    .line 202
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "LocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAllLocation occur exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public loadLocation(J)V
    .locals 11
    .param p1, "cloudId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 233
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const-string v1, "LocationManager"

    const-string v2, "loadLocation, geocoder is not present."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    const-string v1, "LocationManager"

    const-string v2, "CTA is not available"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    const-string v1, "LocationManager"

    const-string v2, "Network is not available"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/data/LocationManager;->LOCATION_INFO_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/data/LocationManager;->LOCATION_INFO_SELECTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 253
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    new-instance v6, Lcom/miui/gallery/data/LocationManager$3;

    invoke-direct {v6, p0}, Lcom/miui/gallery/data/LocationManager$3;-><init>(Lcom/miui/gallery/data/LocationManager;)V

    .line 249
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/data/LocationManager$CloudItem;

    .line 265
    .local v8, "item":Lcom/miui/gallery/data/LocationManager$CloudItem;
    const/4 v9, 0x0

    .line 266
    .local v9, "result":Z
    if-eqz v8, :cond_3

    .line 268
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v8, v1, v2}, Lcom/miui/gallery/data/LocationManager;->loadLocationForItem(Landroid/content/Context;Lcom/miui/gallery/data/LocationManager$CloudItem;ZLcom/miui/gallery/data/LocationManager$Statistics;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 273
    :cond_3
    :goto_1
    const-string v1, "LocationManager"

    const-string v2, "loadLocation success %s"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :catch_0
    move-exception v7

    .line 270
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "LocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocation occur exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public loadLocationAsync(J)V
    .locals 3
    .param p1, "cloudId"    # J

    .prologue
    .line 219
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getNetworkPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/data/LocationManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/data/LocationManager$2;-><init>(Lcom/miui/gallery/data/LocationManager;J)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 226
    return-void
.end method

.method public recordMediaLocation(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 318
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    if-nez p2, :cond_2

    .line 319
    :cond_0
    const-string v14, "LocationManager"

    const-string v15, "recordMediaLocation path or intent null"

    invoke-static {v14, v15}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    const-string v14, "extra_cache_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    .line 325
    .local v8, "cacheLocation":Landroid/location/Location;
    const-string v14, "extra_location_option"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 327
    const-string v14, "extra_cache_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    .line 328
    .local v10, "noLocation":Z
    const-string v14, "extra_location_option"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 330
    .local v11, "option":Z
    if-eqz v10, :cond_7

    if-eqz v11, :cond_6

    if-nez v8, :cond_5

    const/4 v13, 0x3

    .line 331
    .local v13, "result":I
    :goto_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v12, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "status"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v14, "location_manager"

    const-string v15, "location_manager_gps_status"

    invoke-static {v14, v15, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 336
    const-string v15, "LocationManager"

    const-string v16, "record location| no location: %s, cache Location not null: %s, option: %s, result: %s"

    const/4 v14, 0x4

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v14, 0x0

    .line 337
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v18, 0x1

    if-eqz v8, :cond_8

    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v17, v18

    const/4 v14, 0x2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v17, v14

    const/4 v14, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    .line 336
    invoke-static/range {v15 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    .end local v10    # "noLocation":Z
    .end local v11    # "option":Z
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "result":I
    :cond_3
    if-eqz v8, :cond_1

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    invoke-virtual {v8}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide v16, 0xdf8475800L

    div-long v6, v14, v16

    .line 346
    .local v6, "delay":J
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 347
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "delay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v14, "location_manager"

    const-string v15, "location_manager_gps_delay_min"

    invoke-static {v14, v15, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 352
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-ltz v14, :cond_4

    const-wide/16 v14, 0x3c

    cmp-long v14, v6, v14

    if-lez v14, :cond_9

    .line 353
    :cond_4
    const-string v14, "LocationManager"

    const-string v15, "record location out of date %s min"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 330
    .end local v6    # "delay":J
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "noLocation":Z
    .restart local v11    # "option":Z
    :cond_5
    const/4 v13, 0x2

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 337
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "result":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 356
    .end local v10    # "noLocation":Z
    .end local v11    # "option":Z
    .end local v13    # "result":I
    .restart local v6    # "delay":J
    :cond_9
    const-string v14, "LocationManager"

    const-string v15, "record location| delay %s min"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 359
    .local v2, "lat":D
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 360
    .local v4, "lng":D
    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/data/LocationManager;->formatExtraGpsString(DDJ)Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, "extraGps":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/data/LocationManager;->mMediaGpsInfoStage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
