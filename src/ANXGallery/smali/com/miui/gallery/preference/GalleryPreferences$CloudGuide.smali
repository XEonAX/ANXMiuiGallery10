.class public final Lcom/miui/gallery/preference/GalleryPreferences$CloudGuide;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudGuide"
.end annotation


# direct methods
.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 519
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudGuide;->remove()V

    return-void
.end method

.method private static remove()V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "slim_notification_times"

    .line 525
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "slim_notification_clicked"

    .line 526
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_guide_topbar_last_auto_show_time"

    .line 527
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_guide_topbar_auto_show_times"

    .line 528
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_guide_topbar_clicked"

    .line 529
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_guide_topbar_last_text_id"

    .line 530
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ever_notify_slim_result"

    .line 531
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    return-void
.end method

.method public static setCloudGuideTopbarClicked()V
    .locals 2

    .prologue
    .line 576
    const-string v0, "cloud_guide_topbar_clicked"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    return-void
.end method
