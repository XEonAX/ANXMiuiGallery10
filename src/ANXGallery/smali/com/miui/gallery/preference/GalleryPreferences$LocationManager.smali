.class public Lcom/miui/gallery/preference/GalleryPreferences$LocationManager;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationManager"
.end annotation


# direct methods
.method public static getLocationDetailsVersion(I)I
    .locals 1
    .param p0, "defaultValue"    # I

    .prologue
    .line 1116
    const-string v0, "address_version"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static remove()V
    .locals 1

    .prologue
    .line 1124
    const-string v0, "address_version"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method public static setLocationDetailsVersion(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1120
    const-string v0, "address_version"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 1121
    return-void
.end method
