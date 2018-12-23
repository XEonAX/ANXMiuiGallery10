.class public abstract Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "CtaPermissionRequestBaseDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMessage()Landroid/text/SpannableStringBuilder;
.end method

.method protected abstract getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method protected abstract getNegativeText()Ljava/lang/String;
.end method

.method protected abstract getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method protected abstract getPositiveText()Ljava/lang/String;
.end method

.method protected abstract getTitle()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->setCancelable(Z)V

    .line 21
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getPositiveText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getNegativeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 31
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 32
    .local v1, "dialog":Lmiui/app/AlertDialog;
    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStart()V

    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/util/CtaPermissionRequestBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 51
    .local v0, "messageText":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 52
    return-void
.end method
