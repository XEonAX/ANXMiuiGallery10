.class public Lcom/miui/internal/view/menu/PhoneActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;,
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


# static fields
.field private static final oO:[I


# instance fields
.field private oP:Landroid/view/View;

.field private oQ:Landroid/view/View;

.field private oR:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field private oT:Landroid/graphics/drawable/Drawable;

.field private oU:Landroid/graphics/drawable/Drawable;

.field private oV:I

.field private oW:I

.field private oX:Landroid/graphics/Rect;

.field private oY:I

.field private oZ:I

.field private pa:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sget v1, Lcom/miui/internal/R$attr;->expandBackground:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/miui/internal/R$attr;->splitActionBarOverlayHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oO:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:I

    .line 70
    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:I

    .line 79
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oO:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oU:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oT:Landroid/graphics/drawable/Drawable;

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oY:I

    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aW()V

    .line 88
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    .line 89
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setChildrenDrawingOrderEnabled(Z)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->action_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:I

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method private aU()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_c

    .line 180
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object v0
.end method

.method private aV()I
    .registers 5

    .line 186
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 188
    if-lez v1, :cond_15

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 191
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private aW()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oX:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oX:Landroid/graphics/Rect;

    .line 358
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oU:Landroid/graphics/drawable/Drawable;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oT:Landroid/graphics/drawable/Drawable;

    .line 359
    :goto_14
    if-nez v0, :cond_1c

    .line 360
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oX:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 361
    return-void

    .line 364
    :cond_1c
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oX:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 365
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oU:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p0
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .registers 6

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    if-ne v0, v1, :cond_f

    goto :goto_1f

    .line 112
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    .line 113
    if-eqz v0, :cond_1d

    iget-boolean v0, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    goto :goto_20

    .line 115
    :cond_1d
    :goto_1d
    move v0, v2

    goto :goto_21

    .line 110
    :cond_1f
    :goto_1f
    nop

    .line 115
    :goto_20
    move v0, v3

    :goto_21
    if-eqz v0, :cond_2a

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    return v2
.end method

.method protected getChildDrawingOrder(II)I
    .registers 7

    .line 380
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 383
    const/4 v2, -0x1

    if-nez p2, :cond_15

    .line 384
    if-eq v0, v2, :cond_12

    .line 385
    return v0

    .line 386
    :cond_12
    if-eq v1, v2, :cond_1d

    .line 387
    return v1

    .line 389
    :cond_15
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1d

    .line 390
    if-eq v0, v2, :cond_1d

    if-eq v1, v2, :cond_1d

    .line 391
    return v1

    .line 395
    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p1, :cond_36

    .line 396
    if-eq v2, v0, :cond_33

    if-ne v2, v1, :cond_25

    .line 397
    goto :goto_33

    .line 400
    :cond_25
    nop

    .line 401
    if-ge v2, v0, :cond_2b

    .line 402
    add-int/lit8 v3, v2, 0x1

    goto :goto_2c

    .line 404
    :cond_2b
    move v3, v2

    :goto_2c
    if-ge v2, v1, :cond_30

    .line 405
    add-int/lit8 v3, v3, 0x1

    .line 407
    :cond_30
    if-ne v3, p2, :cond_33

    .line 408
    return v2

    .line 395
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 412
    :cond_36
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getCollapsedHeight()I
    .registers 3

    .line 196
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oW:I

    if-nez v0, :cond_6

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_6
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oW:I

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oX:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasBackgroundView()Z
    .registers 4

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    if-ne v1, v2, :cond_b

    const/4 v0, 0x1

    nop

    :cond_b
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 164
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pe:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_24

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_b

    goto :goto_24

    .line 168
    :cond_b
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aU()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    .line 169
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pd:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_1b

    .line 170
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pe:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 171
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->hide()V

    goto :goto_22

    .line 172
    :cond_1b
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_22

    .line 173
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 175
    :cond_22
    :goto_22
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pd:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .line 271
    sub-int p1, p4, p2

    .line 272
    sub-int p2, p5, p3

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 279
    iget-object p3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    const/4 p4, 0x0

    if-eqz p3, :cond_22

    .line 280
    iget-object p3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 281
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 282
    iget-object p5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oX:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p5

    goto :goto_23

    .line 284
    :cond_22
    move p3, p4

    .line 286
    :goto_23
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 288
    nop

    .line 289
    nop

    .line 290
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result p5

    .line 292
    move v0, p4

    move v1, v0

    move v6, v1

    :goto_36
    const/4 v7, 0x1

    if-ge v0, p5, :cond_55

    .line 293
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-eq v2, v3, :cond_52

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    if-ne v2, v3, :cond_46

    .line 295
    goto :goto_52

    .line 297
    :cond_46
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:I

    if-lt v2, v3, :cond_50

    .line 298
    nop

    .line 300
    move v6, v7

    :cond_50
    add-int/lit8 v1, v1, 0x1

    .line 292
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 304
    :cond_55
    if-eqz v6, :cond_5d

    .line 305
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    shr-int/2addr p1, v7

    goto :goto_61

    .line 307
    :cond_5d
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oV:I

    sub-int/2addr p1, v0

    shr-int/2addr p1, v7

    .line 310
    :goto_61
    if-ge p4, p5, :cond_9d

    .line 311
    invoke-virtual {p0, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 312
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-eq v8, v0, :cond_9a

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    if-ne v8, v0, :cond_70

    .line 313
    goto :goto_9a

    .line 315
    :cond_70
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 316
    if-eqz v6, :cond_8b

    .line 317
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:I

    sub-int/2addr v1, v0

    shr-int/lit8 v9, v1, 0x1

    .line 318
    add-int/2addr p1, v9

    .line 319
    add-int v4, p1, v0

    move-object v0, p0

    move-object v1, v8

    move v2, p1

    move v3, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 320
    sub-int/2addr p1, v9

    .line 321
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:I

    add-int/2addr p1, v0

    .line 322
    goto :goto_9a

    .line 323
    :cond_8b
    add-int v4, p1, v0

    move-object v0, p0

    move-object v1, v8

    move v2, p1

    move v3, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 324
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 310
    :cond_9a
    :goto_9a
    add-int/lit8 p4, p4, 0x1

    goto :goto_61

    .line 328
    :cond_9d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15

    .line 204
    nop

    .line 205
    nop

    .line 208
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v1

    .line 211
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 212
    add-int/lit8 v1, v1, -0x1

    .line 214
    :cond_15
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_1f

    .line 215
    add-int/lit8 v1, v1, -0x1

    .line 218
    :cond_1f
    const/4 v2, 0x0

    if-eqz v0, :cond_d9

    if-nez v1, :cond_26

    goto/16 :goto_d9

    .line 224
    :cond_26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/2addr v3, v1

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:I

    .line 227
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 229
    move v3, v2

    move v10, v3

    :goto_3d
    if-ge v2, v0, :cond_66

    .line 230
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 231
    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-eq v11, v4, :cond_63

    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    if-ne v11, v4, :cond_4c

    .line 232
    goto :goto_63

    .line 235
    :cond_4c
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v11

    move v6, v1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 236
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 237
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 229
    move v10, v4

    :cond_63
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 239
    :cond_66
    iput v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oV:I

    .line 240
    iput v10, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oW:I

    .line 242
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-eqz v0, :cond_b4

    .line 243
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aV()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 245
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oW:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 247
    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 248
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 249
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v10, p2

    .line 252
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pd:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p2, v0, :cond_a8

    .line 253
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_b4

    .line 254
    :cond_a8
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p2, v0, :cond_b4

    .line 255
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    int-to-float v0, v10

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 259
    :cond_b4
    :goto_b4
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-nez p2, :cond_bd

    .line 260
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oX:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, p2

    .line 262
    :cond_bd
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_c8

    .line 263
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oU:Landroid/graphics/drawable/Drawable;

    goto :goto_ca

    :cond_c8
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oT:Landroid/graphics/drawable/Drawable;

    .line 262
    :goto_ca
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 266
    invoke-virtual {p0, p1, v10}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    .line 267
    return-void

    .line 219
    :cond_d9
    :goto_d9
    iput v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oW:I

    .line 220
    invoke-virtual {p0, v2, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    .line 221
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 5

    .line 339
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_b

    .line 340
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    .line 343
    :cond_b
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    .line 344
    const/4 p2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_29

    .line 345
    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 346
    iget-object p4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-eq p3, p4, :cond_26

    iget-object p4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    if-ne p3, p4, :cond_23

    .line 347
    goto :goto_26

    .line 349
    :cond_23
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 344
    :cond_26
    :goto_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 351
    :cond_29
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    .line 334
    :cond_a
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_10
    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1d

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    .line 333
    :goto_1e
    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oU:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 100
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oU:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aW()V

    .line 103
    :cond_9
    return-void
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-eq v0, p1, :cond_24

    .line 120
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 121
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 122
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 124
    :cond_15
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->removeView(Landroid/view/View;)V

    .line 127
    :cond_1a
    if-eqz p1, :cond_1f

    .line 128
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 130
    :cond_1f
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    .line 131
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aW()V

    .line 133
    :cond_24
    return-void
.end method

.method public setValue(F)V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-nez v0, :cond_5

    .line 369
    return-void

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 372
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 137
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3b

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pd:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3b

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oP:Landroid/view/View;

    if-nez v1, :cond_f

    goto :goto_3b

    .line 140
    :cond_f
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oQ:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aU()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_26

    .line 144
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oS:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 145
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->show()V

    goto :goto_2d

    .line 146
    :cond_26
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pe:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_2d

    .line 147
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 150
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusable(Z)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusableInTouchMode(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->requestFocus()Z

    .line 155
    return v0

    .line 138
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    return v0
.end method
