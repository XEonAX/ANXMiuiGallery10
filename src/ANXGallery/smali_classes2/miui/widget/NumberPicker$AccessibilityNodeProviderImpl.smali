.class Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final WX:I = 0x1

.field private static final WY:I = 0x2

.field private static final WZ:I = 0x3


# instance fields
.field private final Mq:Landroid/graphics/Rect;

.field final synthetic WW:Lmiui/widget/NumberPicker;

.field private final Xa:[I

.field private Xb:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    .line 2216
    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2225
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mq:Landroid/graphics/Rect;

    .line 2227
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xa:[I

    .line 2229
    const/high16 p1, -0x80000000

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    return-void
.end method

.method private a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .line 2529
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2530
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2531
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2532
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2533
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2534
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2535
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2536
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2537
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2538
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mq:Landroid/graphics/Rect;

    .line 2539
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2540
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_47

    move p3, p2

    goto :goto_48

    :cond_47
    move p3, p4

    :goto_48
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2541
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2542
    nop

    .line 2543
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xa:[I

    .line 2544
    iget-object p5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p5, p3}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2545
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2546
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2548
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-eq p2, p1, :cond_69

    .line 2549
    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2551
    :cond_69
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-ne p2, p1, :cond_72

    .line 2552
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2554
    :cond_72
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 2555
    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2558
    :cond_7f
    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .registers 6

    .line 2459
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2460
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2461
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2462
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2463
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2464
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2465
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2466
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2467
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1, p3, p2}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2469
    :cond_4a
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2473
    packed-switch p2, :pswitch_data_96

    goto/16 :goto_95

    .line 2475
    :pswitch_5
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fv()Ljava/lang/String;

    move-result-object p2

    .line 2476
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2477
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2478
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2480
    :cond_25
    return-void

    .line 2482
    :pswitch_26
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2483
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4d

    .line 2484
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 2485
    invoke-virtual {p0, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2486
    return-void

    .line 2488
    :cond_4d
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2489
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 2490
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2491
    invoke-virtual {p0, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2492
    return-void

    .line 2494
    :cond_73
    goto :goto_95

    .line 2496
    :pswitch_74
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fw()Ljava/lang/String;

    move-result-object p2

    .line 2497
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 2498
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 2499
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2501
    :cond_94
    return-void

    .line 2503
    :goto_95
    return-void

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_74
        :pswitch_26
        :pswitch_5
    .end packed-switch
.end method

.method private ay(I)V
    .registers 4

    .line 2448
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2449
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2450
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2451
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2452
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2453
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2454
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2456
    :cond_37
    return-void
.end method

.method private e(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    .line 2507
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2508
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2509
    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-eq v1, v2, :cond_19

    .line 2510
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2512
    :cond_19
    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-ne v1, v2, :cond_22

    .line 2513
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2515
    :cond_22
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mq:Landroid/graphics/Rect;

    .line 2516
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2517
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_33

    move p1, p3

    goto :goto_34

    :cond_33
    move p1, p2

    :goto_34
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2518
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2519
    nop

    .line 2520
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xa:[I

    .line 2521
    iget-object p4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p4, p1}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2522
    aget p2, p1, p2

    aget p1, p1, p3

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2523
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2524
    return-object v0
.end method

.method private f(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    .line 2563
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2564
    const-class v1, Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2565
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2566
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2568
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->ft()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2569
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2571
    :cond_2b
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2572
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fu()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    .line 2573
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2576
    :cond_3d
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2577
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2578
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2580
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mq:Landroid/graphics/Rect;

    .line 2582
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2583
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2585
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_67

    move p1, v2

    goto :goto_68

    :cond_67
    move p1, p2

    :goto_68
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2587
    nop

    .line 2588
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xa:[I

    .line 2589
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p3, p1}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2590
    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2591
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2593
    iget p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_87

    .line 2594
    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2596
    :cond_87
    iget p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-ne p1, p2, :cond_90

    .line 2597
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2599
    :cond_90
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 2600
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_ae

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_b3

    .line 2601
    :cond_ae
    const/16 p1, 0x1000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2603
    :cond_b3
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_c9

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_ce

    .line 2604
    :cond_c9
    const/16 p1, 0x2000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2608
    :cond_ce
    return-object v0
.end method

.method private ft()Z
    .registers 3

    .line 2612
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private fu()Z
    .registers 3

    .line 2616
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private fv()Ljava/lang/String;
    .registers 4

    .line 2620
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->j(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2621
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->k(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2622
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;I)I

    move-result v0

    .line 2624
    :cond_16
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_3d

    .line 2625
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 2626
    :cond_2d
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    .line 2625
    :goto_3c
    return-object v0

    .line 2628
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private fw()Ljava/lang/String;
    .registers 4

    .line 2632
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->j(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2633
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->k(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2634
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;I)I

    move-result v0

    .line 2636
    :cond_16
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_3d

    .line 2637
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 2638
    :cond_2d
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    .line 2637
    :goto_3c
    return-object v0

    .line 2640
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .line 2233
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c7

    packed-switch p1, :pswitch_data_100

    .line 2253
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2238
    :pswitch_b
    const/4 v1, 0x3

    .line 2239
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fv()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2240
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2241
    invoke-static {p1}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    .line 2238
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2243
    :pswitch_45
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2244
    invoke-static {v0}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2245
    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2246
    invoke-static {v2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2243
    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->e(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2248
    :pswitch_7e
    const/4 v1, 0x1

    .line 2249
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fw()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2250
    invoke-static {p1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2251
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    .line 2248
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2235
    :cond_c7
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2236
    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2235
    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->f(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_45
        :pswitch_b
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2262
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2264
    const/4 v2, -0x1

    if-eq p2, v2, :cond_23

    packed-switch p2, :pswitch_data_30

    .line 2282
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2277
    :pswitch_1f
    invoke-direct {p0, v0, p2, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2279
    return-object v1

    .line 2266
    :cond_23
    const/4 p1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2268
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2270
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2272
    return-object v1

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public o(II)V
    .registers 4

    .line 2428
    packed-switch p1, :pswitch_data_26

    goto :goto_25

    .line 2430
    :pswitch_4
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->ft()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2431
    nop

    .line 2432
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fv()Ljava/lang/String;

    move-result-object v0

    .line 2431
    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(IILjava/lang/String;)V

    goto :goto_25

    .line 2436
    :pswitch_13
    invoke-direct {p0, p2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->ay(I)V

    .line 2437
    goto :goto_25

    .line 2439
    :pswitch_17
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fu()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2440
    nop

    .line 2441
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fw()Ljava/lang/String;

    move-result-object v0

    .line 2440
    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(IILjava/lang/String;)V

    .line 2445
    :cond_25
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_4
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 12

    .line 2287
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_14f

    const v0, 0x8000

    const/high16 v6, 0x10000

    const/16 v7, 0x10

    packed-switch p1, :pswitch_data_1bc

    goto/16 :goto_15c

    .line 2393
    :pswitch_17
    if-eq p2, v7, :cond_56

    if-eq p2, v3, :cond_3a

    if-eq p2, v2, :cond_1e

    .line 2422
    return v5

    .line 2413
    :cond_1e
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-ne p2, p1, :cond_39

    .line 2414
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2415
    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2417
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2418
    return v4

    .line 2420
    :cond_39
    return v5

    .line 2404
    :cond_3a
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-eq p2, p1, :cond_55

    .line 2405
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2406
    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2408
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2409
    return v4

    .line 2411
    :cond_55
    return v5

    .line 2395
    :cond_56
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 2396
    if-ne p1, v4, :cond_62

    .line 2397
    move v5, v4

    goto :goto_63

    .line 2396
    :cond_62
    nop

    .line 2397
    :goto_63
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2, v5}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2398
    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2400
    return v4

    .line 2402
    :cond_6c
    return v5

    .line 2320
    :pswitch_6d
    if-eq p2, v7, :cond_e8

    if-eq p2, v3, :cond_d4

    if-eq p2, v2, :cond_c0

    packed-switch p2, :pswitch_data_1c6

    .line 2358
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2327
    :pswitch_81
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 2328
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 2329
    return v4

    .line 2331
    :cond_9f
    return v5

    .line 2322
    :pswitch_a0
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_bf

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_bf

    .line 2323
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    .line 2361
    :cond_bf
    return v5

    .line 2349
    :cond_c0
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-ne p2, p1, :cond_d3

    .line 2350
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2351
    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2353
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    .line 2354
    return v4

    .line 2356
    :cond_d3
    return v5

    .line 2340
    :cond_d4
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-eq p2, p1, :cond_e7

    .line 2341
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2342
    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2344
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    .line 2345
    return v4

    .line 2347
    :cond_e7
    return v5

    .line 2334
    :cond_e8
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 2335
    return v4

    .line 2337
    :cond_f1
    return v5

    .line 2363
    :pswitch_f2
    if-eq p2, v7, :cond_13d

    if-eq p2, v3, :cond_11b

    if-eq p2, v2, :cond_f9

    .line 2391
    return v5

    .line 2382
    :cond_f9
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-ne p2, p1, :cond_11a

    .line 2383
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2384
    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2386
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2387
    return v4

    .line 2389
    :cond_11a
    return v5

    .line 2373
    :cond_11b
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-eq p2, p1, :cond_13c

    .line 2374
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2375
    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2377
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2378
    return v4

    .line 2380
    :cond_13c
    return v5

    .line 2365
    :cond_13d
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14e

    .line 2366
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2, v4}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2367
    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2369
    return v4

    .line 2371
    :cond_14e
    return v5

    .line 2289
    :cond_14f
    if-eq p2, v3, :cond_1b3

    if-eq p2, v2, :cond_1ab

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_186

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_161

    .line 2318
    nop

    .line 2424
    :goto_15c
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2311
    :cond_161
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_185

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2312
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_17f

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_185

    .line 2313
    :cond_17f
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1, v5}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2314
    return v4

    .line 2316
    :cond_185
    return v5

    .line 2304
    :cond_186
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1aa

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    .line 2305
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1a4

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1aa

    .line 2306
    :cond_1a4
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1, v4}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2307
    return v4

    .line 2309
    :cond_1aa
    return v5

    .line 2297
    :cond_1ab
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-ne p2, p1, :cond_1b2

    .line 2298
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2299
    return v4

    .line 2301
    :cond_1b2
    return v5

    .line 2291
    :cond_1b3
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    if-eq p2, p1, :cond_1ba

    .line 2292
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xb:I

    .line 2293
    return v4

    .line 2295
    :cond_1ba
    return v5

    nop

    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_6d
        :pswitch_17
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_81
    .end packed-switch
.end method
