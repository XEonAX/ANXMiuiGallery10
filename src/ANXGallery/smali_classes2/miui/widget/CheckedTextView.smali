.class public Lmiui/widget/CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# static fields
.field private static final Pm:[I

.field private static final Pn:I


# instance fields
.field private Po:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/CheckedTextView;->Pm:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 43
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 5

    .line 113
    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->em()I

    move-result v0

    .line 114
    if-nez v0, :cond_a

    .line 115
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    return-void

    .line 119
    :cond_a
    add-int/lit8 v0, v0, 0x0

    .line 120
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    neg-int v0, v0

    .line 121
    :cond_13
    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 9

    .line 127
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_6c

    .line 129
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 130
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 131
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2d

    .line 132
    :cond_24
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    .line 133
    :goto_2d
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v3

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 135
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v5, :cond_48

    .line 136
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_64

    .line 138
    :cond_48
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getGravity()I

    move-result v5

    and-int/lit8 v5, v5, 0x70

    const/16 v6, 0x10

    if-eq v5, v6, :cond_5d

    const/16 v6, 0x50

    if-eq v5, v6, :cond_57

    goto :goto_64

    .line 140
    :cond_57
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    .line 141
    goto :goto_64

    .line 143
    :cond_5d
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 147
    :goto_64
    add-int/2addr v1, v2

    add-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    :cond_6c
    return-void
.end method

.method private em()I
    .registers 2

    .line 102
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_10
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .line 163
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 164
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 165
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 167
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 168
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->invalidate()V

    .line 170
    :cond_13
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 52
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 179
    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    .line 180
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 183
    :cond_c
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    .line 154
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 155
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 156
    sget-object v0, Lmiui/widget/CheckedTextView;->Pm:[I

    invoke-static {p1, v0}, Lmiui/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 158
    :cond_11
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 108
    invoke-direct {p0, p1}, Lmiui/widget/CheckedTextView;->b(Landroid/graphics/Canvas;)V

    .line 109
    invoke-direct {p0, p1}, Lmiui/widget/CheckedTextView;->a(Landroid/graphics/Canvas;)V

    .line 110
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->onMeasure(II)V

    .line 75
    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->em()I

    move-result p2

    .line 76
    if-nez p2, :cond_a

    .line 77
    return-void

    .line 79
    :cond_a
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 80
    add-int/lit8 v0, p2, 0x0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lmiui/widget/CheckedTextView;->setPadding(IIII)V

    goto :goto_2c

    .line 82
    :cond_1f
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v0

    add-int/lit8 v2, p2, 0x0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lmiui/widget/CheckedTextView;->setPadding(IIII)V

    .line 85
    :goto_2c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 86
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_35

    .line 87
    return-void

    .line 90
    :cond_35
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    .line 91
    const/high16 p2, -0x80000000

    if-ne v0, p2, :cond_45

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 93
    if-le v1, p1, :cond_45

    .line 94
    goto :goto_46

    .line 98
    :cond_45
    move p1, v1

    :goto_46
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiui/widget/CheckedTextView;->setMeasuredDimension(II)V

    .line 99
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 57
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 58
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_f
    if-eqz p1, :cond_34

    .line 62
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 63
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 64
    sget-object v0, Lmiui/widget/CheckedTextView;->Pm:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 65
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setMinHeight(I)V

    .line 66
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 68
    :cond_34
    iput-object p1, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 174
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Po:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
