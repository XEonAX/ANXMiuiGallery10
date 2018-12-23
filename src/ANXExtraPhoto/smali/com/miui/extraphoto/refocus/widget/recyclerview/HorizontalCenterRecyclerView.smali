.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;
.super Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;
.source "HorizontalCenterRecyclerView.java"


# instance fields
.field private mLastWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 27
    invoke-super/range {p0 .. p5}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;->onLayout(ZIIII)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "newWidth":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "newWidth":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->mLastWidth:I

    if-eq v0, v2, :cond_2

    .line 34
    iput v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->mLastWidth:I

    .line 35
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v2

    .line 36
    .local v0, "empty":I
    if-lez v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->getPaddingLeft()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    if-ne v3, v4, :cond_1

    .line 38
    return-void

    .line 40
    :cond_1
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v3, v1, v4, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/HorizontalCenterRecyclerView;->setPadding(IIII)V

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;->onLayout(ZIIII)V

    .line 46
    .end local v0    # "empty":I
    .end local v2    # "newWidth":I
    :cond_2
    return-void
.end method
