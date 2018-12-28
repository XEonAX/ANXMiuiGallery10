.class public Lcom/miui/gallery/activity/CloudGuideAutoBackupActivity;
.super Landroid/app/Activity;
.source "CloudGuideAutoBackupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/CloudGuideAutoBackupActivity;->setContentView(I)V

    .line 16
    return-void
.end method
