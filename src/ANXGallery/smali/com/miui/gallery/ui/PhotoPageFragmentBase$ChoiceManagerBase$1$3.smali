.class Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$3;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->onPrepareComplete(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$3;->this$2:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$3;->this$2:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    .line 807
    return-void
.end method
