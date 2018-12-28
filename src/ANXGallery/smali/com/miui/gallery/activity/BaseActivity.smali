.class public Lcom/miui/gallery/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/activity/BaseActivity$ScreenBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;

.field private mCtaAgreedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCtaNoticeDialog:Lcom/miui/gallery/ui/CtaNoticeFragment;

.field private mIsResumed:Z

.field private mIsStartingEnterTransition:Z

.field private mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/activity/BaseActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 211
    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/activity/BaseActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/BaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    return p1
.end method


# virtual methods
.method protected allowUseOnOffline()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getFatalPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/miui/gallery/activity/BaseActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected initActionBar()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    .line 115
    return-void
.end method

.method protected isShowWhenLocked()Z
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestPermissionResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public onCheckPermissionSucceed()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->allowUseOnOfflineGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->allowUseOnOffline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/activity/BaseActivity;->onCtaChecked(Z)V

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 149
    :cond_3
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/miui/gallery/activity/BaseActivity;->onCtaChecked(Z)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mCtaNoticeDialog:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lcom/miui/gallery/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/activity/BaseActivity$1;-><init>(Lcom/miui/gallery/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mCtaAgreedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mCtaNoticeDialog:Lcom/miui/gallery/ui/CtaNoticeFragment;

    new-instance v1, Lcom/miui/gallery/activity/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/BaseActivity$2;-><init>(Lcom/miui/gallery/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CtaNoticeFragment;->setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mCtaNoticeDialog:Lcom/miui/gallery/ui/CtaNoticeFragment;

    iget-object v1, p0, Lcom/miui/gallery/activity/BaseActivity;->mCtaAgreedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CtaNoticeFragment;->setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mCtaNoticeDialog:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CtaNoticeFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/CtaNoticeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->hasCustomContentView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/BaseActivity;->setContentView(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->initActionBar()V

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->allowUseOnOffline()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->newInstance(Z)Lcom/miui/gallery/ui/CtaNoticeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mCtaNoticeDialog:Lcom/miui/gallery/ui/CtaNoticeFragment;

    .line 54
    new-instance v0, Lcom/miui/gallery/util/PermissionCheckHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->isShowWhenLocked()Z

    move-result v3

    invoke-direct {v0, p0, v3, p0}, Lcom/miui/gallery/util/PermissionCheckHelper;-><init>(Landroid/app/Activity;ZLcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/PermissionCheckHelper;->checkPermission()V

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->supportShowOnScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->isShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x80000

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 59
    new-instance v0, Lcom/miui/gallery/activity/BaseActivity$ScreenBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/activity/BaseActivity$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/activity/BaseActivity;Lcom/miui/gallery/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.intent.action.SCREEN_OFF"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 62
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 53
    goto :goto_0
.end method

.method protected onCtaChecked(Z)V
    .locals 0
    .param p1, "agreed"    # Z

    .prologue
    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 111
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 230
    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->supportEnterSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-static {p0}, Lcom/miui/gallery/util/IntentUtil;->enterGallerySetting(Landroid/content/Context;)V

    .line 233
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsResumed:Z

    .line 102
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/util/PermissionCheckHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsResumed:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 96
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/miui/gallery/util/TransitionPatching;->onActivityStopWhenEnterStarting(Landroid/app/Activity;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 75
    return-void
.end method

.method protected final resumed()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsResumed:Z

    return v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "tar"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "addToBackStack"    # Z
    .param p4, "add"    # Z

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentContainerId()I

    move-result v1

    if-gtz v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalidate container id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "BaseActivity"

    const-string v2, "already has tag of fragment %s"

    invoke-static {v1, v2, p2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 192
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_2

    .line 193
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 195
    :cond_2
    if-eqz p4, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentContainerId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 200
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentContainerId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 247
    new-instance v0, Lcom/miui/gallery/activity/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/activity/BaseActivity$3;-><init>(Lcom/miui/gallery/activity/BaseActivity;)V

    invoke-static {p0, v0}, Lcom/miui/gallery/util/TransitionPatching;->setOnEnterStartedListener(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method protected supportEnterSetting()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method protected supportShowOnScreenLocked()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method
