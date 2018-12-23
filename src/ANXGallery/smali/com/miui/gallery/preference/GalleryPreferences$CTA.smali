.class public Lcom/miui/gallery/preference/GalleryPreferences$CTA;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTA"
.end annotation


# static fields
.field private static sAllowUseOnOfflineGlobal:Z

.field private static sCanConnectToNetworkTemp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    sput-boolean v0, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 288
    sput-boolean v0, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    return-void
.end method

.method public static allowUseOnOfflineGlobal()Z
    .locals 1

    .prologue
    .line 339
    sget-boolean v0, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    return v0
.end method

.method public static canConnectNetwork()Z
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sCanConnectNetworkByImpunity()Z

    move-result v0

    .line 320
    .local v0, "canConnectNetwork":Z
    const-string v1, "can_connect_network"

    invoke-static {v1, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 321
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIsCtaPrivacyPermissionsAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cta_privacy_permissions_allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onCreateOrDestroyHomePage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    sget-boolean v0, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    if-eqz v0, :cond_0

    .line 346
    sput-boolean v1, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    .line 348
    :cond_0
    sget-boolean v0, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    if-eqz v0, :cond_1

    .line 349
    sput-boolean v1, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 351
    :cond_1
    return-void
.end method

.method public static remindConnectNetworkEveryTime()Z
    .locals 2

    .prologue
    .line 299
    const-string v0, "impunity_declaration_every_time"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setCanConnectNetwork(Z)V
    .locals 3
    .param p0, "remindNever"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    if-eqz p0, :cond_0

    .line 306
    sput-boolean v1, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 307
    const-string v0, "can_connect_network"

    invoke-static {v0, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    const-string v0, "impunity_declaration_every_time"

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    :goto_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.action.CTA_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 316
    return-void

    .line 311
    :cond_0
    sput-boolean v2, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 312
    const-string v0, "can_connect_network"

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setIsCtaPrivacyPermissionsAllowed(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "isAllowed"    # Z

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cta_privacy_permissions_allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    return-void
.end method

.method public static setRemindConnectNetworkEveryTime(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 291
    const-string v0, "impunity_declaration_every_time"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    if-eqz p0, :cond_0

    .line 294
    const-string v0, "can_connect_network"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    :cond_0
    return-void
.end method

.method public static setToAllowUseOnOfflineGlobal(Z)V
    .locals 0
    .param p0, "allow"    # Z

    .prologue
    .line 335
    sput-boolean p0, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    .line 336
    return-void
.end method
