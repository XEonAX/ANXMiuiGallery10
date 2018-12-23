.class public Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;,
        Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;
    }
.end annotation


# static fields
.field private static final ARGS_MESSAGE_RESOURCE:Ljava/lang/String; = "AlertDialogFragment:message_resource"

.field private static final ARGS_NEGATIVE_RESOURCE:Ljava/lang/String; = "AlertDialogFragment:negative_resource"

.field private static final ARGS_POSITIVE_RESOURCE:Ljava/lang/String; = "AlertDialogFragment:positive_resource"

.field private static final TAG:Ljava/lang/String; = "AlertDialogFragment"


# instance fields
.field private mCallbacks:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;-><init>(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    .line 10
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mCallbacks:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public dismissSafely()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 142
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->dismissAllowingStateLoss()V

    .line 145
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 40
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 41
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mCallbacks:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mCallbacks:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    invoke-interface {v0, p0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;->onCancel(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 23
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "AlertDialogFragment:message_resource"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 24
    .local v2, "res":I
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 27
    :cond_0
    const-string v3, "AlertDialogFragment:negative_resource"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    :cond_1
    const-string v3, "AlertDialogFragment:positive_resource"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 48
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 49
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mCallbacks:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mCallbacks:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    invoke-interface {v0, p0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;->onDismiss(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final setCallbacks(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    .line 55
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->mCallbacks:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    .line 56
    return-void
.end method

.method public showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    :goto_0
    return-void
.end method
