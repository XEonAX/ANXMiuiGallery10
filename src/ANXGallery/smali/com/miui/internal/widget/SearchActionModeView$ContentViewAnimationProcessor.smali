.class Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentViewAnimationProcessor"
.end annotation


# instance fields
.field bL:Lmiui/view/ViewPager;

.field final synthetic vX:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 6

    .line 642
    if-eqz p1, :cond_87

    .line 643
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2a

    .line 644
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 645
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->a(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 647
    :cond_2a
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 648
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->h(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 650
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 651
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->d(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 653
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->i(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;I)I

    goto :goto_98

    .line 655
    :cond_87
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 656
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 658
    :goto_98
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getViewPager()Lmiui/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->bL:Lmiui/view/ViewPager;

    .line 659
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->bL:Lmiui/view/ViewPager;

    if-eqz v0, :cond_af

    .line 660
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->bL:Lmiui/view/ViewPager;

    if-eqz p1, :cond_aa

    const/4 p1, 0x0

    goto :goto_ac

    :cond_aa
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_ac
    invoke-virtual {v0, p1}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    .line 662
    :cond_af
    return-void
.end method

.method public onStop(Z)V
    .registers 7

    .line 679
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_23

    .line 680
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->l(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 681
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 683
    :cond_23
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 684
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 686
    :cond_40
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    if-lez v2, :cond_5d

    .line 687
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 688
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz p1, :cond_59

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    goto :goto_5a

    :cond_59
    move v4, v3

    :goto_5a
    invoke-virtual {v2, v4, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 690
    :cond_5d
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->bL:Lmiui/view/ViewPager;

    if-eqz v2, :cond_6a

    .line 691
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->bL:Lmiui/view/ViewPager;

    if-eqz p1, :cond_66

    goto :goto_67

    :cond_66
    move v0, v1

    :goto_67
    invoke-virtual {v2, v0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    .line 693
    :cond_6a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->bL:Lmiui/view/ViewPager;

    .line 694
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 5

    .line 666
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_6

    .line 667
    sub-float p2, v0, p2

    .line 669
    :cond_6
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 670
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 672
    :cond_1c
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 673
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->l(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->j(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->k(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 674
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->h(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->i(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setTranslationY(F)V

    .line 675
    return-void
.end method
