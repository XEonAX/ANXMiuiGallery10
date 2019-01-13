.class public Lmiui/widget/NestedScrollingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NestedScrollingLayout"

.field private static final Vh:I = 0x12c


# instance fields
.field private Vi:I

.field private Vj:I

.field private Vk:I

.field private Vl:I

.field private Vm:Z

.field protected mScrollableView:Landroid/view/View;

.field private wp:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p3, Landroid/widget/Scroller;

    invoke-direct {p3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lmiui/widget/NestedScrollingLayout;->wp:Landroid/widget/Scroller;

    .line 47
    sget-object p3, Lmiui/R$styleable;->NestedScrollingLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lmiui/R$styleable;->NestedScrollingLayout_scrollableView:I

    const p3, 0x102000a

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NestedScrollingLayout;->Vi:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private as(I)V
    .registers 9

    .line 144
    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    if-eq p1, v0, :cond_16

    .line 145
    iget-object v1, p0, Lmiui/widget/NestedScrollingLayout;->wp:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    const/4 v4, 0x0

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    sub-int v5, p1, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 147
    invoke-virtual {p0}, Lmiui/widget/NestedScrollingLayout;->postInvalidate()V

    .line 149
    :cond_16
    return-void
.end method

.method private fc()V
    .registers 2

    .line 152
    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    invoke-virtual {p0, v0}, Lmiui/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    .line 153
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 2

    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 135
    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 136
    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    .line 137
    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->fc()V

    .line 138
    invoke-virtual {p0}, Lmiui/widget/NestedScrollingLayout;->postInvalidateOnAnimation()V

    .line 140
    :cond_19
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->Vi:I

    invoke-virtual {p0, v0}, Lmiui/widget/NestedScrollingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 63
    return-void

    .line 58
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 67
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 70
    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->fc()V

    .line 71
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 112
    if-eqz p4, :cond_10

    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    if-ge p1, p2, :cond_10

    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    if-le p1, p2, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 113
    :goto_11
    if-eqz p1, :cond_20

    .line 114
    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1b

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    goto :goto_1d

    :cond_1b
    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    :goto_1d
    invoke-direct {p0, p2}, Lmiui/widget/NestedScrollingLayout;->as(I)V

    .line 116
    :cond_20
    iput-boolean p1, p0, Lmiui/widget/NestedScrollingLayout;->Vm:Z

    .line 117
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 104
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 105
    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    sub-int/2addr p2, p1

    const/4 p3, 0x1

    aput p2, p4, p3

    .line 106
    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    .line 107
    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->fc()V

    .line 108
    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .registers 2

    .line 156
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 96
    const/4 v0, 0x2

    if-eq p3, v0, :cond_c

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p1, 0x1

    .line 96
    :goto_d
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    .line 122
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 123
    iget-boolean p1, p0, Lmiui/widget/NestedScrollingLayout;->Vm:Z

    if-nez p1, :cond_1a

    .line 125
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_15

    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    goto :goto_17

    :cond_15
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    .line 126
    :goto_17
    invoke-direct {p0, p1}, Lmiui/widget/NestedScrollingLayout;->as(I)V

    .line 129
    :cond_1a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/NestedScrollingLayout;->Vm:Z

    .line 130
    return-void
.end method

.method public setScrollingRange(II)V
    .registers 4

    .line 74
    if-le p1, p2, :cond_b

    .line 75
    const-string p1, "NestedScrollingLayout"

    const-string v0, "wrong scrolling range: [%d, %d], making from=to"

    invoke-static {p1, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    nop

    .line 79
    move p1, p2

    :cond_b
    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    .line 80
    iput p2, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    .line 82
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    if-ge p1, p2, :cond_1c

    .line 83
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vk:I

    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    .line 84
    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->fc()V

    .line 87
    :cond_1c
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    if-le p1, p2, :cond_29

    .line 88
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->Vl:I

    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->Vj:I

    .line 89
    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->fc()V

    .line 91
    :cond_29
    return-void
.end method
