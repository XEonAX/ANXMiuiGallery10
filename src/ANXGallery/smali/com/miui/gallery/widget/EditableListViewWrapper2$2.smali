.class Lcom/miui/gallery/widget/EditableListViewWrapper2$2;
.super Ljava/lang/Object;
.source "EditableListViewWrapper2.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$2;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$2;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->startActionMode()V

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$2;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$400(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setLongTouchPosition(I)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method
