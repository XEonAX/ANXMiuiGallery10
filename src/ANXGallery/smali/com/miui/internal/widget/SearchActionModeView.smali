.class public Lcom/miui/internal/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/os/MessageQueue$IdleHandler;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/internal/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;
    }
.end annotation


# instance fields
.field private ca:Lcom/miui/internal/widget/ActionBarContainer;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private pR:Z

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

.field private vA:Landroid/widget/EditText;

.field private vB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vC:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vE:[I

.field private vF:I

.field private vG:I

.field private vH:I

.field private vI:I

.field private vJ:I

.field private vK:I

.field private vL:I

.field private vM:I

.field private vN:I

.field private vO:I

.field private vP:I

.field private vQ:Z

.field private vR:Landroid/animation/ObjectAnimator;

.field private vS:Lcom/miui/internal/widget/ActionBarContainer;

.field private vT:Landroid/view/View;

.field private vU:Z

.field private vV:I

.field private vW:I

.field private vz:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vE:[I

    .line 97
    const p1, 0x7fffffff

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vV:I

    .line 103
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vV:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/SearchActionModeView;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vF:I

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vA:Landroid/widget/EditText;

    return-object p0
.end method

.method private bR()V
    .registers 2

    .line 496
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bS()V

    .line 497
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bT()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 498
    return-void
.end method

.method private bS()V
    .registers 2

    .line 501
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bT()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 502
    return-void
.end method

.method private bT()Landroid/os/MessageQueue;
    .registers 2

    .line 505
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method private bU()Z
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vC:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic c(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vK:I

    return p0
.end method

.method static synthetic c(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vG:I

    return p1
.end method

.method static synthetic d(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vJ:I

    return p0
.end method

.method static synthetic d(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vH:I

    return p1
.end method

.method static synthetic e(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vV:I

    return p0
.end method

.method static synthetic e(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vI:I

    return p1
.end method

.method static synthetic f(Lcom/miui/internal/widget/SearchActionModeView;)[I
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vE:[I

    return-object p0
.end method

.method static synthetic g(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vB:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .registers 3

    .line 482
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_e

    .line 484
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 486
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic h(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vF:I

    return p0
.end method

.method static synthetic i(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vG:I

    return p0
.end method

.method static synthetic j(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vH:I

    return p0
.end method

.method static synthetic k(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vI:I

    return p0
.end method

.method static synthetic l(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vC:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n(Lcom/miui/internal/widget/SearchActionModeView;)Z
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bU()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    .line 160
    if-nez p1, :cond_3

    .line 161
    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    if-nez v0, :cond_e

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    .line 167
    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 446
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 447
    move p1, v0

    goto :goto_9

    .line 446
    :cond_5
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 447
    :goto_9
    if-nez p1, :cond_1e

    .line 448
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    if-eqz p1, :cond_14

    .line 449
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_14
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vA:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_2d

    .line 452
    :cond_1e
    iget p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vL:I

    if-nez p1, :cond_2d

    .line 453
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    if-eqz p1, :cond_2d

    .line 454
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 457
    :cond_2d
    :goto_2d
    return-void
.end method

.method public animateToVisibility(Z)V
    .registers 4

    .line 114
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 115
    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->pR:Z

    .line 116
    return-void

    .line 119
    :cond_8
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->pollViews()V

    .line 121
    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    .line 122
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    .line 123
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->createAnimationListeners()V

    .line 124
    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    .line 125
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    .line 127
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    .line 128
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bU()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 129
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->requestLayout()V

    .line 130
    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->pR:Z

    goto :goto_30

    .line 132
    :cond_2b
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 135
    :goto_30
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    if-nez p1, :cond_49

    .line 137
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 140
    :cond_49
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 437
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_8
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vL:I

    .line 438
    return-void
.end method

.method public closeMode()V
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 199
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 201
    :cond_9
    return-void
.end method

.method protected createAnimationListeners()V
    .registers 3

    .line 509
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    if-nez v0, :cond_b

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    .line 513
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bU()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 515
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_39
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 522
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_49
    return-void
.end method

.method protected finishAnimation()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_c

    .line 230
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    .line 233
    :cond_c
    return-void
.end method

.method protected getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_53

    .line 278
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 279
    if-eqz v0, :cond_2b

    .line 280
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->action_bar_container:I

    if-ne v3, v4, :cond_28

    instance-of v3, v2, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_28

    .line 283
    check-cast v2, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    .line 284
    goto :goto_2b

    .line 280
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 288
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_53

    .line 289
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vW:I

    .line 291
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vW:I

    if-lez v0, :cond_53

    .line 292
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vJ:I

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->vW:I

    add-int/2addr v1, v2

    .line 294
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v3

    .line 292
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    .line 298
    :cond_53
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method protected getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-nez v0, :cond_14

    .line 319
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_14

    .line 321
    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 324
    :cond_14
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v0
.end method

.method public getAnimationProgress()F
    .registers 2

    .line 220
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qu:F

    return v0
.end method

.method protected getDimView()Landroid/view/View;
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    if-nez v0, :cond_12

    .line 329
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_12

    .line 331
    sget v1, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    .line 334
    :cond_12
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vT:Landroid/view/View;

    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vA:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vS:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_29

    .line 303
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_29

    .line 305
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_26

    instance-of v3, v2, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_26

    .line 308
    check-cast v2, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->vS:Lcom/miui/internal/widget/ActionBarContainer;

    .line 309
    goto :goto_29

    .line 305
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 314
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vS:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method protected getViewPager()Lmiui/view/ViewPager;
    .registers 3

    .line 348
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 349
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl;

    .line 350
    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 351
    sget v1, Lcom/miui/internal/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager;

    return-object v0

    .line 353
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 2

    .line 433
    return-void
.end method

.method public killMode()V
    .registers 3

    .line 205
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->finishAnimation()V

    .line 206
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 207
    if-eqz v0, :cond_e

    .line 208
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    .line 211
    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 212
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 213
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 214
    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    .line 216
    :cond_1e
    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vS:Lcom/miui/internal/widget/ActionBarContainer;

    .line 217
    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    .line 237
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    .line 239
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bS()V

    .line 241
    :cond_f
    const-string v0, "AnimationProgress"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_34

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x12c

    goto :goto_27

    :cond_25
    const-wide/16 v1, 0x0

    :goto_27
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    return-object v0

    nop

    :array_34
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .registers 4

    .line 548
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    if-nez v0, :cond_5

    .line 549
    return-void

    .line 551
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 552
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    .line 553
    goto :goto_b

    .line 554
    :cond_1b
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    if-nez v0, :cond_5

    .line 529
    return-void

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 532
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    .line 533
    goto :goto_b

    .line 534
    :cond_1b
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .registers 5

    .line 538
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    if-nez v0, :cond_5

    .line 539
    return-void

    .line 541
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 542
    invoke-interface {v1, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    .line 543
    goto :goto_b

    .line 544
    :cond_1b
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 424
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vU:Z

    .line 425
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 390
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vU:Z

    if-eqz p1, :cond_5

    .line 391
    return-void

    .line 393
    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    .line 394
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    .line 395
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    if-eqz p1, :cond_1b

    .line 396
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vA:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_24

    .line 398
    :cond_1b
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vA:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lmiui/view/inputmethod/InputMethodHelper;->hideKeyBoard(Landroid/widget/EditText;)V

    .line 401
    :goto_24
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_2e

    .line 402
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setResultViewMargin(Z)V

    goto :goto_36

    .line 404
    :cond_2e
    new-instance p1, Lcom/miui/internal/widget/SearchActionModeView$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/widget/SearchActionModeView$1;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->post(Ljava/lang/Runnable;)Z

    .line 412
    :goto_36
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 413
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vK:I

    goto :goto_42

    :cond_41
    move v0, p1

    :goto_42
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 415
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    if-nez v0, :cond_53

    .line 416
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    .line 417
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 418
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->killMode()V

    .line 420
    :cond_53
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 429
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 376
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vU:Z

    .line 377
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    if-eqz v0, :cond_d

    .line 378
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    goto :goto_1a

    .line 380
    :cond_d
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_1a

    .line 383
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    if-ne p1, v0, :cond_d

    .line 462
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vz:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 464
    :cond_d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 250
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 251
    sget v0, Lcom/miui/internal/R$id;->search_btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vz:Landroid/view/View;

    .line 252
    const v0, 0x1020009

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vA:Landroid/widget/EditText;

    .line 253
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vJ:I

    .line 254
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_2e

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vO:I

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vP:I

    .line 259
    :cond_2e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 264
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 265
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->pR:Z

    if-eqz p1, :cond_25

    .line 266
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    if-eqz p1, :cond_1f

    .line 267
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bU()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 268
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vC:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->vH:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 271
    :cond_1f
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bR()V

    .line 272
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->pR:Z

    .line 274
    :cond_25
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 442
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 109
    const/4 p1, 0x1

    return p1
.end method

.method protected pollViews()V
    .registers 1

    .line 338
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    .line 339
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    .line 340
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    .line 341
    return-void
.end method

.method public queueIdle()Z
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vR:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    .line 172
    if-nez p1, :cond_3

    .line 173
    return-void

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 176
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    :cond_c
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    .line 147
    if-eqz p1, :cond_9

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vB:Ljava/lang/ref/WeakReference;

    .line 150
    :cond_9
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .registers 3

    .line 153
    if-eqz p1, :cond_9

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vC:Ljava/lang/ref/WeakReference;

    .line 156
    :cond_9
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    .line 224
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qu:F

    .line 225
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qv:Z

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qu:F

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    .line 226
    return-void
.end method

.method protected setContentViewPadding(II)V
    .registers 7

    .line 474
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_17

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->vO:I

    add-int/2addr p1, v2

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->vP:I

    add-int/2addr p2, v3

    .line 476
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 479
    :cond_17
    return-void
.end method

.method protected setContentViewTranslation(I)V
    .registers 3

    .line 467
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_a

    .line 469
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 471
    :cond_a
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vz:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method protected setOverlayMode(Z)V
    .registers 3

    .line 344
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 345
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .registers 3

    .line 181
    if-eqz p1, :cond_1e

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vD:Ljava/lang/ref/WeakReference;

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 184
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 185
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vM:I

    .line 186
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vN:I

    .line 187
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vQ:Z

    .line 190
    :cond_1e
    return-void
.end method

.method protected setResultViewMargin(Z)V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vD:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vQ:Z

    if-eqz v0, :cond_2c

    .line 360
    if-eqz p1, :cond_16

    .line 362
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vK:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vW:I

    sub-int/2addr p1, v0

    .line 363
    const/4 v0, 0x0

    goto :goto_1a

    .line 365
    :cond_16
    iget p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vM:I

    .line 366
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vN:I

    .line 368
    :goto_1a
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 369
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 370
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 372
    :cond_2c
    return-void
.end method

.method public setStatusBarPaddingTop(I)V
    .registers 2

    .line 557
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vK:I

    .line 558
    return-void
.end method
