.class public Lcom/miui/internal/widget/ActionBarContextView;
.super Lcom/miui/internal/widget/a;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;,
        Lcom/miui/internal/widget/ActionBarContextView$SavedState;
    }
.end annotation


# static fields
.field private static final qe:I = 0x0

.field private static final qf:I = 0x1

.field private static final qg:I = 0x2


# instance fields
.field private cp:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private pM:Landroid/graphics/drawable/Drawable;

.field private pR:Z

.field private final qh:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

.field private qi:Landroid/widget/LinearLayout;

.field private qj:Landroid/widget/Button;

.field private qk:Landroid/widget/Button;

.field private ql:I

.field private qm:Z

.field private qn:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private qo:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private qp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private qq:Landroid/animation/Animator;

.field private qr:I

.field private qs:I

.field private qt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private qu:F

.field private qv:Z

.field private qw:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 112
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qh:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    .line 95
    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContextView$1;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qw:Landroid/view/View$OnClickListener;

    .line 118
    sget-object v0, Lmiui/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 119
    sget v0, Lmiui/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    sget v0, Lmiui/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->ql:I

    .line 124
    sget v0, Lmiui/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 126
    sget v0, Lmiui/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->pM:Landroid/graphics/drawable/Drawable;

    .line 129
    new-instance v8, Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 130
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x1020019

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->qn:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 131
    new-instance v8, Lcom/miui/internal/view/menu/ActionMenuItem;

    sget v0, Lmiui/R$string;->action_mode_select_all:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x102001a

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->qo:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 134
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContextView;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qr:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContextView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qn:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qo:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qp:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c(II)V
    .registers 4

    .line 537
    const v0, 0x1020019

    if-ne p1, v0, :cond_8

    .line 538
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    goto :goto_11

    .line 539
    :cond_8
    const v0, 0x102001a

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 540
    :goto_11
    if-nez p1, :cond_14

    .line 541
    return-void

    .line 543
    :cond_14
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_light:I

    if-eq v0, p2, :cond_78

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_dark:I

    if-ne v0, p2, :cond_1d

    goto :goto_78

    .line 546
    :cond_1d
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_light:I

    if-eq v0, p2, :cond_6a

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_dark:I

    if-ne v0, p2, :cond_26

    goto :goto_6a

    .line 549
    :cond_26
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_light:I

    if-eq v0, p2, :cond_5c

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_dark:I

    if-ne v0, p2, :cond_2f

    goto :goto_5c

    .line 552
    :cond_2f
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_light:I

    if-eq v0, p2, :cond_4e

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_dark:I

    if-ne v0, p2, :cond_38

    goto :goto_4e

    .line 555
    :cond_38
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_light:I

    if-eq v0, p2, :cond_40

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_dark:I

    if-ne v0, p2, :cond_85

    .line 557
    :cond_40
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->delete_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_85

    .line 554
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->deselect_all_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_85

    .line 551
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->select_all_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_85

    .line 548
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->confirm_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_85

    .line 545
    :cond_78
    :goto_78
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->cancel_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 559
    :cond_85
    :goto_85
    return-void
.end method

