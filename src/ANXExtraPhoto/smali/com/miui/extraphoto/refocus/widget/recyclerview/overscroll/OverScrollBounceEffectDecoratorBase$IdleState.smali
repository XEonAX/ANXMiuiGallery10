.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;
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
    name = "IdleState"
.end annotation


# instance fields
.field final mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    .line 117
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    .line 119
    return-void
.end method


# virtual methods
.method public getStateId()I
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public handleEntryTransition(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 0
    .param p1, "fromState"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 157
    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 129
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v1, v0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 131
    return v2

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    invoke-interface {v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->isInAbsoluteStart()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    .line 136
    invoke-interface {v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->isInAbsoluteEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v1, :cond_3

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    .line 140
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v2, v2, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    iput v2, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    .line 141
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v2, v2, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    iput-boolean v2, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    .line 143
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {v1, v2}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 144
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {v1, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 147
    :cond_3
    return v2
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 152
    const/4 v0, 0x0

    return v0
.end method
