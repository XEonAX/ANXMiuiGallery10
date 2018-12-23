.class Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "EditableListViewWrapper2.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeCallback"
.end annotation


# instance fields
.field private mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;Lcom/miui/gallery/widget/EditableListViewWrapper2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;
    .param p2, "x1"    # Lcom/miui/gallery/widget/EditableListViewWrapper2$1;

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    return-object v0
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 951
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    :goto_0
    return v1

    .line 954
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 962
    goto :goto_0

    .line 956
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 959
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->isAllItemsChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->setAllItemsCheckState(Z)V

    goto :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 934
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    const/4 v0, 0x0

    .line 941
    :goto_0
    return v0

    .line 938
    :cond_0
    sget v1, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 939
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1300(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 940
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1402(Lcom/miui/gallery/widget/EditableListViewWrapper2;Z)Z

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 968
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1502(Lcom/miui/gallery/widget/EditableListViewWrapper2;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;

    .line 969
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$802(Lcom/miui/gallery/widget/EditableListViewWrapper2;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 970
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1602(Lcom/miui/gallery/widget/EditableListViewWrapper2;Z)Z

    .line 971
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1700(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 972
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 973
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1402(Lcom/miui/gallery/widget/EditableListViewWrapper2;Z)Z

    .line 974
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    .line 926
    return-void
.end method
