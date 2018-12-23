.class Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeCallback"
.end annotation


# instance fields
.field private mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper;Lcom/miui/gallery/widget/EditableListViewWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p2, "x1"    # Lcom/miui/gallery/widget/EditableListViewWrapper$1;

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    return-object v0
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

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

    .line 1057
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    :goto_0
    return v1

    .line 1060
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 1068
    goto :goto_0

    .line 1062
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1065
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setAllItemsCheckState(Z)V

    goto :goto_0

    .line 1060
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

    .line 1040
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    const/4 v0, 0x0

    .line 1047
    :goto_0
    return v0

    .line 1044
    :cond_0
    sget v1, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 1045
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1500(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    .line 1046
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v1, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1602(Lcom/miui/gallery/widget/EditableListViewWrapper;Z)Z

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1074
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1702(Lcom/miui/gallery/widget/EditableListViewWrapper;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;

    .line 1075
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1002(Lcom/miui/gallery/widget/EditableListViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1076
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1802(Lcom/miui/gallery/widget/EditableListViewWrapper;Z)Z

    .line 1077
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1900(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    .line 1078
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 1079
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1602(Lcom/miui/gallery/widget/EditableListViewWrapper;Z)Z

    .line 1080
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    .line 1032
    return-void
.end method
