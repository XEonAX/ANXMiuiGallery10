.class public Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;
.super Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;
.source "CtaPrivacyPermissionRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;
    }
.end annotation


# instance fields
.field private mOnRequestResultListener:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;

.field private mPermissionToRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->mPermissionToRequest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->mOnRequestResultListener:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;

    return-object v0
.end method


# virtual methods
.method protected getMessage()Landroid/text/SpannableStringBuilder;
    .locals 13

    .prologue
    const v12, 0x7f0e0230

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 33
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->mPermissionToRequest:Ljava/lang/String;

    .line 35
    .local v5, "permissionName":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->mPermissionToRequest:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 36
    .local v4, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 37
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 43
    :cond_0
    invoke-virtual {p0, v12}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v4    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    const v8, 0x7f0e04e4

    invoke-virtual {p0, v8}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "userAgreement":Ljava/lang/String;
    const v8, 0x7f0e04e5

    invoke-virtual {p0, v8}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "privacyPolicy":Ljava/lang/String;
    const v8, 0x7f0e03ad

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v11

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v2, v7, v6}, Lcom/miui/gallery/util/CtaUtils;->buildUserNotice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    return-object v8

    .line 40
    .end local v2    # "message":Ljava/lang/String;
    .end local v6    # "privacyPolicy":Ljava/lang/String;
    .end local v7    # "userAgreement":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v8, "CtaPrivacyPermissionRequestDialog"

    const-string v9, "Get permission info failed, %s"

    invoke-static {v8, v9, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-virtual {p0, v12}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 44
    goto :goto_0

    .line 43
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v12}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    throw v8
.end method

.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$2;-><init>(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)V

    return-object v0
.end method

.method protected getNegativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0e03ae

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$1;-><init>(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)V

    return-object v0
.end method

.method protected getPositiveText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0e03af

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f0e03b0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOnRequestResultListener(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->mOnRequestResultListener:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;

    .line 23
    return-void
.end method

.method public setPermissionToRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionToRequest"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->mPermissionToRequest:Ljava/lang/String;

    .line 19
    return-void
.end method
