.class public Lcom/miui/internal/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private aR:Lmiui/app/ActionBar;

.field private aT:I

.field private bg:Landroid/view/View;

.field protected mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field protected mContentView:Landroid/view/View;

.field private pI:Lcom/miui/internal/widget/ActionBarContextView;

.field private qU:Lcom/miui/internal/widget/ActionBarContainer;

.field private qV:Landroid/view/Window$Callback;

.field private qW:Z

.field private qX:Z

.field private qY:Z

.field private qZ:Z

.field private ra:Landroid/graphics/drawable/Drawable;

.field private rb:Landroid/graphics/Paint;

.field private rc:Landroid/graphics/Bitmap;

.field private rd:Landroid/graphics/Bitmap;

.field private re:Landroid/graphics/Bitmap;

.field private rf:Landroid/graphics/Bitmap;

.field private rg:Landroid/util/TypedValue;

.field private rh:Landroid/util/TypedValue;

.field private ri:Landroid/util/TypedValue;

.field private rj:Landroid/util/TypedValue;

.field private rk:Z

.field private rl:Landroid/graphics/Rect;

.field private rm:Landroid/graphics/Rect;

.field private rn:Landroid/graphics/Rect;

.field private ro:Landroid/graphics/Rect;

.field private rp:Landroid/graphics/Rect;

.field private rq:Landroid/graphics/Rect;

.field private rr:Landroid/graphics/Rect;

.field private rs:Lcom/miui/internal/view/menu/ContextMenuBuilder;

.field private rt:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field private ru:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field private rv:Lmiui/app/OnStatusBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Z

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rl:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rm:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rp:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rr:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ru:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    .line 141
    sget-object v0, Lcom/miui/internal/R$styleable;->Window:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 143
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 144
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rg:Landroid/util/TypedValue;

    .line 145
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rg:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 147
    :cond_5c
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 148
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rh:Landroid/util/TypedValue;

    .line 149
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rh:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 151
    :cond_72
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_88

    .line 152
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ri:Landroid/util/TypedValue;

    .line 153
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ri:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 155
    :cond_88
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 156
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rj:Landroid/util/TypedValue;

    .line 157
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rj:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 160
    :cond_9e
    sget p2, Lmiui/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Z

    .line 161
    iget-boolean p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Z

    if-eqz p2, :cond_b2

    .line 162
    sget p2, Lmiui/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/drawable/Drawable;

    .line 164
    :cond_b2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bg:Landroid/view/View;

    return-object p0
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 251
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    .line 252
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    .line 255
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 256
    if-eqz v0, :cond_f

    if-eqz v1, :cond_16

    :cond_f
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Z

    if-nez p1, :cond_16

    .line 258
    const/4 p1, 0x0

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 260
    :cond_16
    return-void
.end method

