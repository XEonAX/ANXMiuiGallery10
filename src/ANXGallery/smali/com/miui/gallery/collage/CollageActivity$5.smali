.class Lcom/miui/gallery/collage/CollageActivity$5;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 667
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 668
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$2300(Lcom/miui/gallery/collage/CollageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$2000(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;->setSelection(I)V

    .line 670
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, p3}, Lcom/miui/gallery/collage/CollageActivity;->access$1802(Lcom/miui/gallery/collage/CollageActivity;I)I

    .line 671
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$800(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/PosterModel;

    invoke-static {v1, v0}, Lcom/miui/gallery/collage/CollageActivity;->access$2400(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/PosterModel;)V

    .line 677
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$1700(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;->setSelection(I)V

    .line 674
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, p3}, Lcom/miui/gallery/collage/CollageActivity;->access$1302(Lcom/miui/gallery/collage/CollageActivity;I)I

    .line 675
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$5;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$700(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/LayoutModel;

    invoke-static {v1, v0}, Lcom/miui/gallery/collage/CollageActivity;->access$1400(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/LayoutModel;)V

    goto :goto_0
.end method
