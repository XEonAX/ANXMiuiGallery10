.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onMenuItemClick(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    .line 1456
    const v0, 0x7f0e036e

    .line 1457
    .local v0, "stringId":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1458
    const v0, 0x7f0e036d

    .line 1462
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 1463
    return-void

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    const v2, 0x7f1202e1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->access$2900(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;IZ)V

    goto :goto_0
.end method
