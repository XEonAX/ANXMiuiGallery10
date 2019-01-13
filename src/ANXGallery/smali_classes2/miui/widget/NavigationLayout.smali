.class public Lmiui/widget/NavigationLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NavigationLayout$ViewDragCallback;,
        Lmiui/widget/NavigationLayout$WidthDescription;,
        Lmiui/widget/NavigationLayout$LayoutParams;,
        Lmiui/widget/NavigationLayout$SavedState;,
        Lmiui/widget/NavigationLayout$NavigationListener;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final DRAWER_ENABLED_LANDSCAPE:I = 0x2

.field public static final DRAWER_ENABLED_NONE:I = 0x0

.field public static final DRAWER_ENABLED_PORTRAIT:I = 0x1

.field public static final DRAWER_MODE_CONTENT_SQUEEZED:I = 0x2

.field public static final DRAWER_MODE_OVERLAY:I = 0x0

.field public static final DRAWER_MODE_PUSHED_AWAY:I = 0x1

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field public static final RELATIVE_TO_PARENT:I = 0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final Uw:I = 0x190

.field private static final Ux:I = -0x330a0809

.field private static final Uy:I = 0x96

.field private static final Uz:F = 0.5f


# instance fields
.field private Nj:F

.field private Rn:Landroid/view/View;

.field private final UB:Lcom/miui/internal/widget/ViewDragHelper;

.field private UC:I

.field private UD:Z

.field private UE:I

.field private UF:Landroid/view/View;

.field private UH:Lmiui/widget/NavigationLayout$WidthDescription;

.field private UI:Lmiui/widget/NavigationLayout$WidthDescription;

.field private UJ:Landroid/graphics/drawable/Drawable;

.field private UL:I

.field private UM:Landroid/graphics/drawable/Drawable;

.field private UN:F

.field private UO:Z

.field private UP:I

.field private UQ:Landroid/graphics/Paint;

.field private UR:Lmiui/widget/NavigationLayout$NavigationListener;

.field private US:Z

.field private UT:I

.field private UU:Ljava/lang/Runnable;

.field private UV:F

.field private UW:F

.field private UX:Landroid/animation/ValueAnimator;

.field private Va:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Vb:Landroid/view/View;

.field private Vc:Z

