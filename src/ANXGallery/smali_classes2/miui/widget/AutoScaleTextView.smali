.class public Lmiui/widget/AutoScaleTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final OK:F = 0.001f


# instance fields
.field private OL:F

.field private ON:F

.field private OO:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->eh()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AutoScaleTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->eh()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/AutoScaleTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->eh()V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 40
    sget-object v0, Lmiui/R$styleable;->AutoScaleTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lmiui/R$styleable;->AutoScaleTextView_minTextSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lmiui/widget/AutoScaleTextView;->ON:F

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private eh()V
    .registers 2

    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiui/widget/AutoScaleTextView;->OL:F

    .line 101
    return-void
.end method


# virtual methods
.method public getMinTextSize()F
    .registers 2

    .line 84
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ON:F

    return v0
.end method

.method public getTextSize()F
    .registers 2

    .line 105
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->OL:F

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 154
    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->OO:Z

    if-nez v0, :cond_7

    .line 155
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 157
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 110
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ON:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_5a

    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ON:F

    iget v1, p0, Lmiui/widget/AutoScaleTextView;->OL:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_5a

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    goto :goto_5a

    .line 115
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 116
    if-nez v0, :cond_21

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 118
    return-void

    .line 121
    :cond_21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 122
    const/4 v2, 0x0

    invoke-super {p0, v2, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 123
    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getMeasuredWidth()I

    move-result v3

    .line 124
    if-gt v3, v0, :cond_30

    .line 125
    return-void

    .line 128
    :cond_30
    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 130
    sub-int/2addr v0, v4

    .line 131
    sub-int/2addr v3, v4

    .line 133
    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    int-to-float v0, v0

    mul-float/2addr v4, v0

    int-to-float v0, v3

    const v3, 0x3a83126f    # 0.001f

    add-float/2addr v0, v3

    div-float/2addr v4, v0

    .line 134
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ON:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4f

    .line 135
    iget v4, p0, Lmiui/widget/AutoScaleTextView;->ON:F

    .line 139
    :cond_4f
    iput-boolean v1, p0, Lmiui/widget/AutoScaleTextView;->OO:Z

    .line 140
    invoke-super {p0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iput-boolean v2, p0, Lmiui/widget/AutoScaleTextView;->OO:Z

    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 143
    return-void

    .line 111
    :cond_5a
    :goto_5a
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 112
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 147
    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->OO:Z

    if-nez v0, :cond_7

    .line 148
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 150
    :cond_7
    return-void
.end method

.method public setMinTextSize(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lmiui/widget/AutoScaleTextView;->setMinTextSize(IF)V

    .line 57
    return-void
.end method

.method public setMinTextSize(IF)V
    .registers 4

    .line 69
    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    if-nez v0, :cond_b

    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_f

    .line 75
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    :goto_f
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lmiui/widget/AutoScaleTextView;->ON:F

    .line 78
    return-void
.end method

.method public setTextSize(F)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->eh()V

    .line 91
    return-void
.end method

.method public setTextSize(IF)V
    .registers 3

    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->eh()V

    .line 97
    return-void
.end method
