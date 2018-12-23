.class public Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "InputFaceNameActivity.java"


# instance fields
.field mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFatalPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StringUtils;->mergeStringArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->onBackPressed()V

    .line 24
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 25
    return-void
.end method

.method public onCheckPermissionSucceed()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->updateNameList()V

    .line 43
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f040095

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12018b

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .line 19
    return-void
.end method