.field private sY:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 209
    sget v0, Lmiui/R$attr;->navigationLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->sY:Landroid/graphics/Rect;

    .line 157
    const v0, -0x330a0809

    iput v0, p0, Lmiui/widget/NavigationLayout;->UP:I

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiui/widget/NavigationLayout;->UQ:Landroid/graphics/Paint;

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/NavigationLayout;->US:Z

    .line 165
    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/NavigationLayout;->UT:I

    .line 167
    new-instance v3, Lmiui/widget/NavigationLayout$1;

    invoke-direct {v3, p0}, Lmiui/widget/NavigationLayout$1;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v3, p0, Lmiui/widget/NavigationLayout;->UU:Ljava/lang/Runnable;

    .line 214
    sget-object v3, Lmiui/R$styleable;->NavigationLayout:[I

    .line 215
    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 218
    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 219
    if-eqz p2, :cond_34

    .line 220
    invoke-virtual {p0, p2}, Lmiui/widget/NavigationLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_34
    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationShadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 224
    if-eqz p2, :cond_3f

    .line 225
    invoke-virtual {p0, p2}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 228
    :cond_3f
    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationDividerWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 230
    if-eqz p2, :cond_4a

    .line 231
    invoke-virtual {p0, p2}, Lmiui/widget/NavigationLayout;->setDividerWidth(I)V

    .line 234
    :cond_4a
    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationScrimColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NavigationLayout;->UP:I

    .line 237
    sget p2, Lmiui/R$styleable;->NavigationLayout_drawerEnabledOrientation:I

    .line 238
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NavigationLayout;->UC:I

    .line 240
    sget p2, Lmiui/R$styleable;->NavigationLayout_portraitNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 242
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 240
    invoke-static {p2, p3}, Lmiui/widget/NavigationLayout$WidthDescription;->a(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/NavigationLayout;->UH:Lmiui/widget/NavigationLayout$WidthDescription;

    .line 243
    sget p2, Lmiui/R$styleable;->NavigationLayout_landscapeNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 245
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 243
    invoke-static {p2, p3}, Lmiui/widget/NavigationLayout$WidthDescription;->a(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/NavigationLayout;->UI:Lmiui/widget/NavigationLayout$WidthDescription;

    .line 247
    sget p2, Lmiui/R$styleable;->NavigationLayout_drawerMode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NavigationLayout;->UE:I

    .line 250
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    const/high16 p1, 0x3f000000    # 0.5f

    new-instance p2, Lmiui/widget/NavigationLayout$ViewDragCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V

    invoke-static {p0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    .line 254
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 255
    iget-object p2, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float/2addr p3, p1

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 257
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->setFocusableInTouchMode(Z)V

    .line 258
    return-void
.end method

.method static synthetic a(Lmiui/widget/NavigationLayout;F)F
    .registers 2

    .line 41
    iput p1, p0, Lmiui/widget/NavigationLayout;->UW:F

    return p1
.end method

.method static synthetic a(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .registers 1

    .line 41
    iget-object p0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    return-object p0
.end method

.method private a(Landroid/view/View;Z)V
    .registers 10

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_7

    .line 355
    return-void

    .line 359
    :cond_7
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    if-eq v0, p1, :cond_1a

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez p2, :cond_1a

    .line 361
    return-void

    .line 364
    :cond_1a
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UX:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_42

    .line 367
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 368
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UX:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    if-eqz p2, :cond_34

    move v6, v5

    goto :goto_35

    :cond_34
    move v6, v4

    :goto_35
    aput v6, v3, v2

    if-eqz p2, :cond_3b

    move v2, v4

    goto :goto_3c

    :cond_3b
    move v2, v5

    :goto_3c
    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_58

    .line 370
    :cond_42
    new-array v0, v3, [F

    if-eqz p2, :cond_48

    move v3, v5

    goto :goto_49

    :cond_48
    move v3, v4

    :goto_49
    aput v3, v0, v2

    if-eqz p2, :cond_4f

    move v2, v4

    goto :goto_50

    :cond_4f
    move v2, v5

    :goto_50
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->UX:Landroid/animation/ValueAnimator;

    .line 373
    :goto_58
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    .line 374
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UX:Landroid/animation/ValueAnimator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_63

    const-wide/16 v0, 0x1f4

    goto :goto_65

    :cond_63
    const-wide/16 v0, 0x0

    :goto_65
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 376
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UX:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eX()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    if-eqz p2, :cond_75

    move v4, v5

    nop

    :cond_75
    iput v4, p0, Lmiui/widget/NavigationLayout;->UW:F

    .line 378
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UX:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 379
    return-void
.end method

.method static synthetic b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;
    .registers 1

    .line 41
    iget-object p0, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    return-object p0
.end method

.method static synthetic b(Lmiui/widget/NavigationLayout;F)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->c(F)V

    return-void
.end method

.method private bj()V
    .registers 2

    .line 440
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    if-nez v0, :cond_14

    .line 441
    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    .line 442
    sget v0, Lmiui/R$id;->navigation:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    .line 444
    :cond_14
    return-void
.end method

.method private c(F)V
    .registers 5

    .line 797
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 798
    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_f

    .line 799
    return-void

    .line 802
    :cond_f
    iput p1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    .line 803
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v1, :cond_1a

    .line 804
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v1, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerSlide(F)V

    .line 807
    :cond_1a
    iget p1, p0, Lmiui/widget/NavigationLayout;->UE:I

    if-nez p1, :cond_25

    .line 808
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollX(I)V

    goto :goto_44

    .line 809
    :cond_25
    iget p1, p0, Lmiui/widget/NavigationLayout;->UE:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_41

    .line 810
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 811
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v2, :cond_37

    goto :goto_38

    :cond_37
    neg-int p1, p1

    :goto_38
    int-to-float p1, p1

    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScrollX(I)V

    .line 812
    goto :goto_44

    .line 813
    :cond_41
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 815
    :goto_44
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 10

    .line 600
    iget v0, p0, Lmiui/widget/NavigationLayout;->UV:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4a

    .line 601
    iget v0, p0, Lmiui/widget/NavigationLayout;->UP:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    .line 602
    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/NavigationLayout;->UV:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 603
    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lmiui/widget/NavigationLayout;->UP:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 604
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UQ:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_2d

    :cond_27
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 607
    :goto_2d
    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_3c

    :cond_38
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v1

    .line 609
    :goto_3c
    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v1

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lmiui/widget/NavigationLayout;->UQ:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 611
    :cond_4a
    return-void
.end method

.method static synthetic c(Lmiui/widget/NavigationLayout;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    return p0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .registers 9

    .line 614
    iget v0, p0, Lmiui/widget/NavigationLayout;->UW:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_47

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    if-eqz v0, :cond_47

    .line 615
    iget v0, p0, Lmiui/widget/NavigationLayout;->UP:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    .line 616
    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/NavigationLayout;->UW:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 617
    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lmiui/widget/NavigationLayout;->UP:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 618
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UQ:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    .line 620
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->UQ:Landroid/graphics/Paint;

    .line 619
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 622
    :cond_47
    return-void
.end method

.method static synthetic d(Lmiui/widget/NavigationLayout;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eY()V

    return-void
.end method

.method static synthetic e(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .registers 1

    .line 41
    iget-object p0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    return-object p0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .registers 7

    .line 625
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UM:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 626
    return-void

    .line 629
    :cond_5
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 630
    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 632
    :goto_1d
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->UM:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v1

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 633
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 634
    return-void
.end method

.method private eX()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2

    .line 424
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Va:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_b

    .line 425
    new-instance v0, Lmiui/widget/NavigationLayout$2;

    invoke-direct {v0, p0}, Lmiui/widget/NavigationLayout$2;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Va:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 436
    :cond_b
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Va:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method private eY()V
    .registers 10

    .line 759
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->UO:Z

    if-nez v0, :cond_28

    .line 760
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 761
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getChildCount()I

    move-result v1

    .line 764
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_22

    .line 765
    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 767
    :cond_22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/NavigationLayout;->UO:Z

    .line 770
    :cond_28
    return-void
.end method

.method private eZ()Z
    .registers 2

    .line 773
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 774
    iget-boolean v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Ve:Z

    return v0
.end method

.method static synthetic f(Lmiui/widget/NavigationLayout;)F
    .registers 1

    .line 41
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fa()F

    move-result p0

    return p0
.end method

.method private f(Landroid/graphics/Canvas;)V
    .registers 8

    .line 637
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->sY:Landroid/graphics/Rect;

    .line 639
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 640
    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, p0, Lmiui/widget/NavigationLayout;->UL:I

    sub-int v1, v2, v1

    .line 642
    :cond_15
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/NavigationLayout;->UL:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 645
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UJ:Landroid/graphics/drawable/Drawable;

    .line 647
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 648
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 649
    return-void
.end method

.method private fa()F
    .registers 2

    .line 792
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 793
    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    return v0
.end method

.method private fb()V
    .registers 3

    .line 879
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 880
    iget-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Ve:Z

    if-eqz v1, :cond_13

    .line 881
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Ve:Z

    .line 882
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 884
    :cond_13
    return-void
.end method

.method static synthetic g(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;
    .registers 1

    .line 41
    iget-object p0, p0, Lmiui/widget/NavigationLayout;->UU:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    return-object p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 576
    instance-of p1, p1, Lmiui/widget/NavigationLayout$LayoutParams;

    return p1
.end method

.method public closeNavigationDrawer(Z)V
    .registers 5

    .line 892
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->US:Z

    if-eqz v0, :cond_5

    .line 893
    const/4 p1, 0x0

    .line 895
    :cond_5
    if-eqz p1, :cond_2a

    .line 896
    iget-boolean p1, p0, Lmiui/widget/NavigationLayout;->UD:Z

    if-nez p1, :cond_c

    .line 897
    return-void

    .line 899
    :cond_c
    iget-boolean p1, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result p1

    goto :goto_1c

    :cond_15
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    .line 900
    :goto_1c
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 901
    goto :goto_37

    .line 902
    :cond_2a
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->c(F)V

    .line 903
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz p1, :cond_37

    .line 904
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    .line 907
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 908
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UU:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 909
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 779
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 781
    iget v0, p0, Lmiui/widget/NavigationLayout;->UE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NavigationLayout;->UV:F

    goto :goto_12

    .line 784
    :cond_c
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fa()F

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->UV:F

    .line 786
    :goto_12
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 787
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->postInvalidateOnAnimation()V

    .line 789
    :cond_1e
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 581
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 583
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->UD:Z

    if-eqz v0, :cond_e

    .line 584
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->c(Landroid/graphics/Canvas;)V

    .line 585
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->e(Landroid/graphics/Canvas;)V

    goto :goto_14

    .line 587
    :cond_e
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->f(Landroid/graphics/Canvas;)V

    .line 588
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->d(Landroid/graphics/Canvas;)V

    .line 590
    :goto_14
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 922
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 923
    return v1

    .line 926
    :cond_8
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->UD:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_27

    .line 927
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_27

    .line 928
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result p1

    .line 929
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 930
    return p1

    .line 933
    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 408
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_38

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 411
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 412
    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 413
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 414
    iget-object v5, p0, Lmiui/widget/NavigationLayout;->Vb:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 415
    if-ge v2, v0, :cond_38

    if-ge v0, v3, :cond_38

    if-ge v4, v1, :cond_38

    if-ge v1, v5, :cond_38

    .line 416
    const/4 p1, 0x1

    return p1

    .line 420
    :cond_38
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 559
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 565
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 571
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDividerWidth()I
    .registers 2

    .line 338
    iget v0, p0, Lmiui/widget/NavigationLayout;->UL:I

    return v0
.end method

.method public getDrawerEnabledOrientation()I
    .registers 2

    .line 284
    iget v0, p0, Lmiui/widget/NavigationLayout;->UC:I

    return v0
.end method

.method public getDrawerLockMode()I
    .registers 2

    .line 852
    iget v0, p0, Lmiui/widget/NavigationLayout;->UT:I

    return v0
.end method

.method public isNavigationDrawerOpen()Z
    .registers 3

    .line 917
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 448
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 449
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->bj()V

    .line 450
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 653
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 654
    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->UD:Z

    if-eqz v1, :cond_70

    iget v1, p0, Lmiui/widget/NavigationLayout;->UT:I

    if-eqz v1, :cond_10

    goto/16 :goto_70

    .line 658
    :cond_10
    nop

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_76

    goto :goto_5d

    .line 674
    :pswitch_1b
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 675
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UU:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5d

    .line 682
    :pswitch_2a
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UU:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 683
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fb()V

    .line 684
    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->UO:Z

    goto :goto_5d

    .line 662
    :pswitch_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 664
    iput v1, p0, Lmiui/widget/NavigationLayout;->Nj:F

    .line 665
    iput p1, p0, Lmiui/widget/NavigationLayout;->UN:F

    .line 666
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fa()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_59

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v4, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    if-ne p1, v1, :cond_59

    .line 667
    nop

    .line 669
    move p1, v2

    goto :goto_5a

    :cond_59
    move p1, v3

    :goto_5a
    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->UO:Z

    .line 670
    goto :goto_5e

    .line 688
    :cond_5d
    :goto_5d
    move p1, v3

    :goto_5e
    if-nez v0, :cond_6f

    if-nez p1, :cond_6f

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eZ()Z

    move-result p1

    if-nez p1, :cond_6f

    iget-boolean p1, p0, Lmiui/widget/NavigationLayout;->UO:Z

    if-eqz p1, :cond_6d

    goto :goto_6f

    :cond_6d
    move v2, v3

    nop

    :cond_6f
    :goto_6f
    return v2

    .line 655
    :cond_70
    :goto_70
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_35
        :pswitch_2a
        :pswitch_1b
        :pswitch_2a
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    move-object v6, p0

    move v7, p2

    .line 521
    iget-boolean v0, v6, Lmiui/widget/NavigationLayout;->UD:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_78

    .line 522
    iget-object v0, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 523
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 524
    neg-int v1, v0

    int-to-float v10, v1

    int-to-float v11, v0

    iget v1, v9, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    mul-float/2addr v1, v11

    add-float/2addr v1, v10

    float-to-int v2, v1

    .line 525
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    add-int v4, v2, v0

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    .line 526
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    .line 525
    move-object v0, v6

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 528
    nop

    .line 529
    iget-object v0, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    .line 531
    iget v1, v6, Lmiui/widget/NavigationLayout;->UE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    .line 532
    iget v1, v9, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    mul-float/2addr v10, v1

    float-to-int v1, v10

    .line 533
    iget-object v2, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    iget-boolean v3, v6, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v3, :cond_48

    rsub-int/lit8 v1, v1, 0x0

    :cond_48
    invoke-virtual {v2, v1}, Landroid/view/View;->setScrollX(I)V

    .line 534
    goto :goto_66

    :cond_4c
    iget v1, v6, Lmiui/widget/NavigationLayout;->UE:I

    if-nez v1, :cond_56

    .line 535
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setScrollX(I)V

    goto :goto_66

    .line 536
    :cond_56
    iget v1, v6, Lmiui/widget/NavigationLayout;->UE:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    .line 537
    int-to-float v0, v7

    iget v1, v9, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    mul-float/2addr v11, v1

    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 538
    nop

    .line 541
    move/from16 v4, p4

    move v2, v0

    goto :goto_68

    :cond_66
    :goto_66
    move v4, v0

    move v2, v7

    :goto_68
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    .line 542
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    .line 541
    move-object v0, v6

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 543
    goto :goto_b7

    .line 544
    :cond_78
    nop

    .line 545
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v7, v0

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    .line 545
    move-object v0, v6

    move v2, v7

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 547
    iget-object v0, v6, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    iget v1, v6, Lmiui/widget/NavigationLayout;->UL:I

    add-int v2, v0, v1

    .line 550
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    .line 551
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    .line 550
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 553
    iget-object v0, v6, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScrollX(I)V

    .line 555
    :goto_b7
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 454
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/widget/NavigationLayout;->US:Z

    .line 455
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->bj()V

    .line 457
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 458
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 460
    invoke-virtual {p0, v0, v1}, Lmiui/widget/NavigationLayout;->setMeasuredDimension(II)V

    .line 462
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    .line 465
    move v2, v7

    goto :goto_23

    .line 462
    :cond_21
    nop

    .line 465
    move v2, v6

    :goto_23
    if-eqz v2, :cond_28

    .line 466
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->UI:Lmiui/widget/NavigationLayout$WidthDescription;

    goto :goto_2a

    :cond_28
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->UH:Lmiui/widget/NavigationLayout$WidthDescription;

    .line 467
    :goto_2a
    nop

    .line 468
    iget v5, v4, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    packed-switch v5, :pswitch_data_c4

    .line 476
    move v0, v6

    goto :goto_3c

    .line 473
    :pswitch_32
    iget v4, v4, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    int-to-float v0, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    goto :goto_3c

    .line 470
    :pswitch_38
    iget v0, v4, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    float-to-int v0, v0

    .line 471
    nop

    .line 476
    :goto_3c
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 479
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 481
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {p0, v4, v0, v1}, Lmiui/widget/NavigationLayout;->measureChild(Landroid/view/View;II)V

    .line 484
    nop

    .line 486
    iget v0, p0, Lmiui/widget/NavigationLayout;->UE:I

    if-ne v0, v3, :cond_79

    .line 487
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 488
    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_67

    .line 489
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_69

    .line 491
    :cond_67
    nop

    .line 493
    move v1, v6

    :goto_69
    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->NM:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v4

    .line 494
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 495
    nop

    .line 498
    move v4, v1

    goto :goto_7b

    .line 496
    :cond_79
    nop

    .line 498
    move v4, v6

    :goto_7b
    iget v0, p0, Lmiui/widget/NavigationLayout;->UC:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_8d

    if-eqz v2, :cond_8d

    .line 499
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_9e

    .line 500
    :cond_8d
    iget v0, p0, Lmiui/widget/NavigationLayout;->UC:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_a0

    if-nez v2, :cond_a0

    .line 501
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 508
    :goto_9e
    move v6, v7

    goto :goto_b4

    .line 503
    :cond_a0
    nop

    .line 504
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lmiui/widget/NavigationLayout;->UL:I

    add-int v3, v0, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 508
    :goto_b4
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->UD:Z

    if-eq v0, v6, :cond_c3

    .line 509
    iput-boolean v6, p0, Lmiui/widget/NavigationLayout;->UD:Z

    .line 510
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_c3

    .line 511
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v0, v6}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerEnableStateChange(Z)V

    .line 514
    :cond_c3
    return-void

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_38
        :pswitch_32
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 948
    check-cast p1, Lmiui/widget/NavigationLayout$SavedState;

    .line 949
    invoke-virtual {p1}, Lmiui/widget/NavigationLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 951
    iget v0, p1, Lmiui/widget/NavigationLayout$SavedState;->NM:F

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->c(F)V

    .line 952
    iget p1, p1, Lmiui/widget/NavigationLayout$SavedState;->NM:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_1b

    .line 953
    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_1e

    .line 955
    :cond_1b
    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 957
    :goto_1e
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    .line 262
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    .line 263
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v1, :cond_10

    const/4 v0, 0x2

    goto :goto_11

    .line 264
    :cond_10
    nop

    .line 263
    :goto_11
    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 265
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 938
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 939
    new-instance v1, Lmiui/widget/NavigationLayout$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V

    .line 941
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fa()F

    move-result v0

    iput v0, v1, Lmiui/widget/NavigationLayout$SavedState;->NM:F

    .line 943
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 694
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 695
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->UD:Z

    if-eqz v0, :cond_71

    iget v0, p0, Lmiui/widget/NavigationLayout;->UT:I

    if-eqz v0, :cond_e

    goto :goto_71

    .line 699
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 703
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6b

    packed-switch v0, :pswitch_data_76

    goto :goto_70

    .line 712
    :pswitch_23
    iget v0, p0, Lmiui/widget/NavigationLayout;->Nj:F

    sub-float v0, v1, v0

    .line 713
    iget v2, p0, Lmiui/widget/NavigationLayout;->UN:F

    sub-float v2, p1, v2

    .line 714
    iget-object v5, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 715
    nop

    .line 717
    iget-object v6, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v6, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 718
    if-eqz p1, :cond_50

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    if-ne p1, v1, :cond_50

    .line 719
    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-int/2addr v5, v5

    int-to-float p1, v5

    cmpg-float p1, v0, p1

    if-gez p1, :cond_50

    .line 720
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 721
    goto :goto_51

    .line 726
    :cond_50
    move v3, v4

    :goto_51
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UU:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 727
    if-eqz v3, :cond_5c

    .line 728
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fb()V

    goto :goto_70

    .line 730
    :cond_5c
    iget p1, p0, Lmiui/widget/NavigationLayout;->UT:I

    if-nez p1, :cond_70

    .line 731
    invoke-virtual {p0, v4}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_70

    .line 705
    :pswitch_64
    iput v1, p0, Lmiui/widget/NavigationLayout;->Nj:F

    .line 706
    iput p1, p0, Lmiui/widget/NavigationLayout;->UN:F

    .line 707
    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->UO:Z

    .line 708
    goto :goto_70

    .line 736
    :cond_6b
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fb()V

    .line 737
    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->UO:Z

    .line 742
    :cond_70
    :goto_70
    return v4

    .line 696
    :cond_71
    :goto_71
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_64
        :pswitch_23
    .end packed-switch
.end method

.method public openNavigationDrawer(Z)V
    .registers 5

    .line 861
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->US:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 862
    nop

    .line 864
    move p1, v1

    :cond_7
    if-eqz p1, :cond_1c

    .line 865
    iget-boolean p1, p0, Lmiui/widget/NavigationLayout;->UD:Z

    if-nez p1, :cond_e

    .line 866
    return-void

    .line 868
    :cond_e
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_2a

    .line 870
    :cond_1c
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->c(F)V

    .line 871
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz p1, :cond_2a

    .line 872
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    .line 875
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 876
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .line 747
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Vc:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    .line 748
    :cond_8
    const/4 v1, 0x1

    .line 747
    :goto_9
    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 750
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 752
    :cond_12
    if-eqz p1, :cond_17

    .line 753
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->fb()V

    .line 755
    :cond_17
    return-void
.end method

.method public setContentEnabled(Z)V
    .registers 3

    .line 394
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Rn:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->a(Landroid/view/View;Z)V

    .line 395
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 324
    if-eqz p1, :cond_9

    .line 325
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->UL:I

    goto :goto_c

    .line 327
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NavigationLayout;->UL:I

    .line 329
    :goto_c
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->UJ:Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 331
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 332
    return-void
.end method

.method public setDividerWidth(I)V
    .registers 2

    .line 348
    iput p1, p0, Lmiui/widget/NavigationLayout;->UL:I

    .line 349
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 350
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 351
    return-void
.end method

.method public setDrawerEnabledOrientation(I)V
    .registers 2

    .line 294
    iput p1, p0, Lmiui/widget/NavigationLayout;->UC:I

    .line 295
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 296
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    .line 827
    iget v0, p0, Lmiui/widget/NavigationLayout;->UT:I

    if-ne v0, p1, :cond_5

    .line 828
    return-void

    .line 830
    :cond_5
    iput p1, p0, Lmiui/widget/NavigationLayout;->UT:I

    .line 832
    if-eqz p1, :cond_e

    .line 833
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UB:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 835
    :cond_e
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1c

    goto :goto_1a

    .line 837
    :pswitch_13
    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    .line 838
    goto :goto_1a

    .line 840
    :pswitch_17
    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 843
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method

.method public setDrawerMode(I)V
    .registers 2

    .line 402
    iput p1, p0, Lmiui/widget/NavigationLayout;->UE:I

    .line 403
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 404
    return-void
.end method

.method public setNavigationEanbled(Z)V
    .registers 3

    .line 386
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->UF:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->a(Landroid/view/View;Z)V

    .line 387
    return-void
.end method

.method public setNavigationListener(Lmiui/widget/NavigationLayout$NavigationListener;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->UR:Lmiui/widget/NavigationLayout$NavigationListener;

    .line 276
    return-void
.end method

.method public setNavigationShadow(I)V
    .registers 3

    .line 314
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 315
    return-void
.end method

.method public setNavigationShadow(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->UM:Landroid/graphics/drawable/Drawable;

    .line 305
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 306
    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    .line 596
    iput p1, p0, Lmiui/widget/NavigationLayout;->UP:I

    .line 597
    return-void
.end method
