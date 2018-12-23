.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverScrollingState"
.end annotation


# instance fields
.field mCurrDragState:I

.field final mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field protected final mTouchDragRatioBck:F

.field protected final mTouchDragRatioFwd:F

.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;FF)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;
    .param p2, "touchDragRatioFwd"    # F
    .param p3, "touchDragRatioBck"    # F

    .line 179
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    .line 181
    iput p2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    .line 182
    iput p3, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    .line 183
    return-void
.end method


# virtual methods
.method public getStateId()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mCurrDragState:I

    return v0
.end method

.method public handleEntryTransition(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 1
    .param p1, "fromState"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 244
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mCurrDragState:I

    .line 245
    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 197
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 199
    return v3

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v2, v0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    return v3

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v2, v2, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDeltaOffset:F

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v4, v4, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    :goto_0
    div-float/2addr v2, v4

    .line 209
    .local v2, "deltaOffset":F
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v4, v4, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    add-float/2addr v4, v2

    .line 214
    .local v4, "newOffset":F
    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpg-float v5, v4, v5

    if-lez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_5

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    invoke-virtual {v1, v0, v5, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 218
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-virtual {v1, v5}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 219
    return v3

    .line 222
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 227
    .local v5, "dt":J
    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_7

    .line 228
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    long-to-float v7, v5

    div-float v7, v2, v7

    iput v7, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    .line 231
    :cond_7
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v0, v4}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    .line 233
    return v3
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 238
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 239
    const/4 v0, 0x0

    return v0
.end method
