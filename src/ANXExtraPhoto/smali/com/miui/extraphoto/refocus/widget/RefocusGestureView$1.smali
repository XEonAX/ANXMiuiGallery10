.class Lcom/miui/extraphoto/refocus/widget/RefocusGestureView$1;
.super Ljava/lang/Object;
.source "RefocusGestureView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    .line 53
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView$1;->this$0:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "animatedValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView$1;->this$0:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    move-object v2, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->access$002(Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;F)F

    .line 58
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView$1;->this$0:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->invalidate()V

    .line 59
    return-void
.end method
