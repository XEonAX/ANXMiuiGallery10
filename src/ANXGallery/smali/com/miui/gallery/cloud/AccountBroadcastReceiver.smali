.class public Lcom/miui/gallery/cloud/AccountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 21
    const-string v6, "AccountBroadcastReceiver"

    const-string v7, "onReceive broadcast"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "broadcastAction":Ljava/lang/String;
    const-string v6, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 24
    const-string v6, "extra_account"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 25
    .local v3, "preAccount":Landroid/accounts/Account;
    if-eqz v3, :cond_1

    .line 26
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getIntentProvider()Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;->getXiaomiAccountType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
    .end local v3    # "preAccount":Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v3    # "preAccount":Landroid/accounts/Account;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->resetAccountCache()V

    .line 34
    if-eqz v3, :cond_0

    .line 38
    invoke-static {}, Lcom/miui/gallery/request/HostManager;->clearCookies()V

    .line 41
    const-string v6, "extra_update_type"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 47
    const/4 v5, 0x1

    .line 48
    .local v5, "wipeData":Z
    const-string v6, "extra_bundle"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 49
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    const-string v6, "extra_wipe_data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50
    const-string v6, "extra_wipe_data"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 53
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/miui/gallery/cloud/AccountChangeService;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v4, "serviceIntent":Landroid/content/Intent;
    const-string v6, "delete_account"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v6, "extra_account"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v6, "extra_wipe_data"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 58
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "preAccount":Landroid/accounts/Account;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .end local v5    # "wipeData":Z
    :cond_3
    const-string v6, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    const-string v6, "extra_account"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 60
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getIntentProvider()Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;->getXiaomiAccountType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    const-string v7, "extra_update_type"

    .line 62
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 65
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/miui/gallery/cloud/AccountChangeService;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v4    # "serviceIntent":Landroid/content/Intent;
    const-string v6, "add_account"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v6, "extra_account"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
