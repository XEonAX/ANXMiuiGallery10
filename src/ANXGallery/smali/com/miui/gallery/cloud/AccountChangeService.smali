.class public Lcom/miui/gallery/cloud/AccountChangeService;
.super Landroid/app/IntentService;
.source "AccountChangeService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "AccountChangeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "action":Ljava/lang/String;
    const-string v5, "delete_account"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 24
    const-string v5, "extra_account"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 25
    .local v2, "preAccount":Landroid/accounts/Account;
    const-string v5, "extra_wipe_data"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 27
    .local v3, "wipeData":Z
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    .line 29
    .local v4, "wipeDataStrategy":I
    :cond_0
    invoke-static {v6, v2, v4, v6}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountInTask(Landroid/app/Activity;Landroid/accounts/Account;ILcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;)V

    .line 34
    .end local v2    # "preAccount":Landroid/accounts/Account;
    .end local v3    # "wipeData":Z
    .end local v4    # "wipeDataStrategy":I
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    const-string v5, "add_account"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    const-string v5, "extra_account"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 32
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/AddAccount;->onAddAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_0
.end method
