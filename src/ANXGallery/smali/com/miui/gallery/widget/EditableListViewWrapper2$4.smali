.class Lcom/miui/gallery/widget/EditableListViewWrapper2$4;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "EditableListViewWrapper2.java"


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
    .line 1132
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1135
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 1136
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 1137
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1141
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 1142
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 1143
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1147
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 1148
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 1149
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1153
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 1154
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 1155
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1165
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 1166
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 1167
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1159
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 1160
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 1161
    return-void
.end method
