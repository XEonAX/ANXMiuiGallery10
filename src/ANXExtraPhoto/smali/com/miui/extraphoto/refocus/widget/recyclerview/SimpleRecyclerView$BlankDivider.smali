.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SimpleRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlankDivider"
.end annotation


# instance fields
.field private mBottom:I

.field private mEnd:I

.field private mHorizonalInterval:I

.field private mStart:I

.field private mTop:I

.field private mVerticalInterval:I


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .param p1, "hInterval"    # I
    .param p2, "vInterval"    # I

    .line 100
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p2

    move v5, p2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(IIIIII)V

    .line 101
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "hInterval"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "vInterval"    # I

    .line 103
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 104
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mStart:I

    .line 105
    iput p2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mEnd:I

    .line 106
    iput p3, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mHorizonalInterval:I

    .line 107
    iput p4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mTop:I

    .line 108
    iput p5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mBottom:I

    .line 109
    iput p6, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mVerticalInterval:I

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "horizontalId"    # I
    .param p3, "verticalId"    # I

    .line 95
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 96
    move v1, v0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 96
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 95
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(II)V

    .line 97
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 115
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 118
    .local v0, "adapterPos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 119
    const-string v1, "SimpleRecyclerView"

    const-string v2, "no adapter bound"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 121
    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 122
    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mStart:I

    .line 123
    .local v1, "start":I
    iget v3, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mHorizonalInterval:I

    .line 124
    .local v3, "end":I
    iget v4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mTop:I

    .line 125
    .local v4, "top":I
    iget v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mVerticalInterval:I

    .local v5, "bottom":I
    :goto_0
    goto :goto_1

    .line 126
    .end local v1    # "start":I
    .end local v3    # "end":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    :cond_1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_2

    .line 127
    const/4 v1, 0x0

    .line 128
    .restart local v1    # "start":I
    iget v3, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mEnd:I

    .line 129
    .restart local v3    # "end":I
    const/4 v4, 0x0

    .line 130
    .restart local v4    # "top":I
    iget v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mBottom:I

    goto :goto_0

    .line 132
    .end local v1    # "start":I
    .end local v3    # "end":I
    .end local v4    # "top":I
    :cond_2
    const/4 v1, 0x0

    .line 133
    .restart local v1    # "start":I
    iget v3, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mHorizonalInterval:I

    .line 134
    .restart local v3    # "end":I
    const/4 v4, 0x0

    .line 135
    .restart local v4    # "top":I
    iget v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->mVerticalInterval:I

    .line 138
    .restart local v5    # "bottom":I
    :goto_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 139
    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 141
    :cond_3
    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    :goto_2
    return-void
.end method
