.class Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;
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
    name = "DimViewAnimationProcessor"
.end annotation


# instance fields
.field final synthetic vX:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 3

    .line 701
    if-eqz p1, :cond_21

    .line 702
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 706
    :cond_21
    return-void
.end method

.method public onStop(Z)V
    .registers 3

    .line 719
    const/16 v0, 0x8

    if-eqz p1, :cond_1e

    .line 720
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_3c

    .line 721
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    .line 724
    :cond_1e
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 726
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 728
    :cond_3c
    :goto_3c
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 3

    .line 710
    if-eqz p1, :cond_3

    goto :goto_7

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 711
    :goto_7
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 712
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->n(Lcom/miui/internal/widget/SearchActionModeView;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 713
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->vX:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p2}, Lcom/miui/internal/widget/SearchActionModeView;->l(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 715
    :cond_31
    return-void
.end method
