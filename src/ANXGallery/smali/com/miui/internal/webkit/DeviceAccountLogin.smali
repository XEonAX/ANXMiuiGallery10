.class public Lcom/miui/internal/webkit/DeviceAccountLogin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceAccountLogin"


# instance fields
.field protected mAccountManager:Landroid/accounts/AccountManager;

.field protected mActivity:Landroid/app/Activity;

.field private pu:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    .line 29
    iget-object p1, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    .line 30
    new-instance p1, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;

    invoke-direct {p1, p0}, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;-><init>(Lcom/miui/internal/webkit/DeviceAccountLogin;)V

    iput-object p1, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->pu:Landroid/accounts/AccountManagerCallback;

    .line 31
    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 34
    iget-object v0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 36
    array-length v0, p1

    if-nez v0, :cond_d

    .line 37
    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginCancel()V

    .line 38
    return-void

    .line 42
    :cond_d
    const/4 v0, 0x0

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 44
    aget-object v0, p1, v2

    .line 54
    :cond_17
    move-object v4, v0

    goto :goto_2d

    .line 46
    :cond_19
    array-length v1, p1

    :goto_1a
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 47
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 48
    nop

    .line 49
    nop

    .line 54
    move-object v4, v3

    goto :goto_2d

    .line 46
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 54
    :goto_2d
    if-eqz v4, :cond_4e

    .line 55
    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginStart()V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "weblogin:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    iget-object v3, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->pu:Landroid/accounts/AccountManagerCallback;

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 62
    goto :goto_51

    .line 63
    :cond_4e
    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginCancel()V

    .line 65
    :goto_51
    return-void
.end method

.method public onLoginCancel()V
    .registers 1

    .line 71
    return-void
.end method

.method public onLoginFail()V
    .registers 1

    .line 77
    return-void
.end method

.method public onLoginPageFinished()V
    .registers 1

    .line 80
    return-void
.end method

.method public onLoginStart()V
    .registers 1

    .line 68
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .registers 2

    .line 74
    return-void
.end method
