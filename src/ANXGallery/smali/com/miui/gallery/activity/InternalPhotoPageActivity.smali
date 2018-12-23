.class public Lcom/miui/gallery/activity/InternalPhotoPageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "InternalPhotoPageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private repackageExtras()V
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 44
    const-string v3, "photo_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 45
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 46
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 104
    invoke-virtual {p0, v0, v0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->overridePendingTransition(II)V

    .line 105
    return-void
.end method

.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x1020002

    return v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PhotoPageFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 70
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActivityReenter(ILandroid/content/Intent;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 79
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PhotoPageFragment"

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 82
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    .end local v0    # "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 117
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PhotoPageFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 119
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    .end local v0    # "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    if-eqz p1, :cond_0

    .line 25
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/PhotoPageDataCache;->restoreInstance(Landroid/os/Bundle;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->repackageExtras()V

    .line 29
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 30
    const-string v1, "InternalPhotoPageActivity"

    const-string/jumbo v2, "uri shouldn\'t be null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->finish()V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/miui/gallery/ui/PhotoPageFragment;

    move-result-object v1

    const-string v2, "PhotoPageFragment"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    .line 35
    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->addRef()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onDestroy()V

    .line 110
    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->removeRef()V

    .line 111
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->clear()V

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 92
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 98
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 99
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageDataCache;->saveInstance(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method
