.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;
.super Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;
.source "HorizontalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;,
        Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;)V
    .locals 3
    .param p1, "viewAdapter"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    .line 65
    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;FFF)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;FFF)V
    .locals 0
    .param p1, "viewAdapter"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;
    .param p2, "touchDragRatioFwd"    # F
    .param p3, "touchDragRatioBck"    # F
    .param p4, "decelerateFactor"    # F

    .line 80
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;-><init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;FFF)V

    .line 81
    return-void
.end method

.method public static setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 11
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;)V

    .line 12
    return-void
.end method

.method public static setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "itemTouchHelperCallback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 15
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected createAnimationAttributes()Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
    .locals 1

    .line 90
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;

    invoke-direct {v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;-><init>()V

    return-object v0
.end method

.method protected createMotionAttributes()Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
    .locals 1

    .line 85
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;

    invoke-direct {v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;-><init>()V

    return-object v0
.end method

.method protected translateView(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 96
    return-void
.end method

.method protected translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sub-float v0, p2, v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 102
    return-void
.end method
