.class public Lmiui/widget/TriggerViewDrawer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;,
        Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;,
        Lmiui/widget/TriggerViewDrawer$AdapterViewWrapper;,
        Lmiui/widget/TriggerViewDrawer$ScrollableView;,
        Lmiui/widget/TriggerViewDrawer$TriggerListener;,
        Lmiui/widget/TriggerViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TriggerViewDrawer"

.field private static final ZC:Z = false

.field private static final aaI:I = 0x0

.field private static final aaJ:I = 0x1

.field private static final aaK:I = 0x2

.field private static final aaL:I = 0x0

.field private static final aaM:I = 0x1

.field private static final aaN:I = 0x2

.field private static final aaO:F = 2.0f


# instance fields
.field private NB:Z

.field private Vi:I

.field private ZD:I

.field private ZE:I

.field private ZF:Landroid/view/View;

.field private ZI:Landroid/graphics/drawable/Drawable;

.field private ZJ:I

.field private ZL:I

.field private ZQ:F

.field private ZR:F

.field private aaP:I

.field private aaQ:Landroid/view/View;

.field private aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

.field private aaS:Landroid/view/View;

.field private aaT:I

.field private aaU:I

.field private aaV:Lmiui/widget/TriggerViewDrawer$DrawerListener;

.field private aaW:Lmiui/widget/TriggerViewDrawer$TriggerListener;

.field private aaX:Z

.field private aaY:Landroid/view/View;

.field private aaZ:I

.field private aba:I

.field private abb:Z

.field private abc:Z

.field private abd:F

