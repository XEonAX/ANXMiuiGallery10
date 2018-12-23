.class public Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;
.super Ljava/lang/Object;
.source "RefocusSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$DeviceSupportRefocus;,
        Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;,
        Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;
    }
.end annotation


# static fields
.field private static final DEVICE_SUPPORT_REFOCUS:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$DeviceSupportRefocus;


# instance fields
.field private mRefocusProcessThread:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$DeviceSupportRefocus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$DeviceSupportRefocus;-><init>(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$1;)V

    sput-object v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->DEVICE_SUPPORT_REFOCUS:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$DeviceSupportRefocus;

    return-void
.end method

.method public constructor <init>(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;Landroid/app/Activity;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->mRefocusProcessThread:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    .line 51
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->mRefocusProcessThread:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->setListener(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->isPhotoSupportRefocus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupportRefocus(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    sget-object v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->DEVICE_SUPPORT_REFOCUS:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$DeviceSupportRefocus;

    invoke-virtual {v0, p0}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$DeviceSupportRefocus;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isPhotoSupportRefocus(Ljava/lang/String;)Z
    .locals 6
    .param p0, "photoPath"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    const/4 v3, 0x0

    .line 198
    :cond_0
    :goto_0
    return v3

    .line 185
    :cond_1
    const/4 v3, 0x0

    .line 187
    .local v3, "support":Z
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 188
    .local v1, "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, p0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 189
    const v4, 0x8890

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "focusTag":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 191
    const/4 v3, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    .end local v2    # "focusTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendResultStatic(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "photo_extra"

    const-string v1, "refocus_save"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->mRefocusProcessThread:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->setListener(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;)V

    .line 90
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->mRefocusProcessThread:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    invoke-virtual {v0}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->quitSafely()Z

    .line 91
    return-void
.end method

.method public sendEnterStatic()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "photo_extra"

    const-string v1, "refocus_enter"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public sendExposureStatic()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "photo_extra"

    const-string v1, "refocus_exposure"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public sendInsert(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->mRefocusProcessThread:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->sendSave(Landroid/net/Uri;)V

    .line 60
    return-void
.end method

.method public sendRecognize(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->mRefocusProcessThread:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->sendRecognize(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public sendResultStatic(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 65
    const-string v3, "save_type"

    const-string v4, "NONE"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-direct {p0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->sendResultStatic(Ljava/util/Map;)V

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v3, "save_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "type":Ljava/lang/String;
    const-string v3, "save_explain"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "explain":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "save_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-direct {p0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->sendResultStatic(Ljava/util/Map;)V

    goto :goto_0
.end method
