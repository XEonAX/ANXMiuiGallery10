.class public Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field qA:Z

.field private qB:Z

.field final synthetic qx:Lcom/miui/internal/widget/ActionBarContextView;


# direct methods
.method protected constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qB:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 703
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qB:Z

    .line 704
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 684
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qB:Z

    if-eqz p1, :cond_5

    .line 685
    return-void

    .line 688
    :cond_5
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qA:Z

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    .line 689
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarContextView;->d(Lcom/miui/internal/widget/ActionBarContextView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    .line 690
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    .line 692
    :cond_1a
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->a(Lcom/miui/internal/widget/ActionBarContextView;I)I

    .line 694
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/internal/widget/ActionBarContextView;->a(Lcom/miui/internal/widget/ActionBarContextView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 695
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qA:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 696
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_4d

    .line 697
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qA:Z

    if-eqz v1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 699
    :cond_4d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 708
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 677
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 678
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qB:Z

    .line 679
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qx:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qA:Z

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationStart(Z)V

    .line 680
    return-void
.end method

.method public withFinalVisibility(Z)Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;
    .registers 2

    .line 671
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qA:Z

    .line 672
    return-object p0
.end method
