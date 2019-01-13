.class public Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;
.super Lcom/miui/internal/webkit/DeviceAccountLogin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;
    }
.end annotation


# static fields
.field private static final pn:Ljava/lang/String; = "dialog"

.field private static final po:I = 0x0

.field private static final pp:I = 0x1

.field private static final pq:I = 0x1f4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private pr:Lcom/miui/internal/hybrid/provider/AbsWebView;

.field private ps:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/internal/webkit/DeviceAccountLogin;-><init>(Landroid/app/Activity;)V

    .line 37
    iput-object p2, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pr:Lcom/miui/internal/hybrid/provider/AbsWebView;

    .line 38
    new-instance p1, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;-><init>(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    iput-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->aY()V

    return-void
.end method

.method private aY()V
    .registers 4

    .line 52
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->aZ()V

    .line 53
    new-instance v0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-direct {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ps:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 55
    :try_start_a
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ps:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    iget-object v1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_17} :catch_18

    .line 58
    goto :goto_19

    .line 56
    :catch_18
    move-exception v0

    .line 59
    :goto_19
    return-void
.end method

.method private aZ()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ps:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ps:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ps:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 66
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ps:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 67
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->aZ()V

    return-void
.end method

.method static synthetic c(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pr:Lcom/miui/internal/hybrid/provider/AbsWebView;

    return-object p0
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->aZ()V

    .line 89
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pr:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public onLoginFail()V
    .registers 4

    .line 81
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->aZ()V

    .line 82
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pr:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/miui/internal/R$string;->web_sso_login_fail:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    return-void
.end method

.method public onLoginPageFinished()V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    return-void
.end method

.method public onLoginStart()V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pr:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    .line 77
    return-void
.end method
