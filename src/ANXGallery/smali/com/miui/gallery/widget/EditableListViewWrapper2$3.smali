.class Lcom/miui/gallery/widget/EditableListViewWrapper2$3;
.super Ljava/lang/Object;
.source "EditableListViewWrapper2.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


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
    .line 280
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 283
    instance-of v1, p2, Lcom/miui/gallery/ui/Checkable;

    if-nez v1, :cond_0

    .line 302
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return v6

    .line 287
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$600(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCheckState(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v6, v7

    .line 288
    .local v6, "checked":Z
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$600(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    move-result-object v1

    invoke-virtual {v1, p3, v6}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->setCheckState(IZ)V

    move-object v1, p2

    .line 289
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    invoke-interface {v1, v6}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 290
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$700(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    .line 291
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$900(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->access$500(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Landroid/view/ActionMode;

    move-result-object v2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 293
    instance-of v1, p2, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 294
    check-cast v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    .line 295
    invoke-interface {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 296
    .local v0, "backgroundView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$400(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;I)V

    .line 299
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    :cond_2
    if-eqz v6, :cond_3

    instance-of v1, p2, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;

    if-eqz v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$400(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    move-result-object v1

    check-cast p2, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startPickingNumberAnimation(Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;)V

    :cond_3
    move v6, v7

    .line 302
    goto :goto_0
.end method
