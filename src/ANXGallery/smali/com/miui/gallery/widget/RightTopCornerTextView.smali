.class public Lcom/miui/gallery/widget/RightTopCornerTextView;
.super Landroid/widget/TextView;
.source "RightTopCornerTextView.java"


# instance fields
.field private mCornerMargin:I

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mCornerText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/RightTopCornerTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/RightTopCornerTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/widget/RightTopCornerTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    sget-object v1, Lcom/miui/gallery/R$styleable;->RightTopCornerTextView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v1, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v1, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getTextSize()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerMargin:I

    .line 40
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/RightTopCornerTextView;->setCornerText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 57
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 59
    .local v2, "textBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .local v0, "cornerBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 62
    iget-object v3, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getPaddingStart()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getBaseline()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    .end local v0    # "cornerBounds":Landroid/graphics/Rect;
    .end local v2    # "textBounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCornerText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerText:Ljava/lang/CharSequence;

    .line 46
    iget-object v1, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/widget/RightTopCornerTextView;->mCornerMargin:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 48
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/miui/gallery/widget/RightTopCornerTextView;->setPadding(IIII)V

    .line 50
    .end local v0    # "padding":I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RightTopCornerTextView;->invalidate()V

    .line 51
    return-void
.end method
