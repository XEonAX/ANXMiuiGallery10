.class Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "EditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFromPosition:I

.field private mLastActive:Z

.field private mMove:Z

.field private mToPosition:I

.field private final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 156
    new-instance v0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1$1;-><init>(Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 164
    new-instance v0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1$2;-><init>(Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->access$000(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;Landroid/view/View;Z)V

    .line 144
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 149
    .local v1, "fromPosition":I
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->isAddItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-static {v3, v3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->makeMovementFlags(II)I

    move-result v2

    .line 153
    :goto_0
    return v2

    .line 152
    :cond_0
    const/16 v0, 0xf

    .line 153
    .local v0, "dragFlags":I
    invoke-static {v0, v3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->makeMovementFlags(II)I

    move-result v2

    goto :goto_0
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .locals 13
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .prologue
    .line 173
    const/16 v5, 0x28

    .line 174
    .local v5, "maxScroll":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 175
    .local v2, "absOutOfBounds":I
    move/from16 v0, p3

    int-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-int v4, v9

    .line 177
    .local v4, "direction":I
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v2

    mul-float/2addr v10, v11

    int-to-float v11, p2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 178
    .local v6, "outOfBoundsRatio":F
    mul-int/lit8 v9, v4, 0x28

    int-to-float v9, v9

    iget-object v10, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 179
    invoke-interface {v10, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 181
    .local v3, "cappedScroll":I
    const-wide/16 v10, 0x1f4

    cmp-long v9, p5, v10

    if-lez v9, :cond_0

    .line 182
    const/high16 v7, 0x3f800000    # 1.0f

    .line 186
    .local v7, "timeRatio":F
    :goto_0
    int-to-float v9, v3

    iget-object v10, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    invoke-interface {v10, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 188
    .local v8, "value":I
    if-nez v8, :cond_2

    .line 189
    if-lez p3, :cond_1

    const/4 v9, 0x1

    .line 191
    :goto_1
    return v9

    .line 184
    .end local v7    # "timeRatio":F
    .end local v8    # "value":I
    :cond_0
    move-wide/from16 v0, p5

    long-to-float v9, v0

    const/high16 v10, 0x43fa0000    # 500.0f

    div-float v7, v9, v10

    .restart local v7    # "timeRatio":F
    goto :goto_0

    .line 189
    .restart local v8    # "value":I
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    move v9, v8

    .line 191
    goto :goto_1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 132
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 134
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mLastActive:Z

    if-eqz v0, :cond_0

    if-nez p7, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->access$000(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;Landroid/view/View;Z)V

    .line 137
    :cond_0
    iput-boolean p7, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mLastActive:Z

    .line 138
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x1

    .line 196
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 197
    .local v0, "fromPosition":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 198
    .local v2, "toPosition":I
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->isAddItem(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    add-int/lit8 v2, v2, -0x1

    .line 201
    :cond_0
    iput v2, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mToPosition:I

    .line 202
    if-ne v0, v2, :cond_1

    .line 217
    :goto_0
    return v5

    .line 205
    :cond_1
    if-ge v0, v2, :cond_2

    .line 206
    move v1, v0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 207
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getList()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 208
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v1, v4}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->access$200(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;II)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v1    # "i":I
    :cond_2
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    if-le v1, v2, :cond_3

    .line 212
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getList()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 213
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v1, v4}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->access$200(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;II)V

    .line 211
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 216
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->notifyItemMoved(II)V

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 115
    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 117
    .local v0, "position":I
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->isAddItem(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->access$000(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;Landroid/view/View;Z)V

    .line 119
    iput-boolean v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mMove:Z

    .line 120
    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mFromPosition:I

    .line 121
    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mToPosition:I

    .line 128
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mMove:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mFromPosition:I

    iget v2, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mToPosition:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->access$100(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->access$100(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mFromPosition:I

    iget v3, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;->mToPosition:I

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;->onMove(II)V

    goto :goto_0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 222
    return-void
.end method
