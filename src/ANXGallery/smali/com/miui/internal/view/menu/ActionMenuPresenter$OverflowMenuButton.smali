.class Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 4

    .line 474
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 475
    invoke-static {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 477
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 479
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 480
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 481
    return-void
.end method

.method private isVisible()Z
    .registers 4

    .line 484
    nop

    .line 485
    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 487
    const/4 v1, 0x0

    .line 488
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    .line 489
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_17

    .line 491
    :cond_16
    move-object v0, v1

    :goto_17
    goto :goto_2

    .line 492
    :cond_18
    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method


# virtual methods
.method public needsDividerAfter()Z
    .registers 2

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .registers 5

    .line 497
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 498
    return v1

    .line 501
    :cond_8
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    .line 502
    return v1

    .line 505
    :cond_f
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2a

    .line 506
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v2, v2, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->b(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 509
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 510
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 511
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    goto :goto_3f

    .line 513
    :cond_3a
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mV:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 515
    :goto_3f
    return v1
.end method