.method private a(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 646
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 9

    .line 263
    nop

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    const/4 v0, 0x1

    if-eqz p3, :cond_17

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v1, :cond_17

    .line 266
    nop

    .line 267
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 269
    move p3, v0

    goto :goto_18

    :cond_17
    const/4 p3, 0x0

    :goto_18
    if-eqz p4, :cond_26

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v1, :cond_26

    .line 270
    nop

    .line 271
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 273
    move p3, v0

    :cond_26
    if-eqz p6, :cond_34

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_34

    .line 274
    nop

    .line 275
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 277
    move p3, v0

    :cond_34
    if-eqz p5, :cond_42

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p5, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p5, :cond_42

    .line 278
    nop

    .line 279
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 281
    move p3, v0

    :cond_42
    return p3
.end method

.method static synthetic b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method private b(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .registers 3

    .line 694
    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_a

    .line 695
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0

    .line 697
    :cond_a
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method private bi()Z
    .registers 7

    .line 518
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 519
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLocationOnScreen([I)V

    .line 520
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 521
    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    aget v3, v0, v4

    if-eqz v3, :cond_30

    aget v3, v0, v2

    .line 522
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v3, v5, :cond_30

    aget v0, v0, v4

    .line 523
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v0, v1, :cond_30

    .line 521
    move v2, v4

    goto :goto_31

    .line 523
    :cond_30
    nop

    .line 521
    :goto_31
    return v2
.end method

.method private bj()V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_60

    .line 571
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 572
    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bg:Landroid/view/View;

    .line 574
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bg:Landroid/view/View;

    if-eqz v0, :cond_30

    .line 575
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bg:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->window_content_mask_oled:I

    .line 576
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 578
    :cond_30
    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    .line 579
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_56

    .line 580
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->pI:Lcom/miui/internal/widget/ActionBarContextView;

    .line 581
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 583
    :cond_56
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Lcom/miui/internal/widget/ActionBarContainer;

    .line 585
    :cond_60
    return-void
.end method

.method private bk()Z
    .registers 2

    .line 604
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    .line 605
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 607
    :goto_b
    return v0
.end method

.method private bl()I
    .registers 5

    .line 611
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 612
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 613
    if-lez v1, :cond_15

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 616
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private bm()V
    .registers 2

    .line 863
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rt:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_c

    .line 864
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rt:Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rs:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    .line 867
    :cond_c
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bm()V

    return-void
.end method

.method private m(I)I
    .registers 8

    .line 442
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 443
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 445
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_58

    .line 446
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 447
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    .line 449
    :cond_21
    move v2, v4

    :goto_22
    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rh:Landroid/util/TypedValue;

    goto :goto_29

    :cond_27
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rg:Landroid/util/TypedValue;

    .line 450
    :goto_29
    if-eqz v2, :cond_58

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-eqz v3, :cond_58

    .line 452
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_3a

    .line 453
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v4, v0

    goto :goto_4c

    .line 454
    :cond_3a
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_4b

    .line 455
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v4, v0

    goto :goto_4c

    .line 457
    :cond_4b
    nop

    .line 460
    :goto_4c
    if-lez v4, :cond_58

    .line 461
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 465
    :cond_58
    return p1
.end method

.method private n(I)I
    .registers 8

    .line 469
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 470
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 473
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_58

    .line 474
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 475
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    .line 477
    :cond_21
    move v2, v4

    :goto_22
    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ri:Landroid/util/TypedValue;

    goto :goto_29

    :cond_27
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rj:Landroid/util/TypedValue;

    .line 478
    :goto_29
    if-eqz v2, :cond_58

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-eqz v3, :cond_58

    .line 480
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_3a

    .line 481
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v4, v0

    goto :goto_4c

    .line 482
    :cond_3a
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_4b

    .line 483
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v4, v0

    goto :goto_4c

    .line 485
    :cond_4b
    nop

    .line 488
    :goto_4c
    if-lez v4, :cond_58

    .line 489
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 493
    :cond_58
    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 498
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 500
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rl:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 504
    :cond_20
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rk:Z

    if-eqz v0, :cond_8a

    .line 505
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 506
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 507
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rc:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 508
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rd:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rd:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 509
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->re:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->re:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 510
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rf:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rf:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rf:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8d

    .line 513
    :cond_8a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 515
    :goto_8d
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 625
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 626
    return v1

    .line 629
    :cond_8
    nop

    .line 630
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 631
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_29

    .line 632
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->pI:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->pI:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result p1

    if-nez p1, :cond_28

    .line 633
    :cond_20
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 634
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 636
    :cond_28
    goto :goto_37

    .line 638
    :cond_29
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    .line 642
    :cond_36
    move v1, v0

    :goto_37
    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 14

    .line 187
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rv:Lmiui/app/OnStatusBarChangeListener;

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rv:Lmiui/app/OnStatusBarChangeListener;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1}, Lmiui/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    .line 191
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 193
    nop

    .line 194
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_30

    .line 195
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bk()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bl()I

    move-result v3

    if-eq v0, v3, :cond_30

    .line 196
    :cond_29
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 197
    nop

    .line 200
    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v2

    .line 201
    :goto_31
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_5c

    .line 202
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 203
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 206
    :cond_40
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    const/4 v7, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p1

    if-eqz p1, :cond_53

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result p1

    if-nez p1, :cond_53

    move v8, v1

    goto :goto_54

    :cond_53
    move v8, v2

    :goto_54
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 206
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p1

    goto :goto_5d

    .line 210
    :cond_5c
    move p1, v2

    :goto_5d
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_76

    .line 212
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rr:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 213
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v3

    or-int/2addr p1, v3

    .line 216
    :cond_76
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v3

    if-nez v3, :cond_82

    if-nez v0, :cond_82

    .line 219
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 222
    :cond_82
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rl:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rm:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rl:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 225
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rm:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rl:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 226
    nop

    .line 229
    move p1, v1

    :cond_9c
    if-eqz p1, :cond_a1

    .line 230
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 232
    :cond_a1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p1

    return p1
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aR:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v0
.end method

.method protected getBottomInset()I
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bb()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .registers 4

    .line 547
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 543
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public isRootSubDecor()Z
    .registers 2

    .line 588
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .registers 6

    .line 592
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    .line 593
    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    .line 594
    move v1, v3

    goto :goto_e

    .line 593
    :cond_c
    nop

    .line 594
    move v1, v2

    :goto_e
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_14

    .line 596
    move v0, v3

    goto :goto_16

    .line 594
    :cond_14
    nop

    .line 596
    move v0, v2

    :goto_16
    iget v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aT:I

    if-eqz v4, :cond_1c

    .line 599
    move v4, v3

    goto :goto_1e

    .line 596
    :cond_1c
    nop

    .line 599
    move v4, v2

    :goto_1e
    if-eqz v1, :cond_22

    if-nez v0, :cond_24

    :cond_22
    if-eqz v4, :cond_26

    :cond_24
    move v2, v3

    nop

    :cond_26
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 237
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-eqz v0, :cond_45

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_45

    .line 240
    :try_start_16
    const-class v0, Landroid/view/WindowInsets;

    const-string v1, "consumeDisplayCutout"

    const-string v2, "()Landroid/view/WindowInsets;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    .line 242
    const-class v1, Landroid/view/WindowInsets;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_2e

    .line 245
    nop

    .line 247
    move-object p1, v0

    goto :goto_45

    .line 243
    :catch_2e
    move-exception v0

    .line 244
    const-string v1, "ActionBarOverlayLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyWindowInsets, consumeDisplayCutout failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_45
    :goto_45
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 287
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 288
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 298
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 299
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bj()V

    .line 300
    return-void
.end method

.method protected onMeasure(II)V
    .registers 21

    move-object/from16 v7, p0

    .line 304
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->m(I)I

    move-result v8

    .line 305
    move/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->n(I)I

    move-result v9

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 311
    nop

    .line 312
    nop

    .line 314
    iget-object v10, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 315
    iget-object v11, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bg:Landroid/view/View;

    .line 319
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_6d

    .line 320
    invoke-virtual {v7, v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 322
    if-eq v5, v10, :cond_6a

    if-eq v5, v11, :cond_6a

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 323
    goto :goto_6a

    .line 326
    :cond_30
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v5

    move v2, v8

    move v4, v9

    move-object v12, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 327
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 328
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 329
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 330
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v15, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v2

    .line 319
    move v14, v0

    move v13, v1

    move v15, v2

    :cond_6a
    :goto_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 333
    :cond_6d
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_80

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_80

    .line 335
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    goto :goto_81

    .line 338
    :cond_80
    const/4 v12, 0x0

    :goto_81
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_92

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v0

    goto :goto_93

    .line 343
    :cond_92
    const/4 v0, 0x0

    :goto_93
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_f2

    iget-boolean v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Z

    if-eqz v1, :cond_f2

    .line 344
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b6

    .line 346
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rl:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_f2

    .line 348
    :cond_b6
    const v1, 0x1020002

    invoke-virtual {v7, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 349
    if-eqz v1, :cond_f2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v6, :cond_f2

    .line 350
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 351
    if-gtz v12, :cond_e2

    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_f2

    .line 354
    :cond_e2
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 361
    :cond_f2
    :goto_f2
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ro:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 362
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rl:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_10d

    if-lez v12, :cond_10d

    .line 365
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 368
    :cond_10d
    iget-boolean v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qW:Z

    if-nez v1, :cond_120

    .line 369
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v12

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 370
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_13b

    .line 372
    :cond_120
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 373
    if-lez v12, :cond_134

    .line 374
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    goto :goto_134

    .line 377
    :cond_12d
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v12

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 379
    :cond_134
    :goto_134
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 383
    :goto_13b
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bk()Z

    move-result v0

    if-eqz v0, :cond_164

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_153

    .line 385
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_164

    .line 387
    :cond_153
    const/4 v1, 0x0

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 388
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 389
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_164

    .line 390
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 395
    :cond_164
    :goto_164
    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rn:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v12, 0x1

    move-object v0, v7

    move-object v1, v10

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 397
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rp:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Z

    if-eqz v0, :cond_18d

    .line 398
    :cond_17e
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rp:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rq:Landroid/graphics/Rect;

    invoke-super {v7, v0}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Z

    .line 403
    :cond_18d
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v10

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 404
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 406
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 407
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v10

    .line 410
    if-eqz v11, :cond_1da

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1da

    .line 411
    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rr:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 412
    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 416
    :cond_1da
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 424
    invoke-static {v1, v8, v10}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    .line 425
    invoke-static {v0, v9, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 424
    invoke-virtual {v7, v1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bi()Z

    move-result v0

    iput-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rk:Z

    .line 428
    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rk:Z

    if-eqz v0, :cond_256

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    if-nez v0, :cond_256

    .line 429
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    .line 430
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 431
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 433
    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_1:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rc:Landroid/graphics/Bitmap;

    .line 434
    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_2:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rd:Landroid/graphics/Bitmap;

    .line 435
    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_3:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->re:Landroid/graphics/Bitmap;

    .line 436
    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_4:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rf:Landroid/graphics/Bitmap;

    .line 439
    :cond_256
    return-void
.end method

.method public requestFitSystemWindows()V
    .registers 2

    .line 292
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Z

    .line 294
    return-void
.end method

.method public setActionBar(Lmiui/app/ActionBar;)V
    .registers 2

    .line 535
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aR:Lmiui/app/ActionBar;

    .line 536
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 559
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/view/Window$Callback;

    .line 560
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .registers 2

    .line 870
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rv:Lmiui/app/OnStatusBarChangeListener;

    .line 871
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 2

    .line 539
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qW:Z

    .line 540
    return-void
.end method

.method public setRootSubDecor(Z)V
    .registers 2

    .line 620
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Z

    .line 621
    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 3

    .line 563
    iget v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aT:I

    if-eq v0, p1, :cond_9

    .line 564
    iput p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aT:I

    .line 565
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 567
    :cond_9
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rs:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_17

    .line 170
    new-instance v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rs:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    .line 171
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rs:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ru:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_1c

    .line 173
    :cond_17
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rs:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->clear()V

    .line 176
    :goto_1c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rs:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rt:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 177
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rt:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_35

    .line 178
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rt:Lcom/miui/internal/view/menu/MenuDialogHelper;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ru:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 179
    const/4 p1, 0x1

    return p1

    .line 181
    :cond_35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 656
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 657
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 659
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 661
    nop

    .line 662
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 663
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p1

    .line 664
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 667
    :cond_1f
    if-eqz v0, :cond_23

    .line 668
    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 671
    :cond_23
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 672
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 675
    :cond_36
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 679
    instance-of v0, p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1a

    .line 681
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_d

    .line 682
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 685
    :cond_d
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p2

    .line 686
    invoke-virtual {p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 687
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1

    .line 689
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
