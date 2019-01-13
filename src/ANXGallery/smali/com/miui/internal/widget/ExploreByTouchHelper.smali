.class public abstract Lcom/miui/internal/widget/ExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field private static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final tS:Ljava/lang/String;

.field private static final tT:Landroid/graphics/Rect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mView:Landroid/view/View;

.field private tU:Landroid/graphics/Rect;

.field private tV:Landroid/graphics/Rect;

.field private tW:[I

.field private tX:Landroid/graphics/Rect;

.field private tY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tZ:Landroid/view/accessibility/AccessibilityManager;

.field private ua:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private ub:I

.field private uc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 59
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tS:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 89
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    .line 92
    iput v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uc:I

    .line 100
    if-eqz p1, :cond_20

    .line 104
    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    .line 106
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tZ:Landroid/view/accessibility/AccessibilityManager;

    .line 107
    return-void

    .line 101
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->t(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(IILandroid/os/Bundle;)Z
    .registers 5

    .line 524
    const/16 v0, 0x40

    if-eq p2, v0, :cond_d

    const/16 v0, 0x80

    if-eq p2, v0, :cond_d

    .line 529
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 527
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->f(II)Z

    move-result p1

    return p1
.end method

.method private a(ILandroid/os/Bundle;)Z
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/Rect;)Z
    .registers 6

    .line 554
    const/4 v0, 0x0

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_53

    .line 559
    :cond_a
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    .line 560
    return v0

    .line 564
    :cond_13
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 565
    :goto_19
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_35

    .line 566
    check-cast v1, Landroid/view/View;

    .line 567
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_34

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_34

    .line 570
    :cond_2f
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 571
    goto :goto_19

    .line 568
    :cond_34
    :goto_34
    return v0

    .line 574
    :cond_35
    if-nez v1, :cond_38

    .line 575
    return v0

    .line 579
    :cond_38
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tX:Landroid/graphics/Rect;

    if-nez v1, :cond_43

    .line 580
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tX:Landroid/graphics/Rect;

    .line 582
    :cond_43
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tX:Landroid/graphics/Rect;

    .line 583
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 584
    return v0

    .line 588
    :cond_4e
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 555
    :cond_53
    :goto_53
    return v0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private bI()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 7

    .line 380
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 382
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 385
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 388
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tY:Ljava/util/List;

    if-nez v2, :cond_1e

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tY:Ljava/util/List;

    goto :goto_23

    .line 391
    :cond_1e
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 393
    :goto_23
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tY:Ljava/util/List;

    .line 394
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 395
    if-lez v1, :cond_39

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_31

    goto :goto_39

    .line 396
    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_39
    :goto_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 400
    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v1, :cond_52

    .line 401
    iget-object v4, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 404
    :cond_52
    return-object v0
.end method

.method private bJ()V
    .registers 2

    .line 505
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tW:[I

    .line 506
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tV:Landroid/graphics/Rect;

    .line 507
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tU:Landroid/graphics/Rect;

    .line 508
    return-void
.end method

.method private d(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    .line 298
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->e(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 300
    :cond_8
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->s(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private e(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    .line 334
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 336
    sget-object v0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 342
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_21

    goto :goto_29

    .line 343
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 351
    return-object p2
.end method

.method private f(II)Z
    .registers 4

    .line 534
    const/16 v0, 0x40

    if-eq p2, v0, :cond_f

    const/16 v0, 0x80

    if-eq p2, v0, :cond_a

    .line 540
    const/4 p1, 0x0

    return p1

    .line 538
    :cond_a
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->x(I)Z

    move-result p1

    return p1

    .line 536
    :cond_f
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->w(I)Z

    move-result p1

    return p1
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .registers 5

    .line 511
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 513
    :cond_8
    invoke-direct {p0, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private r(I)V
    .registers 4

    .line 274
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uc:I

    if-ne v0, p1, :cond_5

    .line 275
    return-void

    .line 278
    :cond_5
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uc:I

    .line 279
    iput p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uc:I

    .line 283
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 284
    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 285
    return-void
.end method

.method private s(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    .line 314
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 320
    return-object p1
.end method

.method private t(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .line 365
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 369
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->u(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 367
    :cond_8
    invoke-direct {p0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->bI()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method private u(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    .line 436
    invoke-direct {p0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->bJ()V

    .line 437
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tV:Landroid/graphics/Rect;

    .line 438
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tW:[I

    .line 439
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tU:Landroid/graphics/Rect;

    .line 441
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 444
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 445
    sget-object v5, Lcom/miui/internal/widget/ExploreByTouchHelper;->tS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 446
    sget-object v5, Lcom/miui/internal/widget/ExploreByTouchHelper;->tT:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 449
    invoke-virtual {p0, p1, v3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 452
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_33

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2b

    goto :goto_33

    .line 453
    :cond_2b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_33
    :goto_33
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 458
    sget-object v5, Lcom/miui/internal/widget/ExploreByTouchHelper;->tT:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 463
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v5

    .line 464
    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_ab

    .line 468
    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-nez v5, :cond_a3

    .line 474
    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 476
    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 479
    iget v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    const/4 v7, 0x0

    if-ne v5, p1, :cond_6e

    .line 480
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 481
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_76

    .line 483
    :cond_6e
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 484
    const/16 p1, 0x40

    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 488
    :goto_76
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 489
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 490
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 494
    :cond_82
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 495
    aget p1, v1, v7

    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr p1, v5

    .line 496
    aget v1, v1, v4

    iget-object v4, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v1, v4

    .line 497
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 498
    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 499
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 501
    return-object v3

    .line 469
    :cond_a3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_ab
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    :cond_b3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private v(I)Z
    .registers 3

    .line 597
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private w(I)Z
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 616
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tZ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 617
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_3d

    .line 621
    :cond_1a
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->v(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 623
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2d

    .line 624
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 629
    :cond_2d
    iput p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    .line 632
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 633
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 635
    const/4 p1, 0x1

    return p1

    .line 637
    :cond_3c
    return v2

    .line 618
    :cond_3d
    :goto_3d
    return v2
.end method

.method private x(I)Z
    .registers 3

    .line 648
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->v(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 649
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    .line 650
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 651
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 653
    const/4 p1, 0x1

    return p1

    .line 655
    :cond_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tZ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tZ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3d

    .line 147
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_29

    packed-switch v0, :pswitch_data_3e

    .line 160
    return v1

    .line 154
    :pswitch_20
    iget p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    if-eq p1, v4, :cond_28

    .line 155
    invoke-direct {p0, v4}, Lcom/miui/internal/widget/ExploreByTouchHelper;->r(I)V

    .line 156
    return v3

    .line 158
    :cond_28
    return v1

    .line 150
    :cond_29
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result p1

    .line 151
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->r(I)V

    .line 152
    if-eq p1, v4, :cond_3c

    move v1, v3

    nop

    :cond_3c
    return v1

    .line 144
    :cond_3d
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x9
        :pswitch_29
        :pswitch_20
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 3

    .line 117
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ua:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez p1, :cond_c

    .line 118
    new-instance p1, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/miui/internal/widget/ExploreByTouchHelper;Lcom/miui/internal/widget/ExploreByTouchHelper$1;)V

    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ua:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    .line 120
    :cond_c
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ua:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object p1
.end method

.method public getFocusedVirtualView()I
    .registers 2

    .line 262
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ub:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public invalidateRoot()V
    .registers 3

    .line 204
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 205
    return-void
.end method

.method public invalidateVirtualView(I)V
    .registers 3

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 221
    return-void
.end method

.method public invalidateVirtualView(II)V
    .registers 5

    .line 242
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tZ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 243
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_2a

    .line 245
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 248
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;

    move-result-object v1

    .line 249
    invoke-virtual {v1, p1, p2}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 250
    iget-object p2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 253
    :cond_2a
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 721
    return-void
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 791
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public sendEventForVirtualView(II)Z
    .registers 5

    .line 182
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->tZ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_22

    .line 186
    :cond_e
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 187
    if-nez v1, :cond_17

    .line 188
    return v0

    .line 191
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v1, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 183
    :cond_22
    :goto_22
    return v0
.end method
