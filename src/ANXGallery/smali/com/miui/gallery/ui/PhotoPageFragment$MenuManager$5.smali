.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$current:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1555
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    instance-of v0, v0, Lcom/miui/gallery/model/CloudItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/CloudItem;->getSha1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->access$3500(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1556
    return-void

    .line 1555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
