.class public Lcom/miui/gallery/util/PermissionCheckHelper;
.super Ljava/lang/Object;
.source "PermissionCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;
    }
.end annotation


# instance fields
.field private mActivity:Lmiui/app/Activity;

.field private mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

.field private mIsShowWhenLocked:Z


# direct methods
.method public constructor <init>(Lmiui/app/Activity;ZLcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;)V
    .locals 2
    .param p1, "activity"    # Lmiui/app/Activity;
    .param p2, "isShowWhenLocked"    # Z
    .param p3, "callback"    # Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PermissionCheckHelper: activity or callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    .line 32
    iput-boolean p2, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mIsShowWhenLocked:Z

    .line 33
    iput-object p3, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/PermissionCheckHelper;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PermissionCheckHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/PermissionCheckHelper;->isFatalPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/PermissionCheckHelper;)Lmiui/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PermissionCheckHelper;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/PermissionCheckHelper;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/PermissionCheckHelper;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/util/PermissionCheckHelper;->internalCheckPermissions([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private checkCtaPrivacyPermissions([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "runtimePermissions"    # [Ljava/lang/String;
    .param p2, "needCheckCtaPermissions"    # [Ljava/lang/String;

    .prologue
    .line 97
    if-nez p2, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 98
    const/4 v6, 0x1

    .line 141
    :cond_0
    :goto_0
    return v6

    .line 101
    :cond_1
    const/4 v6, 0x1

    .line 102
    .local v6, "allAllowed":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, p2

    if-ge v9, v0, :cond_0

    .line 103
    aget-object v4, p2, v9

    .line 104
    .local v4, "permission":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/util/PermissionUtils$CtaPrivacyPermissions;->isPrivacyAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    const/4 v6, 0x0

    .line 106
    move v3, v9

    .line 108
    .local v3, "index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cta_privacy_permission_dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "dialogTag":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    .line 110
    .local v7, "dialog":Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;
    if-nez v7, :cond_2

    .line 111
    new-instance v7, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    .end local v7    # "dialog":Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;
    invoke-direct {v7}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;-><init>()V

    .line 113
    .restart local v7    # "dialog":Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;
    :cond_2
    invoke-virtual {v7, v4}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->setPermissionToRequest(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/miui/gallery/util/PermissionCheckHelper$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/PermissionCheckHelper$1;-><init>(Lcom/miui/gallery/util/PermissionCheckHelper;[Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->setOnRequestResultListener(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;)V

    .line 135
    invoke-virtual {v7}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v3    # "index":I
    .end local v7    # "dialog":Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;
    .end local v8    # "dialogTag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private internalCheckPermissions([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "needRequestPermissions"    # [Ljava/lang/String;
    .param p2, "needCheckCTAPermissions"    # [Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_2

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v1}, Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;->onCheckPermissionSucceed()V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/util/PermissionCheckHelper;->checkCtaPrivacyPermissions([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    invoke-static {v1, p1}, Lcom/miui/gallery/util/PermissionUtils;->getUngrantedPermissions(Lmiui/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "ungrantedPermissions":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    .line 80
    iget-boolean v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mIsShowWhenLocked:Z

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->startActivity(Lmiui/app/Activity;Ljava/util/List;Z)V

    .line 82
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    invoke-virtual {v1}, Lmiui/app/Activity;->finish()V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    const/16 v2, 0x2e

    invoke-static {v1, v0, v2}, Lcom/miui/gallery/util/PermissionUtils;->requestPermissions(Lmiui/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v1}, Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;->onCheckPermissionSucceed()V

    goto :goto_0
.end method

.method private isFatalPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v3, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    if-nez v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v3}, Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;->getFatalPermissions()[Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "fatalPermissions":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 152
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 153
    .local v0, "fatalPermission":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    const/4 v2, 0x1

    goto :goto_0

    .line 152
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public checkPermission()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v1}, Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "permissions":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v1}, Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;->onCheckPermissionSucceed()V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_1
    array-length v1, v0

    .line 46
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v0

    .line 47
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 45
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/util/PermissionCheckHelper;->internalCheckPermissions([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 51
    const/16 v3, 0x2e

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_2

    .line 52
    const/4 v1, 0x1

    .line 53
    .local v1, "succeed":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v2, "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 55
    aget v3, p3, v0

    if-eqz v3, :cond_0

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/miui/gallery/util/PermissionCheckHelper;->isFatalPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v1, 0x0

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    if-eqz v1, :cond_3

    .line 61
    iget-object v3, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v3}, Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;->onCheckPermissionSucceed()V

    .line 67
    .end local v0    # "i":I
    .end local v1    # "succeed":Z
    .end local v2    # "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 63
    .restart local v0    # "i":I
    .restart local v1    # "succeed":Z
    .restart local v2    # "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    iget-boolean v4, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mIsShowWhenLocked:Z

    invoke-static {v3, v2, v4}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->startActivity(Lmiui/app/Activity;Ljava/util/List;Z)V

    .line 64
    iget-object v3, p0, Lcom/miui/gallery/util/PermissionCheckHelper;->mActivity:Lmiui/app/Activity;

    invoke-virtual {v3}, Lmiui/app/Activity;->finish()V

    goto :goto_1
.end method
