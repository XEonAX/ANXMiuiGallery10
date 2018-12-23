.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;
.super Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
.source "HorizontalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MotionAttributesHorizontal"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25
    return v1

    .line 29
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v2

    sub-float/2addr v0, v2

    .line 30
    .local v0, "dy":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v3

    sub-float/2addr v2, v3

    .line 31
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 32
    return v1

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mAbsOffset:F

    .line 36
    iput v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDeltaOffset:F

    .line 37
    iget v3, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDeltaOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_2

    move v1, v4

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDir:Z

    .line 39
    return v4
.end method