.field private final abe:[I

.field private final abf:[I

.field private abg:Z

.field private fE:I

.field private fG:F

.field private mContentView:Landroid/view/View;

.field private qS:Landroid/view/VelocityTracker;

.field private wp:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 135
    sget v0, Lmiui/R$attr;->triggerViewDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->ZL:I

    .line 124
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->abd:F

    .line 126
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->abe:[I

    .line 127
    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->abf:[I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->abg:Z

    .line 141
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->fE:I

    .line 142
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->wp:Landroid/widget/Scroller;

    .line 143
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    .line 145
    sget-object v1, Lmiui/R$styleable;->TriggerViewDrawer:[I

    sget v2, Lmiui/R$style;->Widget_TriggerViewDrawer:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 147
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_contentView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    .line 148
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_targetView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    .line 149
    iget p2, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    if-eqz p2, :cond_81

    .line 153
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_scrollableView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->Vi:I

    .line 154
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_triggerView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->aaP:I

    .line 155
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_triggerDistance:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    .line 156
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_scrollDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/TriggerViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object p2, p0, Lmiui/widget/TriggerViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_75

    .line 158
    iget-object p2, p0, Lmiui/widget/TriggerViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->ZJ:I

    .line 160
    :cond_75
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_dragEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/TriggerViewDrawer;->NB:Z

    .line 161
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    return-void

    .line 150
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 518
    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    .line 519
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .registers 5

    .line 522
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 523
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 524
    neg-float p1, p3

    neg-float p3, p4

    invoke-virtual {p2, p1, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 525
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;FFI)V
    .registers 6

    .line 509
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 510
    invoke-virtual {p2, p5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 511
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    .line 512
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 513
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 502
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 503
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 504
    invoke-direct {p0, p1, p2}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 505
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 506
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10

    .line 545
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 546
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    if-le v0, v1, :cond_10

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 549
    :cond_10
    nop

    .line 550
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->getWidth()I

    move-result v1

    .line 551
    nop

    .line 552
    nop

    .line 553
    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->ZJ:I

    const/4 v3, 0x0

    if-lez v2, :cond_2d

    .line 554
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->ZJ:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 555
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 556
    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->ZJ:I

    sub-int/2addr v0, v2

    .line 558
    :cond_2d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 559
    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 560
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 562
    return p2
.end method

.method private aL(I)V
    .registers 3

    .line 494
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    if-gtz v0, :cond_a

    .line 495
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 497
    :cond_a
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 498
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fW()V

    .line 499
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    .line 567
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 568
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 569
    if-ge v0, v1, :cond_12

    .line 570
    const/4 p1, 0x1

    return p1

    .line 571
    :cond_12
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    if-le v0, v1, :cond_1b

    .line 572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 574
    :cond_1b
    const/4 v1, 0x0

    .line 575
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->getWidth()I

    move-result v2

    .line 576
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 577
    nop

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 579
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 580
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 582
    return p2
.end method

.method private f(F)V
    .registers 6

    .line 475
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 477
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_17

    .line 478
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    int-to-float v1, v1

    iget v3, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    goto :goto_18

    .line 480
    :cond_17
    int-to-float v1, v0

    .line 482
    :goto_18
    add-float/2addr v1, p1

    .line 483
    iget p1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_2a

    .line 484
    iget p1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v0, v1

    add-int/2addr p1, v0

    goto :goto_2b

    .line 486
    :cond_2a
    float-to-int p1, v1

    .line 488
    :goto_2b
    invoke-direct {p0, p1}, Lmiui/widget/TriggerViewDrawer;->aL(I)V

    .line 489
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    .line 490
    return-void
.end method

.method private fU()Z
    .registers 3

    .line 452
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    if-lez v0, :cond_c

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private fV()V
    .registers 4

    .line 686
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaV:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 687
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 688
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 689
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 690
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->aaV:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v0, v0

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {v1, p0, v0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    goto :goto_46

    .line 692
    :cond_2a
    if-nez v0, :cond_32

    .line 693
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaV:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerClose(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_46

    .line 694
    :cond_32
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    if-ne v0, v1, :cond_3c

    .line 695
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaV:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerOpen(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_46

    .line 697
    :cond_3c
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->aaV:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v0, v0

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {v1, p0, v0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    .line 701
    :cond_46
    :goto_46
    return-void
.end method

.method private fW()V
    .registers 6

    .line 704
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaW:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    if-eqz v0, :cond_3a

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    if-lez v0, :cond_3a

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 705
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    sub-int/2addr v0, v1

    .line 706
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    sub-int/2addr v1, v2

    .line 707
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->aaW:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-interface {v2, p0, v3}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    .line 708
    if-lt v1, v0, :cond_33

    .line 709
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->abc:Z

    if-nez v0, :cond_3a

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->abc:Z

    .line 711
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaW:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerOpen(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_3a

    .line 714
    :cond_33
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->abc:Z

    if-eqz v0, :cond_3a

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->abc:Z

    .line 719
    :cond_3a
    :goto_3a
    return-void
.end method

.method private r(II)Landroid/view/View;
    .registers 12

    .line 456
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 458
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 459
    array-length v2, v1

    :goto_13
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    .line 460
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3d

    .line 461
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 462
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 463
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 464
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 465
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 467
    return-object v4

    .line 459
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 471
    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method private s(II)V
    .registers 5

    .line 528
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->wp:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 529
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->abb:Z

    .line 530
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    .line 531
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .registers 2

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->closeDrawer(Z)V

    .line 644
    return-void
.end method

.method public closeDrawer(Z)V
    .registers 3

    .line 651
    if-eqz p1, :cond_e

    .line 652
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    .line 653
    neg-int v0, p1

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;->s(II)V

    .line 654
    goto :goto_18

    .line 655
    :cond_e
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/TriggerViewDrawer;->aL(I)V

    .line 656
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fV()V

    .line 657
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    .line 659
    :goto_18
    return-void
.end method

.method public computeScroll()V
    .registers 2

    .line 588
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 590
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 591
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 592
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 593
    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->aL(I)V

    .line 594
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->postInvalidateOnAnimation()V

    .line 595
    goto :goto_26

    :cond_1c
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->abb:Z

    if-eqz v0, :cond_26

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->abb:Z

    .line 597
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fV()V

    .line 600
    :cond_26
    :goto_26
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v6, p0

    .line 252
    move-object/from16 v7, p1

    iget-boolean v0, v6, Lmiui/widget/TriggerViewDrawer;->NB:Z

    if-eqz v0, :cond_28e

    .line 253
    invoke-direct/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->fU()Z

    move-result v0

    if-nez v0, :cond_28e

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->aaT:I

    if-gtz v0, :cond_16

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->aaU:I

    if-lez v0, :cond_28e

    .line 255
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_22

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    if-nez v0, :cond_22

    goto/16 :goto_28e

    .line 259
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v0, v1, :cond_218

    packed-switch v0, :pswitch_data_294

    goto/16 :goto_244

    .line 397
    :pswitch_35
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 398
    if-eqz v0, :cond_4a

    iget-boolean v1, v6, Lmiui/widget/TriggerViewDrawer;->aaX:Z

    if-nez v1, :cond_46

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aaT:I

    if-eq v0, v1, :cond_4a

    .line 399
    :cond_46
    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->s(II)V

    .line 401
    :cond_4a
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 402
    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    .line 403
    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    .line 404
    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->abc:Z

    .line 405
    goto/16 :goto_244

    .line 272
    :pswitch_57
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->ZL:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 273
    const/4 v1, -0x1

    if-ne v0, v1, :cond_68

    .line 274
    nop

    .line 275
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->ZL:I

    .line 278
    move v0, v13

    :cond_68
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 279
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 280
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->ZQ:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 281
    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->ZR:F

    sub-float v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 282
    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    if-ne v2, v12, :cond_b0

    .line 283
    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->fE:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_91

    cmpl-float v0, v0, v1

    if-lez v0, :cond_91

    .line 285
    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    goto :goto_b0

    .line 286
    :cond_91
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->fE:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_b0

    .line 288
    iput v11, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    .line 289
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 291
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_b0

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaY:Landroid/view/View;

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-ne v0, v1, :cond_b0

    .line 292
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-direct {v6, v0, v7, v9}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 297
    :cond_b0
    :goto_b0
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->fG:F

    sub-float v0, v14, v0

    .line 298
    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    if-ne v1, v11, :cond_199

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_c2

    cmpg-float v1, v0, v8

    if-gtz v1, :cond_199

    .line 300
    :cond_c2
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_ce

    .line 301
    move v1, v12

    goto :goto_d0

    .line 300
    :cond_ce
    nop

    .line 301
    move v1, v13

    :goto_d0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_103

    if-eqz v1, :cond_103

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->fG:F

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->abf:[I

    iget-object v3, v6, Lmiui/widget/TriggerViewDrawer;->abe:[I

    .line 303
    invoke-virtual {v6, v13, v1, v2, v3}, Lmiui/widget/TriggerViewDrawer;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 305
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->abe:[I

    aget v0, v0, v12

    int-to-float v0, v0

    sub-float/2addr v14, v0

    iput v14, v6, Lmiui/widget/TriggerViewDrawer;->fG:F

    .line 306
    iput-boolean v12, v6, Lmiui/widget/TriggerViewDrawer;->abg:Z

    .line 307
    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    .line 310
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 311
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 312
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 313
    goto/16 :goto_244

    .line 315
    :cond_103
    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->abg:Z

    .line 319
    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    .line 320
    cmpl-float v2, v0, v10

    if-lez v2, :cond_12e

    .line 323
    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aaU:I

    if-gtz v1, :cond_11c

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->aaT:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_128

    :cond_11c
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v1, :cond_12b

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    .line 324
    invoke-interface {v1}, Lmiui/widget/TriggerViewDrawer$ScrollableView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 325
    :cond_128
    nop

    .line 337
    :goto_129
    move v15, v11

    goto :goto_144

    .line 327
    :cond_12b
    nop

    .line 337
    :goto_12c
    move v15, v12

    goto :goto_144

    .line 329
    :cond_12e
    cmpg-float v2, v0, v10

    if-gez v2, :cond_143

    .line 330
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v10

    if-gtz v1, :cond_142

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-nez v1, :cond_141

    goto :goto_142

    .line 333
    :cond_141
    goto :goto_129

    .line 331
    :cond_142
    :goto_142
    goto :goto_12c

    .line 337
    :cond_143
    move v15, v1

    :goto_144
    if-ne v15, v12, :cond_160

    .line 338
    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    if-eq v1, v11, :cond_154

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->aaY:Landroid/view/View;

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    if-ne v1, v2, :cond_159

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    if-nez v1, :cond_159

    .line 342
    :cond_154
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    invoke-direct {v6, v1, v7, v9}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 344
    :cond_159
    invoke-direct {v6, v0}, Lmiui/widget/TriggerViewDrawer;->f(F)V

    .line 345
    invoke-direct/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->fV()V

    goto :goto_195

    .line 346
    :cond_160
    if-ne v15, v11, :cond_195

    .line 347
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    if-eq v0, v12, :cond_17e

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaY:Landroid/view/View;

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    if-eq v0, v1, :cond_171

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    if-nez v0, :cond_171

    goto :goto_17e

    .line 355
    :cond_171
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->ZQ:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {v6, v0, v7, v1, v10}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    goto :goto_195

    .line 351
    :cond_17e
    :goto_17e
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->ZQ:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FFI)V

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->abd:F

    .line 359
    :cond_195
    :goto_195
    iput v15, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    .line 360
    iput v14, v6, Lmiui/widget/TriggerViewDrawer;->fG:F

    .line 363
    :cond_199
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 364
    goto/16 :goto_244

    .line 378
    :pswitch_1a0
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 379
    iget-boolean v1, v6, Lmiui/widget/TriggerViewDrawer;->aaX:Z

    if-eqz v1, :cond_1b2

    if-eqz v0, :cond_1b2

    .line 380
    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->s(II)V

    goto :goto_1db

    .line 381
    :cond_1b2
    if-eqz v0, :cond_1db

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aaT:I

    if-eq v0, v1, :cond_1db

    .line 382
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 383
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 384
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1d7

    .line 385
    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->aaT:I

    sub-int/2addr v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->s(II)V

    goto :goto_1db

    .line 387
    :cond_1d7
    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->s(II)V

    .line 390
    :cond_1db
    :goto_1db
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 391
    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    .line 392
    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    .line 393
    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->abc:Z

    .line 394
    goto :goto_244

    .line 261
    :pswitch_1e7
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->ZL:I

    .line 262
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 263
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 264
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->ZQ:F

    .line 265
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->fG:F

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->ZR:F

    .line 266
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->ZQ:F

    float-to-int v0, v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->ZR:F

    float-to-int v1, v1

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->r(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaY:Landroid/view/View;

    .line 267
    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    .line 268
    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    .line 269
    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->abc:Z

    .line 270
    goto :goto_244

    .line 367
    :cond_218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 368
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 369
    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->ZL:I

    if-ne v1, v2, :cond_23e

    .line 370
    if-nez v0, :cond_228

    .line 371
    move v0, v12

    goto :goto_22a

    .line 370
    :cond_228
    nop

    .line 371
    move v0, v13

    :goto_22a
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lmiui/widget/TriggerViewDrawer;->ZL:I

    .line 372
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v6, Lmiui/widget/TriggerViewDrawer;->ZQ:F

    .line 373
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->ZR:F

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->fG:F

    .line 375
    :cond_23e
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 376
    nop

    .line 411
    :goto_244
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->abd:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_267

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v12, :cond_267

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->abd:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->fE:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_265

    .line 414
    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 416
    :cond_265
    iput v8, v6, Lmiui/widget/TriggerViewDrawer;->abd:F

    .line 419
    :cond_267
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->aaZ:I

    if-ne v0, v11, :cond_27b

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v11, :cond_28d

    .line 421
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->aba:I

    if-ne v0, v11, :cond_28d

    .line 422
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    invoke-direct {v6, v0, v7}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_28d

    .line 426
    :cond_27b
    iget-boolean v0, v6, Lmiui/widget/TriggerViewDrawer;->abg:Z

    if-eqz v0, :cond_28a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v12, :cond_28a

    .line 427
    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 428
    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->abg:Z

    .line 430
    :cond_28a
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 433
    :cond_28d
    :goto_28d
    return v12

    .line 256
    :cond_28e
    :goto_28e
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_1e7
        :pswitch_1a0
        :pswitch_57
        :pswitch_35
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .line 535
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_9

    .line 536
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 537
    :cond_9
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaS:Landroid/view/View;

    if-ne p2, v0, :cond_12

    .line 538
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->b(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 540
    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 166
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 168
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    if-lez v0, :cond_2c

    .line 169
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 173
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1c

    goto :goto_2c

    .line 174
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_2c
    :goto_2c
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    if-eqz v0, :cond_c7

    .line 184
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    .line 185
    :goto_3c
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_53

    .line 186
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaQ:Landroid/view/View;

    goto :goto_3c

    .line 189
    :cond_53
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Vi:I

    if-lez v0, :cond_9d

    .line 190
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Vi:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_95

    .line 195
    instance-of v1, v0, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v1, :cond_6a

    .line 196
    check-cast v0, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_9d

    .line 197
    :cond_6a
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_78

    .line 198
    new-instance v1, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_9d

    .line 199
    :cond_78
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_86

    .line 200
    new-instance v1, Lmiui/widget/TriggerViewDrawer$AdapterViewWrapper;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lmiui/widget/TriggerViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_9d

    .line 202
    :cond_86
    const-string v0, "TriggerViewDrawer"

    const-string v1, "The scrollableView is a fixed view that can\'t scroll all the time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;

    invoke-direct {v0}, Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;-><init>()V

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaR:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_9d

    .line 192
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_9d
    :goto_9d
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaP:I

    if-lez v0, :cond_c6

    .line 208
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaP:I

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaS:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaS:Landroid/view/View;

    if-eqz v0, :cond_be

    .line 212
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->aaS:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_b6

    goto :goto_c6

    .line 213
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The triggerView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The triggerView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_c6
    :goto_c6
    return-void

    .line 181
    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 229
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 233
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_17

    .line 234
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    .line 236
    :cond_17
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->aaS:Landroid/view/View;

    if-eqz p1, :cond_2b

    .line 237
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->aaS:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lmiui/widget/TriggerViewDrawer;->aaS:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    .line 239
    :cond_2b
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fU()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 240
    const-string p1, "TriggerViewDrawer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Height of trigger must bigger than height of content, mTriggerDistance="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mContentDistance="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_53
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 445
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 446
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_d

    .line 447
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmiui/widget/TriggerViewDrawer;->startNestedScroll(I)Z

    .line 449
    :cond_d
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    .line 439
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gtz p1, :cond_f

    .line 440
    move p1, v0

    goto :goto_11

    .line 439
    :cond_f
    nop

    .line 440
    move p1, p2

    :goto_11
    const/4 v1, 0x2

    if-ne p3, v1, :cond_18

    if-eqz p1, :cond_18

    move p2, v0

    nop

    :cond_18
    return p2
.end method

.method public openDrawer()V
    .registers 2

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->openDrawer(Z)V

    .line 622
    return-void
.end method

.method public openDrawer(Z)V
    .registers 3

    .line 629
    if-eqz p1, :cond_10

    .line 630
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    .line 631
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    sub-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;->s(II)V

    .line 632
    goto :goto_1b

    .line 633
    :cond_10
    iget p1, p0, Lmiui/widget/TriggerViewDrawer;->aaT:I

    invoke-direct {p0, p1}, Lmiui/widget/TriggerViewDrawer;->aL(I)V

    .line 634
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fV()V

    .line 635
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    .line 637
    :goto_1b
    return-void
.end method

.method public setAutoClose(Z)V
    .registers 2

    .line 682
    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->aaX:Z

    .line 683
    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 2

    .line 606
    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->NB:Z

    .line 607
    return-void
.end method

.method public setDrawerListener(Lmiui/widget/TriggerViewDrawer$DrawerListener;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->aaV:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    .line 615
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 4

    .line 221
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setNestedScrollingEnabled(Z)V

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    if-eqz p1, :cond_17

    .line 223
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Landroid/view/View;

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Vi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 225
    :cond_17
    return-void
.end method

.method public setTriggerDistance(I)V
    .registers 2

    .line 666
    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->aaU:I

    .line 667
    return-void
.end method

.method public setTriggerListener(Lmiui/widget/TriggerViewDrawer$TriggerListener;)V
    .registers 2

    .line 674
    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->aaW:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    .line 675
    return-void
.end method
