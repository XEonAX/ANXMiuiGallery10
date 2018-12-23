.class public Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoPrint"
.end annotation


# direct methods
.method public static getSilentInstallTimes()I
    .locals 2

    .prologue
    .line 1325
    const-string v0, "photo_print_silent_install_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static increaseSilentInstallTimes()V
    .locals 1

    .prologue
    .line 1321
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->getSilentInstallTimes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->setSilentInstallTimes(I)V

    .line 1322
    return-void
.end method

.method public static isPrintFirstClicked()Z
    .locals 2

    .prologue
    .line 1333
    const-string v0, "print_first_clicked"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setIsPrintFirstClicked(Z)V
    .locals 1
    .param p0, "isFirst"    # Z

    .prologue
    .line 1337
    const-string v0, "print_first_clicked"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1338
    return-void
.end method

.method public static setSilentInstallTimes(I)V
    .locals 1
    .param p0, "times"    # I

    .prologue
    .line 1329
    const-string v0, "photo_print_silent_install_times"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 1330
    return-void
.end method
