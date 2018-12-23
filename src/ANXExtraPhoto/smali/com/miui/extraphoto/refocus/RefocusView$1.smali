.class Lcom/miui/extraphoto/refocus/RefocusView$1;
.super Ljava/lang/Object;
.source "RefocusView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusView;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusView;

    .line 74
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 128
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    move-object v0, p0

    .line 98
    iget-object v1, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusView;->access$200(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->isRelightingHasFace()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusView;->access$200(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getFacePoint([F)V

    .line 100
    iget-object v1, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 101
    .local v1, "centerX":F
    iget-object v4, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v4}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v4

    aget v4, v4, v2

    .line 102
    .local v4, "centerY":F
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v5}, Lcom/miui/extraphoto/refocus/RefocusView;->access$200(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getLightingPointOnView()[F

    move-result-object v5

    .line 103
    .local v5, "currentLightingPoint":[F
    aget v6, v5, v3

    sub-float v6, v6, p3

    .line 104
    .local v6, "currentX":F
    aget v7, v5, v2

    sub-float v7, v7, p4

    .line 105
    .local v7, "currentY":F
    iget-object v8, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v8}, Lcom/miui/extraphoto/refocus/RefocusView;->access$200(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getRelightingRadius()F

    move-result v8

    .line 106
    .local v8, "radius":F
    sub-float v9, v1, v6

    float-to-double v9, v9

    sub-float v11, v4, v7

    float-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 107
    .local v9, "distance":F
    cmpl-float v10, v9, v8

    if-lez v10, :cond_0

    .line 108
    sub-float v10, v4, v7

    float-to-double v10, v10

    sub-float v12, v1, v6

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    .line 109
    .local v10, "degree":D
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    .line 110
    iget-object v12, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v12

    sub-float v13, v1, v8

    aput v13, v12, v3

    .line 111
    iget-object v12, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v12

    aput v4, v12, v2

    .line 112
    iget-object v12, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$400(Lcom/miui/extraphoto/refocus/RefocusView;)Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 113
    iget-object v12, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$400(Lcom/miui/extraphoto/refocus/RefocusView;)Landroid/graphics/Matrix;

    move-result-object v12

    double-to-float v13, v10

    invoke-virtual {v12, v13, v1, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 114
    iget-object v12, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$400(Lcom/miui/extraphoto/refocus/RefocusView;)Landroid/graphics/Matrix;

    move-result-object v12

    iget-object v13, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v13}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 115
    iget-object v12, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v12

    aget v6, v12, v3

    .line 116
    iget-object v12, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F

    move-result-object v12

    aget v7, v12, v2

    .line 118
    .end local v10    # "degree":D
    :cond_0
    aput v6, v5, v3

    .line 119
    aput v7, v5, v2

    .line 120
    iget-object v10, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    aget v11, v5, v3

    aget v12, v5, v2

    invoke-static {v10, v1, v4, v11, v12}, Lcom/miui/extraphoto/refocus/RefocusView;->access$500(Lcom/miui/extraphoto/refocus/RefocusView;FFFF)V

    .line 121
    iget-object v10, v0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v10}, Lcom/miui/extraphoto/refocus/RefocusView;->access$200(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v10

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aget v11, v5, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v10, v3, v11}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendRelightingSource(II)V

    .line 123
    .end local v1    # "centerX":F
    .end local v4    # "centerY":F
    .end local v5    # "currentLightingPoint":[F
    .end local v6    # "currentX":F
    .end local v7    # "currentY":F
    .end local v8    # "radius":F
    .end local v9    # "distance":F
    :cond_1
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 83
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 88
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 89
    .local v1, "y":I
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusView;->access$000(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusView$Callback;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/extraphoto/refocus/RefocusView$Callback;->getDisplayMode()Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    move-result-object v2

    sget-object v3, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_STATIC:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    if-ne v2, v3, :cond_0

    .line 90
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v2, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusView;->access$100(Lcom/miui/extraphoto/refocus/RefocusView;II)V

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusView$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusView;->access$200(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendOnSingleTapUp(II)V

    .line 93
    const/4 v2, 0x1

    return v2
.end method
