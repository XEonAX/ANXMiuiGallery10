.class Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;
.super Ljava/lang/Object;
.source "CollageLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGestureListener"
.end annotation


# instance fields
.field private mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

.field private mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

.field private mIsLongPressMode:Z

.field private mLastX:F

.field private mLastY:F

.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/CollageLayout$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;)V

    return-void
.end method


# virtual methods
.method onActionMove(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 261
    .local v0, "currentX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 262
    .local v1, "currentY":F
    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mLastX:F

    sub-float v2, v0, v4

    .line 263
    .local v2, "distanceX":F
    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mLastY:F

    sub-float v3, v1, v4

    .line 264
    .local v3, "distanceY":F
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v4, :cond_0

    .line 265
    iget-boolean v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mIsLongPressMode:Z

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v4}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$900(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->receiveScrollEvent(FF)V

    .line 267
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$300(Lcom/miui/gallery/collage/widget/CollageLayout;FF)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 268
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eq v4, v5, :cond_1

    .line 269
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-static {v4, v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$600(Lcom/miui/gallery/collage/widget/CollageLayout;Landroid/view/View;)V

    .line 275
    :cond_0
    :goto_0
    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mLastX:F

    .line 276
    iput v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mLastY:F

    .line 277
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v4}, Lcom/miui/gallery/collage/widget/CollageLayout;->invalidate()V

    .line 278
    return-void

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$300(Lcom/miui/gallery/collage/widget/CollageLayout;FF)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mLastX:F

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mLastY:F

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mIsLongPressMode:Z

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$402(Lcom/miui/gallery/collage/widget/CollageLayout;Z)Z

    .line 183
    return v3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    const-string v2, "CollageLayout"

    const-string v3, "onLongPress"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->dismissControlWindow()V

    .line 227
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mIsLongPressMode:Z

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 229
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 230
    .local v1, "y":F
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$900(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->enableDragMode(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 231
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I

    .line 232
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->setDrawBitmap(Z)V

    .line 233
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$1000(Lcom/miui/gallery/collage/widget/CollageLayout;)V

    .line 234
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->invalidate()V

    .line 236
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 284
    .local v0, "currentScale":F
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->appendScale(FFF)V

    .line 286
    .end local v0    # "currentScale":F
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 297
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v0, :cond_0

    .line 215
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mIsLongPressMode:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/widget/CollageImageView;->transition(FF)V

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, -0x1

    .line 193
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$500(Lcom/miui/gallery/collage/widget/CollageLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 195
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v1, v4}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I

    .line 196
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->dismissControlWindow()V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->invalidate()V

    .line 209
    const/4 v1, 0x1

    return v1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$600(Lcom/miui/gallery/collage/widget/CollageLayout;Landroid/view/View;)V

    .line 199
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 200
    .local v0, "location":[I
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getLocationInWindow([I)V

    .line 201
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$700(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->showAtLocation(Landroid/view/View;Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$800(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->setCollageSingleView(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    goto :goto_0

    .line 205
    .end local v0    # "location":[I
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v1, v4}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->dismissControlWindow()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mIsLongPressMode:Z

    if-eqz v0, :cond_2

    .line 245
    iput-boolean v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mIsLongPressMode:Z

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eq v0, v1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$900(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->exchangeBitmapWithAnim(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->invalidate()V

    .line 257
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$900(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->resetBitmapWithAnim()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapLocation()V

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$402(Lcom/miui/gallery/collage/widget/CollageLayout;Z)Z

    goto :goto_0
.end method
