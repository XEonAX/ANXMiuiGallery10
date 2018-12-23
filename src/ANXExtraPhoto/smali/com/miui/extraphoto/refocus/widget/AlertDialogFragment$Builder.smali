.class public Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCancellable:Z

.field private mMessageId:I

.field private mNegativeId:I

.field private mPositiveId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;
    .locals 3

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "arguments":Landroid/os/Bundle;
    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mMessageId:I

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "AlertDialogFragment:message_resource"

    iget v2, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mMessageId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    :cond_0
    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mPositiveId:I

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "AlertDialogFragment:positive_resource"

    iget v2, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mPositiveId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    :cond_1
    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mNegativeId:I

    if-eqz v1, :cond_2

    .line 116
    const-string v1, "AlertDialogFragment:negative_resource"

    iget v2, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mNegativeId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    :cond_2
    new-instance v1, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    invoke-direct {v1}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;-><init>()V

    .line 119
    .local v1, "dialog":Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;
    iget-boolean v2, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mCancellable:Z

    invoke-virtual {v1, v2}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->setCancelable(Z)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object v1
.end method

.method public setCancellable(Z)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "cancellable"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mCancellable:Z

    .line 104
    return-object p0
.end method

.method public setMessage(I)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "msg"    # I

    .line 88
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mMessageId:I

    .line 89
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "negative"    # I

    .line 98
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mNegativeId:I

    .line 99
    return-object p0
.end method

.method public setPositiveButton(I)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "positive"    # I

    .line 93
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->mPositiveId:I

    .line 94
    return-object p0
.end method
