.class Lcom/miui/gallery/widget/EditableListViewWrapper$2;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$2;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$2;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$500(Lcom/miui/gallery/widget/EditableListViewWrapper;)I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$2;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->startActionMode()V

    .line 289
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$2;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$600(Lcom/miui/gallery/widget/EditableListViewWrapper;)Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;->setLongTouchPosition(I)V

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method
