.class Lcom/miui/gallery/widget/EditableListViewWrapper$4;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper;->setCheckableHeaderView(Lcom/miui/gallery/ui/CheckableView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iput p2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->val$position:I

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$2000(Lcom/miui/gallery/widget/EditableListViewWrapper;I)Z

    .line 1219
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$2100(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    .line 1220
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1100(Lcom/miui/gallery/widget/EditableListViewWrapper;)Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1100(Lcom/miui/gallery/widget/EditableListViewWrapper;)Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    .line 1223
    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$1000(Lcom/miui/gallery/widget/EditableListViewWrapper;)Landroid/view/ActionMode;

    move-result-object v1

    const/4 v2, 0x1

    .line 1222
    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 1225
    :cond_0
    return-void
.end method
