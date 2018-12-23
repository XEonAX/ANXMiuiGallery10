.class public Lcom/miui/gallery/preference/GalleryPreferences$FeatureGuidance;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureGuidance"
.end annotation


# direct methods
.method public static hasEverUsed(Ljava/lang/String;)Z
    .locals 4
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1343
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "new_feature_ever_used_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static markAsUsed(Ljava/lang/String;)V
    .locals 5
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "new_feature_ever_used_%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1350
    :cond_0
    return-void
.end method