.method static synthetic d(Lcom/miui/internal/widget/ActionBarContextView;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qr:I

    return p0
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    .line 606
    if-nez p1, :cond_3

    .line 607
    return-void

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    if-nez v0, :cond_e

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    .line 613
    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->animateToVisibility(I)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .registers 2

    .line 563
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    .line 565
    if-eqz p1, :cond_d

    .line 567
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 568
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->pR:Z

    goto :goto_14

    .line 570
    :cond_d
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 572
    :goto_14
    return-void
.end method

.method ba()I
    .registers 2

    .line 211
    const v0, 0x1010394

    return v0
.end method

.method protected cancelAnimation()V
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    .line 423
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    .line 426
    :cond_c
    return-void
.end method

.method public closeMode()V
    .registers 2

    .line 299
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->endAnimation()V

    .line 300
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qr:I

    .line 301
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .registers 1

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->dismissPopupMenus()V

    return-void
.end method

.method protected endAnimation()V
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    .line 430
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    .line 433
    :cond_c
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 335
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 340
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getAnimationProgress()F
    .registers 2

    .line 436
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:F

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    nop

    :cond_f
    return v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 10

    .line 256
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    .line 258
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    .line 260
    :cond_a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qp:Ljava/lang/ref/WeakReference;

    .line 263
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuBuilder;

    .line 264
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_24

    .line 265
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 267
    :cond_24
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_mode_menu_item_layout:I

    sget v6, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v7, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 272
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 273
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setActionEditMode(Z)V

    .line 275
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_69

    .line 279
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 280
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 281
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ae

    .line 285
    :cond_69
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 286
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 285
    invoke-virtual {v4, v5, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 288
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 289
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_84

    move v2, v3

    nop

    :cond_84
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 290
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_8d

    const/16 v1, 0x11

    goto :goto_8f

    :cond_8d
    const/16 v1, 0x50

    :goto_8f
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 291
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 292
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 293
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->pM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1, v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    :goto_ae
    return-void
.end method

.method protected initTitle()V
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_63

    .line 225
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    sget v2, Lcom/miui/internal/R$layout;->action_mode_title_item:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    .line 230
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    const v2, 0x102001a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    if-eqz v0, :cond_3c

    .line 233
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_3c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    if-eqz v0, :cond_47

    .line 237
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_47
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->cp:Landroid/widget/TextView;

    .line 241
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->ql:I

    if-eqz v0, :cond_63

    .line 242
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->cp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->ql:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 246
    :cond_63
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->cp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 249
    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_77

    goto :goto_79

    :cond_77
    const/16 v1, 0x8

    :goto_79
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_89

    .line 251
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 253
    :cond_89
    return-void
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .registers 2

    .line 411
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qm:Z

    return v0
.end method

.method public killMode()V
    .registers 4

    .line 304
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 305
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 306
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    .line 309
    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1a

    .line 310
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 312
    :cond_1a
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 313
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qp:Ljava/lang/ref/WeakReference;

    .line 314
    return-void
.end method

.method protected makeInOutAnimator(Z)Landroid/animation/Animator;
    .registers 15

    .line 445
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qv:Z

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    .line 446
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    return-object p1

    .line 448
    :cond_e
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qv:Z

    .line 455
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 456
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getHeight()I

    move-result v1

    .line 457
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getTranslationY()F

    move-result v0

    .line 458
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_2b

    .line 459
    nop

    .line 460
    nop

    .line 461
    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 462
    nop

    .line 470
    move v11, v1

    move v1, v0

    move v0, v11

    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_30

    .line 464
    :cond_2b
    nop

    .line 465
    nop

    .line 466
    nop

    .line 467
    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 470
    :goto_30
    const-string v4, "Alpha"

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v3, v6, v2

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 472
    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    const-wide/16 v8, 0x0

    if-nez v4, :cond_48

    .line 473
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 476
    :cond_48
    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_56

    .line 478
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qh:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->withFinalVisibility(Z)Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    return-object v3

    .line 482
    :cond_56
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const-string v6, "TranslationY"

    new-array v10, v5, [F

    aput v0, v10, v7

    aput v1, v10, v2

    invoke-static {v4, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 485
    const-string v1, "AnimationProgress"

    new-array v4, v5, [F

    fill-array-data v4, :array_9e

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 487
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 488
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v7

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 489
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qh:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->withFinalVisibility(Z)Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_98

    const-wide/16 v8, 0x12c

    nop

    :cond_98
    invoke-virtual {v4, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 492
    iput-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qq:Landroid/animation/Animator;

    .line 494
    return-object v4

    :array_9e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .registers 4

    .line 596
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    if-nez v0, :cond_5

    .line 597
    return-void

    .line 599
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 600
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    .line 601
    goto :goto_b

    .line 602
    :cond_1b
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .registers 4

    .line 576
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    if-nez v0, :cond_5

    .line 577
    return-void

    .line 579
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 580
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    .line 581
    goto :goto_b

    .line 582
    :cond_1b
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    if-nez v0, :cond_5

    .line 587
    return-void

    .line 589
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 590
    invoke-interface {v1, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    .line 591
    goto :goto_b

    .line 592
    :cond_1b
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 143
    invoke-super {p0}, Lcom/miui/internal/widget/a;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_12

    .line 145
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 146
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 148
    :cond_12
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 390
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result p1

    .line 391
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:I

    add-int/2addr v0, v1

    .line 392
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:I

    sub-int/2addr p5, p3

    .line 394
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_2c

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    const/16 v1, 0x8

    if-eq p3, v1, :cond_2c

    .line 395
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p1, v0, p5}, Lcom/miui/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    .line 398
    :cond_2c
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p4, p1

    .line 399
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_43

    .line 400
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1, p4, v0, p5}, Lcom/miui/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    .line 403
    :cond_43
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->pR:Z

    if-eqz p1, :cond_54

    .line 404
    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qr:I

    .line 405
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 406
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->pR:Z

    .line 408
    :cond_54
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 351
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 353
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v0, :cond_b

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_f

    :cond_b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 355
    :goto_f
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 357
    sub-int/2addr p2, v0

    .line 358
    const/high16 v2, -0x80000000

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 359
    nop

    .line 361
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_46

    .line 362
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v1, p2, v3}, Lcom/miui/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 363
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_47

    .line 366
    :cond_46
    move v2, v3

    :goto_47
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_67

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_67

    .line 367
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 368
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 369
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v2, p2

    .line 372
    :cond_67
    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz p2, :cond_8f

    .line 373
    nop

    .line 374
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getChildCount()I

    move-result p2

    .line 375
    move v1, v3

    move v2, v1

    :goto_72
    if-ge v1, p2, :cond_84

    .line 376
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 377
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 378
    if-le v4, v2, :cond_81

    .line 379
    nop

    .line 375
    move v2, v4

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 382
    :cond_84
    if-lez v2, :cond_8b

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:I

    add-int v3, v2, p2

    nop

    :cond_8b
    invoke-virtual {p0, p1, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 383
    goto :goto_9b

    .line 384
    :cond_8f
    if-lez v2, :cond_98

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:I

    add-int v3, p2, v0

    nop

    :cond_98
    invoke-virtual {p0, p1, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 386
    :goto_9b
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 200
    check-cast p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    .line 201
    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    iget-object v0, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qy:Ljava/lang/CharSequence;

    const v1, 0x102001a

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    .line 204
    iget-boolean p1, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qz:Z

    if-eqz p1, :cond_1d

    .line 205
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->postShowOverflowMenu()V

    .line 207
    :cond_1d
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 189
    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    invoke-super {p0}, Lcom/miui/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 190
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qz:Z

    .line 191
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    .line 192
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    if-eqz v1, :cond_21

    .line 193
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qy:Ljava/lang/CharSequence;

    .line 195
    :cond_21
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 345
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 346
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->postShowOverflowMenu()V

    return-void
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    .line 618
    if-nez p1, :cond_3

    .line 619
    return-void

    .line 621
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 622
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 624
    :cond_c
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    .line 440
    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:F

    .line 441
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qv:Z

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:F

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    .line 442
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .registers 6

    .line 498
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 499
    const/4 v0, 0x0

    const/16 v1, 0x8

    const v2, 0x1020019

    if-ne p1, v2, :cond_27

    .line 500
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    if-eqz p1, :cond_21

    .line 501
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v0, v1

    nop

    :cond_19
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :cond_21
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qn:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_47

    .line 505
    :cond_27
    const v2, 0x102001a

    if-ne p1, v2, :cond_47

    .line 506
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    if-eqz p1, :cond_42

    .line 507
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v0, v1

    nop

    :cond_3a
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    :cond_42
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qo:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 512
    :cond_47
    :goto_47
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .registers 8

    .line 515
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 516
    const/4 v0, 0x0

    const/16 v1, 0x8

    const v2, 0x1020019

    if-ne p1, v2, :cond_2e

    .line 517
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    if-eqz v2, :cond_28

    .line 518
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez p3, :cond_1b

    move v0, v1

    nop

    :cond_1b
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qj:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 522
    :cond_28
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qn:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_55

    .line 523
    :cond_2e
    const v2, 0x102001a

    if-ne p1, v2, :cond_55

    .line 524
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    if-eqz v2, :cond_50

    .line 525
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    if-nez p3, :cond_43

    move v0, v1

    nop

    :cond_43
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qk:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 529
    :cond_50
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qo:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 531
    :cond_55
    :goto_55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_60

    if-eqz p3, :cond_60

    .line 532
    invoke-direct {p0, p1, p3}, Lcom/miui/internal/widget/ActionBarContextView;->c(II)V

    .line 534
    :cond_60
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setContentHeight(I)V

    return-void
.end method

.method public setContentInset(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:I

    .line 139
    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 8

    .line 152
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_83

    .line 153
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_80

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    if-nez p1, :cond_36

    .line 159
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 160
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    if-eqz v1, :cond_30

    .line 163
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_30
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    goto :goto_80

    .line 168
    :cond_36
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 169
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    .line 168
    invoke-virtual {v3, v4, v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 171
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 172
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_55

    const/16 v1, 0x11

    goto :goto_57

    :cond_55
    const/16 v1, 0x50

    :goto_57
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 175
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->pM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 177
    if-eqz v1, :cond_79

    .line 178
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    :cond_79
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_80
    :goto_80
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitActionBar(Z)V

    .line 185
    :cond_83
    return-void
.end method

.method public bridge synthetic setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 221
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3

    .line 415
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qm:Z

    if-eq p1, v0, :cond_7

    .line 416
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->requestLayout()V

    .line 418
    :cond_7
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qm:Z

    .line 419
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setVisibility(I)V

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
