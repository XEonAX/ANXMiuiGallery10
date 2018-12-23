.class public Lcom/miui/gallery/ui/CtaNoticeFragment;
.super Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;
.source "CtaNoticeFragment.java"


# instance fields
.field private mMustAgreeBeforeUse:Z

.field private mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment;->mMustAgreeBeforeUse:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/CtaNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CtaNoticeFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/CtaNoticeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CtaNoticeFragment;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment;->mMustAgreeBeforeUse:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/CtaNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CtaNoticeFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static newInstance(Z)Lcom/miui/gallery/ui/CtaNoticeFragment;
    .locals 3
    .param p0, "mustAgreeBeforeUse"    # Z

    .prologue
    .line 31
    new-instance v0, Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;-><init>()V

    .line 32
    .local v0, "cta":Lcom/miui/gallery/ui/CtaNoticeFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "key_must_agree"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CtaNoticeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method protected getMessage()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e04e7

    invoke-static {v0, v1}, Lcom/miui/gallery/util/CtaUtils;->buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/miui/gallery/ui/CtaNoticeFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/CtaNoticeFragment$2;-><init>(Lcom/miui/gallery/ui/CtaNoticeFragment;)V

    return-object v0
.end method

.method protected getNegativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/miui/gallery/ui/CtaNoticeFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/CtaNoticeFragment$1;-><init>(Lcom/miui/gallery/ui/CtaNoticeFragment;)V

    return-object v0
.end method

.method protected getPositiveText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0e04e3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0e04e8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, "params":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 26
    const-string v1, "key_must_agree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/CtaNoticeFragment;->mMustAgreeBeforeUse:Z

    .line 28
    :cond_0
    return-void
.end method

.method public setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/ui/CtaNoticeFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    return-void
.end method

.method public setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/ui/CtaNoticeFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    return-void
.end method
