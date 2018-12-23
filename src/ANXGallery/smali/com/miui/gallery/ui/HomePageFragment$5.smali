.class Lcom/miui/gallery/ui/HomePageFragment$5;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAddToAlbum:Landroid/view/MenuItem;

.field private mDelete:Landroid/view/MenuItem;

.field private mProduce:Landroid/view/MenuItem;

.field private mSend:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateMenuState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$900(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemCount()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 601
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 602
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mProduce:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mSend:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 610
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 606
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 607
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mProduce:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 608
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mSend:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 535
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 582
    const/4 v2, 0x0

    .line 584
    :goto_0
    return v2

    .line 537
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Lcom/miui/gallery/ui/HomePageFragment$5$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/HomePageFragment$5$1;-><init>(Lcom/miui/gallery/ui/HomePageFragment$5;Landroid/view/ActionMode;)V

    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 543
    invoke-static {v3}, Lcom/miui/gallery/ui/HomePageFragment;->access$900(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemIds()[J

    move-result-object v5

    move v3, v2

    move v4, v2

    .line 537
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZ[J)V

    goto :goto_0

    .line 546
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v3, v0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v4, "HomePageFragmentDeleteMediaDialogFragment"

    new-instance v5, Lcom/miui/gallery/ui/HomePageFragment$5$2;

    invoke-direct {v5, p0, p1}, Lcom/miui/gallery/ui/HomePageFragment$5$2;-><init>(Lcom/miui/gallery/ui/HomePageFragment$5;Landroid/view/ActionMode;)V

    const-wide/16 v6, -0x1

    const-string v8, ""

    const/16 v10, 0x1a

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 567
    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$900(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemIds()[J

    move-result-object v11

    move v9, v2

    .line 546
    invoke-static/range {v3 .. v11}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->delete(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;JLjava/lang/String;II[J)V

    goto :goto_0

    .line 570
    :sswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Lcom/miui/gallery/ui/HomePageFragment$5$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/HomePageFragment$5$3;-><init>(Lcom/miui/gallery/ui/HomePageFragment$5;Landroid/view/ActionMode;)V

    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 575
    invoke-static {v3}, Lcom/miui/gallery/ui/HomePageFragment;->access$900(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItems()Ljava/util/List;

    move-result-object v3

    .line 570
    invoke-static {v0, v1, v3}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doProduceCreation(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/List;)V

    .line 576
    const-string v0, "home"

    const-string v1, "produce"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :sswitch_3
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$1000(Lcom/miui/gallery/ui/HomePageFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :sswitch_data_0
    .sparse-switch
        0x7f120245 -> :sswitch_1
        0x7f1202d6 -> :sswitch_2
        0x7f1202d7 -> :sswitch_3
        0x7f1202d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment$5;->updateMenuState()V

    .line 500
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f13000e

    .line 511
    .local v0, "menuResId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 512
    const v1, 0x7f1202d9

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mAddToAlbum:Landroid/view/MenuItem;

    .line 513
    const v1, 0x7f120245

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mDelete:Landroid/view/MenuItem;

    .line 514
    const v1, 0x7f1202d6

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mProduce:Landroid/view/MenuItem;

    .line 515
    const v1, 0x7f1202d7

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->mSend:Landroid/view/MenuItem;

    .line 516
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomePageTopBarController;->setEnable(Z)V

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$800(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/TopSearchBarController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$800(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/TopSearchBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TopSearchBarController;->onPause()V

    .line 521
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$800(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/TopSearchBarController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/TopSearchBarController;->setEnable(Z)V

    .line 523
    :cond_1
    const-string v1, "home"

    const-string v2, "action_mode_create"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v1, 0x1

    return v1

    .line 509
    .end local v0    # "menuResId":I
    :cond_2
    const v0, 0x7f130005

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x1

    .line 589
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomePageTopBarController;->setEnable(Z)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$800(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/TopSearchBarController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$800(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/TopSearchBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onResume()V

    .line 594
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$800(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/TopSearchBarController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/TopSearchBarController;->setEnable(Z)V

    .line 596
    :cond_1
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment$5;->updateMenuState()V

    .line 505
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method
