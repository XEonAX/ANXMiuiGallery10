.class public Lcom/miui/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private rg:Landroid/util/TypedValue;

.field private rh:Landroid/util/TypedValue;

.field private ri:Landroid/util/TypedValue;

.field private rj:Landroid/util/TypedValue;

.field private tq:Landroid/util/TypedValue;

.field private tr:Landroid/util/TypedValue;

.field private ts:Landroid/util/TypedValue;

.field private tt:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 37
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->rh:Landroid/util/TypedValue;

    .line 38
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->rh:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 40
    :cond_1f
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 41
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->ri:Landroid/util/TypedValue;

    .line 42
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->ri:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 44
    :cond_35
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 45
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->rg:Landroid/util/TypedValue;

    .line 46
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->rg:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 48
    :cond_4b
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 49
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->rj:Landroid/util/TypedValue;

    .line 50
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->rj:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 52
    :cond_61
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_77

    .line 53
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->tq:Landroid/util/TypedValue;

    .line 54
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->tq:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 56
    :cond_77
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 57
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->tr:Landroid/util/TypedValue;

    .line 58
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->tr:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 60
    :cond_8d
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a3

    .line 61
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->tt:Landroid/util/TypedValue;

    .line 62
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->tt:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 64
    :cond_a3
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 65
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->ts:Landroid/util/TypedValue;

    .line 66
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->ts:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 68
    :cond_b9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private a(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .registers 11

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 92
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_44

    .line 94
    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogParentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 96
    :goto_1d
    if-eqz v2, :cond_20

    goto :goto_21

    .line 97
    :cond_20
    move-object p3, p4

    :goto_21
    invoke-direct {p0, v0, p3, p2}, Lcom/miui/internal/widget/DialogParentPanel;->a(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p3

    .line 99
    if-lez p3, :cond_2e

    .line 100
    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_44

    .line 102
    :cond_2e
    if-eqz v2, :cond_31

    goto :goto_32

    .line 103
    :cond_31
    move-object p5, p6

    :goto_32
    invoke-direct {p0, v0, p5, p2}, Lcom/miui/internal/widget/DialogParentPanel;->a(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p2

    .line 104
    if-lez p2, :cond_44

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 106
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 110
    :cond_44
    :goto_44
    return p1
.end method

.method private a(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I
    .registers 6

    .line 114
    nop

    .line 115
    if-eqz p2, :cond_22

    .line 116
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 117
    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_23

    .line 118
    :cond_e
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_22

    .line 119
    if-eqz p3, :cond_19

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_17
    int-to-float p1, p1

    goto :goto_1c

    :cond_19
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_17

    .line 120
    :goto_1c
    invoke-virtual {p2, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_23

    .line 123
    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method private m(I)I
    .registers 9

    .line 79
    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->rh:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->rg:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->tq:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->tr:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->a(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method private n(I)I
    .registers 9

    .line 84
    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->rj:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->ri:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->ts:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->tt:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->a(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/DialogParentPanel;->m(I)I

    move-result p1

    .line 74
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/DialogParentPanel;->n(I)I

    move-result p2

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    return-void
.end method
