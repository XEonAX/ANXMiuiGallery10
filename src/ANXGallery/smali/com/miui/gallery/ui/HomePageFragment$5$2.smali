.class Lcom/miui/gallery/ui/HomePageFragment$5$2;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment$5;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment$5;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/HomePageFragment$5;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$5$2;->this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

    iput-object p2, p0, Lcom/miui/gallery/ui/HomePageFragment$5$2;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(I[J)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "deleteIds"    # [J

    .prologue
    const/4 v6, 0x0

    .line 550
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5$2;->this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v1, :cond_0

    .line 563
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5$2;->this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment$5$2;->this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

    iget-object v2, v2, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    const v3, 0x7f0e0142

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/HomePageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 553
    if-lez p1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5$2;->this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1, v6}, Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5$2;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 560
    .local v0, "map":Ljava/util/Map;
    const-string v1, "count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "home"

    const-string v2, "delete_photo"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
