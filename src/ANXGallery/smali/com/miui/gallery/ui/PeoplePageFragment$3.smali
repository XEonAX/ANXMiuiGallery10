.class Lcom/miui/gallery/ui/PeoplePageFragment$3;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMode:Landroid/view/ActionMode;

.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableOrDisableMenuItem(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 691
    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 692
    .local v1, "menu":Landroid/view/Menu;
    const v2, 0x7f1202dc

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 693
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 694
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 696
    :cond_0
    const v2, 0x7f1202dd

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_1

    .line 698
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 700
    :cond_1
    const v2, 0x7f1202de

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_2

    .line 702
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 704
    :cond_2
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 667
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 679
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    .line 670
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$500(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemIds()[J

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->mMode:Landroid/view/ActionMode;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$2100(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V

    .line 681
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 673
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$500(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemIds()[J

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->mMode:Landroid/view/ActionMode;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$2200(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)Z

    goto :goto_1

    .line 676
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$500(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemIds()[J

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->mMode:Landroid/view/ActionMode;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$2300(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V

    goto :goto_1

    .line 667
    :pswitch_data_0
    .packed-switch 0x7f1202dc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 639
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$500(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemCount()I

    move-result v0

    .line 640
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PeoplePageFragment$3;->enableOrDisableMenuItem(Z)V

    .line 641
    return-void

    .line 640
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->mMode:Landroid/view/ActionMode;

    .line 652
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f130010

    .line 654
    .local v0, "menuResId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 655
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PeoplePageFragment$3;->enableOrDisableMenuItem(Z)V

    .line 656
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->enterChoiceMode()V

    .line 657
    const/4 v1, 0x1

    return v1

    .line 652
    .end local v0    # "menuResId":I
    :cond_0
    const v0, 0x7f130008

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->mMode:Landroid/view/ActionMode;

    .line 687
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->exitChoiceMode()V

    .line 688
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 645
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$500(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemCount()I

    move-result v0

    .line 646
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PeoplePageFragment$3;->enableOrDisableMenuItem(Z)V

    .line 647
    return-void

    .line 646
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method
