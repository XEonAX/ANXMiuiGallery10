.class Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ScrollControlLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;
    .param p2, "x0"    # Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 57
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->access$000(Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;)F

    move-result v0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .line 52
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .line 63
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->getHorizontalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v0

    .line 67
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->getVerticalSnapPreference()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 68
    .local v1, "dy":I
    if-lez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    :goto_0
    if-lez v1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 78
    :goto_1
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 79
    .local v2, "distance":I
    int-to-float v3, v2

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    invoke-static {v4}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->access$100(Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 80
    const/16 v3, 0x12c

    .line 81
    .local v3, "time":I
    neg-int v4, v0

    neg-int v5, v1

    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v4, v5, v3, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 83
    .end local v3    # "time":I
    :cond_3
    return-void
.end method
