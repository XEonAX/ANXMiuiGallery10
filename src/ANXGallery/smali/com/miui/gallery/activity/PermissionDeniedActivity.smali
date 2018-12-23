.class public Lcom/miui/gallery/activity/PermissionDeniedActivity;
.super Landroid/app/Activity;
.source "PermissionDeniedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mInfoDialog:Landroid/app/AlertDialog;

.field private mScreenReceiver:Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

.field private mUnGrantedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/activity/PermissionDeniedActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/PermissionDeniedActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->isShowWhenLocked()Z

    move-result v0

    return v0
.end method

.method private isShowWhenLocked()Z
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showDialog()Landroid/app/AlertDialog;
    .locals 15

    .prologue
    const v4, 0x7f0e0230

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 114
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v14, v0, [Ljava/lang/String;

    .line 115
    .local v14, "permissionNames":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 118
    .local v13, "permissionName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v11, v0, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v12

    .line 119
    .local v12, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v12, v11}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 120
    .local v10, "label":Ljava/lang/CharSequence;
    if-eqz v10, :cond_0

    .line 121
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 126
    :cond_0
    invoke-virtual {p0, v4}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v13, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v9

    .line 115
    .end local v10    # "label":Ljava/lang/CharSequence;
    .end local v12    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v0, "PermissionDeniedActivity"

    const-string v2, "Get permission info failed, %s"

    invoke-static {v0, v2, v13}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-virtual {p0, v4}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v13, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v9

    goto :goto_1

    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v9

    throw v0

    .line 130
    .end local v13    # "permissionName":Ljava/lang/String;
    :cond_1
    const v0, 0x7f0e0231

    .line 131
    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "\n"

    invoke-static {v3, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0e0232

    .line 132
    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->isShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v4, 0x7f0e0233

    :goto_2
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/miui/gallery/activity/PermissionDeniedActivity$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity$1;-><init>(Lcom/miui/gallery/activity/PermissionDeniedActivity;)V

    new-instance v7, Lcom/miui/gallery/activity/PermissionDeniedActivity$2;

    invoke-direct {v7, p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity$2;-><init>(Lcom/miui/gallery/activity/PermissionDeniedActivity;)V

    move-object v0, p0

    .line 130
    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 133
    :cond_2
    const v4, 0x7f0e022f

    goto :goto_2
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "startFromLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "unGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 34
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "permissions"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 40
    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    iput-object v2, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 90
    iput-object v2, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

    .line 92
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 93
    invoke-virtual {p0, v1, v1}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->overridePendingTransition(II)V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0400d8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->setContentView(I)V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    const-string v0, "permission_denied"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    const-string v0, "permission_denied"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->isShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->finish()V

    .line 74
    :cond_2
    :goto_0
    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_4

    .line 67
    invoke-direct {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->showDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/activity/PermissionDeniedActivity;Lcom/miui/gallery/activity/PermissionDeniedActivity$1;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.SCREEN_OFF"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->finish()V

    .line 80
    return-void
.end method
