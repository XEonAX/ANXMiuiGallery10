.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiui/widget/NumberPicker$CustomEditText;,
        Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiui/widget/NumberPicker$SetSelectionCommand;,
        Lmiui/widget/NumberPicker$PressedStateHelper;,
        Lmiui/widget/NumberPicker$InputTextFilter;,
        Lmiui/widget/NumberPicker$Formatter;,
        Lmiui/widget/NumberPicker$OnScrollListener;,
        Lmiui/widget/NumberPicker$OnValueChangeListener;,
        Lmiui/widget/NumberPicker$SoundPlayHandler;,
        Lmiui/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field private static final PRESSED_STATE_SET:[I

.field static final VF:Lmiui/widget/NumberPicker$Formatter;

.field static final Vn:I = 0x5

.field private static final Vo:Ljava/lang/String; = "NumberPicker_sound_play"

.field private static final Vp:J = 0x12cL

.field private static final Vq:I = 0x2

.field private static final Vr:I = 0x8

.field private static final Vs:I = 0x320

.field private static final Vt:I = 0x12c

.field private static final Vu:F = 0.9f

.field private static final Vv:I = 0x2

.field private static final Vw:I = 0x30

.field private static final Vx:I

.field private static final Vy:I = -0x1

.field private static final Vz:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final WP:F = 45.0f

.field private static final WR:I = 0xca

.field private static final WV:[C


# instance fields
.field private NH:I

.field private VB:I

.field private VD:I

.field private VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

.field private final VJ:Landroid/widget/EditText;

.field private final VK:I

.field private final VL:I

.field private final VM:I

.field private final VO:I

.field private VP:I

.field private final VQ:Z

.field private VR:I

.field private VS:[Ljava/lang/String;

.field private VT:I

.field private VV:I

.field private VW:I

.field private VX:Lmiui/widget/NumberPicker$OnValueChangeListener;

.field private VY:Lmiui/widget/NumberPicker$OnScrollListener;

.field private VZ:Lmiui/widget/NumberPicker$Formatter;

.field private WA:Z

.field private WB:Z

.field private WC:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final WD:Lmiui/widget/NumberPicker$PressedStateHelper;

.field private WE:I

.field private WG:Landroid/graphics/Paint;

.field private WH:I

.field private WI:F

.field private WJ:I

.field private WK:I

.field private WL:I

.field private WM:I

.field private WN:I

.field private WO:F

.field private WQ:I

.field private WT:Ljava/lang/CharSequence;

.field private WU:F

.field private Wa:J

.field private final Wb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Wc:[I

.field private final Wd:Landroid/graphics/Paint;

.field private We:I

.field private Wf:I

.field private Wg:I

.field private final Wh:Landroid/widget/Scroller;

.field private final Wi:Landroid/widget/Scroller;

.field private Wj:I

.field private Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

.field private Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private Wn:F

.field private Wo:J

.field private Wp:F

.field private Wq:I

.field private Wr:I

.field private Ws:Z

.field private final Wt:Z

.field private final Wu:I

.field private Wv:Z

.field private Ww:Z

.field private Wx:I

.field private Wy:I

.field private Wz:I

.field private fE:I

.field private final mh:I

.field private qS:Landroid/view/VelocityTracker;

.field private final uA:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 119
    sget v0, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    sput v0, Lmiui/widget/NumberPicker;->Vx:I

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->Vz:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    new-instance v0, Lmiui/widget/NumberPicker$NumberFormatter;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lmiui/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->VF:Lmiui/widget/NumberPicker$Formatter;

    .line 515
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    .line 1984
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_28

    sput-object v0, Lmiui/widget/NumberPicker;->WV:[C

    return-void

    :array_28
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 597
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 606
    sget v0, Lcom/miui/internal/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 607
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 617
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    sget-object v0, Lmiui/widget/NumberPicker;->Vz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mh:I

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->VB:I

    .line 134
    const/4 v1, 0x2

    iput v1, p0, Lmiui/widget/NumberPicker;->VD:I

    .line 276
    const/16 v2, 0x190

    iput v2, p0, Lmiui/widget/NumberPicker;->VP:I

    .line 331
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->Wa:J

    .line 336
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lmiui/widget/NumberPicker;->Wb:Landroid/util/SparseArray;

    .line 341
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lmiui/widget/NumberPicker;->Wc:[I

    .line 356
    const/high16 v2, -0x80000000

    iput v2, p0, Lmiui/widget/NumberPicker;->Wf:I

    .line 447
    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/NumberPicker;->NH:I

    .line 498
    const/4 v3, -0x1

    iput v3, p0, Lmiui/widget/NumberPicker;->WE:I

    .line 565
    const/16 v4, 0x1e

    iput v4, p0, Lmiui/widget/NumberPicker;->WH:I

    .line 569
    const/16 v4, 0x19

    iput v4, p0, Lmiui/widget/NumberPicker;->WJ:I

    .line 571
    const/16 v4, 0xe

    iput v4, p0, Lmiui/widget/NumberPicker;->WK:I

    .line 573
    const/16 v4, 0xa

    iput v4, p0, Lmiui/widget/NumberPicker;->WL:I

    .line 575
    const v4, -0x49ffd

    iput v4, p0, Lmiui/widget/NumberPicker;->WM:I

    .line 576
    const/high16 v5, 0x7f000000

    iput v5, p0, Lmiui/widget/NumberPicker;->WN:I

    .line 582
    iput v4, p0, Lmiui/widget/NumberPicker;->WQ:I

    .line 588
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lmiui/widget/NumberPicker;->WU:F

    .line 618
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 619
    cmpl-float v4, v5, v4

    if-eqz v4, :cond_7f

    .line 620
    iget v4, p0, Lmiui/widget/NumberPicker;->WK:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->WK:I

    .line 621
    iget v4, p0, Lmiui/widget/NumberPicker;->WJ:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->WJ:I

    .line 622
    iget v4, p0, Lmiui/widget/NumberPicker;->WL:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->WL:I

    .line 623
    iget v4, p0, Lmiui/widget/NumberPicker;->VB:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->VB:I

    .line 624
    iget v4, p0, Lmiui/widget/NumberPicker;->VD:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->VD:I

    .line 627
    :cond_7f
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/miui/internal/R$styleable;->NumberPicker:[I

    invoke-virtual {v4, p2, v6, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 628
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    .line 629
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHighlight:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WJ:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WJ:I

    .line 630
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHint:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WK:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WK:I

    .line 631
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_labelTextSize:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WL:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WL:I

    .line 632
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHighlight:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WM:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WM:I

    .line 633
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHint:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WN:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WN:I

    .line 634
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_labelTextColor:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WQ:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WQ:I

    .line 635
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_labelPadding:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WH:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WH:I

    .line 637
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 639
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fd()V

    .line 641
    sget p2, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    .line 643
    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    .line 645
    const/high16 p3, 0x40000000    # 2.0f

    .line 647
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 645
    invoke-static {v0, p3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 648
    iput p3, p0, Lmiui/widget/NumberPicker;->Wu:I

    .line 650
    const/high16 p3, 0x42340000    # 45.0f

    mul-float/2addr p3, v5

    float-to-int p3, p3

    iput p3, p0, Lmiui/widget/NumberPicker;->VK:I

    .line 652
    iput v3, p0, Lmiui/widget/NumberPicker;->VL:I

    .line 654
    const/high16 p3, 0x434a0000    # 202.0f

    mul-float/2addr p3, v5

    float-to-int p3, p3

    iput p3, p0, Lmiui/widget/NumberPicker;->VM:I

    .line 656
    iget p3, p0, Lmiui/widget/NumberPicker;->VL:I

    if-eq p3, v3, :cond_117

    iget p3, p0, Lmiui/widget/NumberPicker;->VM:I

    if-eq p3, v3, :cond_117

    iget p3, p0, Lmiui/widget/NumberPicker;->VL:I

    iget v4, p0, Lmiui/widget/NumberPicker;->VM:I

    if-gt p3, v4, :cond_10f

    goto :goto_117

    .line 658
    :cond_10f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 661
    :cond_117
    :goto_117
    iput v3, p0, Lmiui/widget/NumberPicker;->VO:I

    .line 663
    iput v3, p0, Lmiui/widget/NumberPicker;->VP:I

    .line 664
    iget p3, p0, Lmiui/widget/NumberPicker;->VO:I

    if-eq p3, v3, :cond_132

    iget p3, p0, Lmiui/widget/NumberPicker;->VP:I

    if-eq p3, v3, :cond_132

    iget p3, p0, Lmiui/widget/NumberPicker;->VO:I

    iget v4, p0, Lmiui/widget/NumberPicker;->VP:I

    if-gt p3, v4, :cond_12a

    goto :goto_132

    .line 666
    :cond_12a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_132
    :goto_132
    iget p3, p0, Lmiui/widget/NumberPicker;->VP:I

    if-ne p3, v3, :cond_138

    move p3, v0

    goto :goto_139

    :cond_138
    move p3, v2

    :goto_139
    iput-boolean p3, p0, Lmiui/widget/NumberPicker;->VQ:Z

    .line 671
    new-instance p3, Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p3, p0}, Lmiui/widget/NumberPicker$PressedStateHelper;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object p3, p0, Lmiui/widget/NumberPicker;->WD:Lmiui/widget/NumberPicker$PressedStateHelper;

    .line 678
    iget-boolean p3, p0, Lmiui/widget/NumberPicker;->Wt:Z

    xor-int/2addr p3, v0

    invoke-virtual {p0, p3}, Lmiui/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 680
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v4, "layout_inflater"

    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 682
    invoke-virtual {p3, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 685
    sget p2, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    .line 686
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    new-instance p3, Lmiui/widget/NumberPicker$1;

    invoke-direct {p3, p0}, Lmiui/widget/NumberPicker$1;-><init>(Lmiui/widget/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 696
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    new-array p3, v0, [Landroid/text/InputFilter;

    new-instance v4, Lmiui/widget/NumberPicker$InputTextFilter;

    invoke-direct {v4, p0}, Lmiui/widget/NumberPicker$InputTextFilter;-><init>(Lmiui/widget/NumberPicker;)V

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 700
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 701
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 703
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 704
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const p3, 0x800003

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setGravity(I)V

    .line 705
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setScaleX(F)V

    .line 706
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 707
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    iget p3, p0, Lmiui/widget/NumberPicker;->WH:I

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->WH:I

    iget-object v4, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 710
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->fE:I

    .line 712
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->Wq:I

    .line 713
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiui/widget/NumberPicker;->Wr:I

    .line 715
    iget-object p1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiui/widget/NumberPicker;->uA:I

    .line 718
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 719
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 720
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 721
    iget p2, p0, Lmiui/widget/NumberPicker;->WJ:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 722
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 723
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 724
    sget-object p3, Lmiui/widget/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 725
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 726
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    .line 727
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iput p1, p0, Lmiui/widget/NumberPicker;->WO:F

    .line 729
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->WG:Landroid/graphics/Paint;

    .line 730
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WG:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 731
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WG:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 732
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WG:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->WQ:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 733
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WG:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->WL:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 736
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    .line 737
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wi:Landroid/widget/Scroller;

    .line 739
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 742
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_250

    .line 743
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 745
    :cond_250
    return-void
.end method

.method private N(Ljava/lang/String;)I
    .registers 4

    .line 1937
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1939
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1940
    :catch_9
    move-exception p1

    .line 1942
    goto :goto_30

    .line 1944
    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 1946
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1947
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1948
    iget p1, p0, Lmiui/widget/NumberPicker;->VT:I

    add-int/2addr p1, v0

    return p1

    .line 1944
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1957
    :cond_2a
    :try_start_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_2f

    return p1

    .line 1958
    :catch_2f
    move-exception p1

    .line 1963
    :goto_30
    iget p1, p0, Lmiui/widget/NumberPicker;->VT:I

    return p1
.end method

.method private a(FII)F
    .registers 5

    .line 1520
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 1521
    int-to-float p1, p3

    return p1

    .line 1523
    :cond_8
    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private a(FIZ)I
    .registers 5

    .line 1511
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    .line 1512
    return p2

    .line 1514
    :cond_7
    if-eqz p3, :cond_18

    neg-float p1, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_1f

    .line 1515
    :cond_18
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 1516
    :goto_1f
    const p3, 0xffffff

    and-int/2addr p2, p3

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Ljava/lang/String;)I
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->N(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Landroid/view/View;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->q(Landroid/view/View;)V

    return-void
.end method

.method private a(ZJ)V
    .registers 5

    .line 1877
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_c

    .line 1878
    new-instance v0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_11

    .line 1880
    :cond_c
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1882
    :goto_11
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->a(Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1883
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1884
    return-void
.end method

.method private a(Landroid/widget/Scroller;)Z
    .registers 7

    .line 837
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 838
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 839
    iget p1, p0, Lmiui/widget/NumberPicker;->Wg:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->We:I

    rem-int/2addr p1, v2

    .line 840
    iget v2, p0, Lmiui/widget/NumberPicker;->Wf:I

    sub-int/2addr v2, p1

    .line 841
    const/4 p1, 0x0

    if-eqz v2, :cond_31

    .line 842
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->We:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2c

    .line 843
    if-lez v2, :cond_29

    .line 844
    iget v3, p0, Lmiui/widget/NumberPicker;->We:I

    sub-int/2addr v2, v3

    goto :goto_2c

    .line 846
    :cond_29
    iget v3, p0, Lmiui/widget/NumberPicker;->We:I

    add-int/2addr v2, v3

    .line 849
    :cond_2c
    :goto_2c
    add-int/2addr v1, v2

    .line 850
    invoke-virtual {p0, p1, v1}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 851
    return v0

    .line 853
    :cond_31
    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;I)Z
    .registers 3

    .line 64
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WA:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WA:Z

    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Z)Z
    .registers 2

    .line 64
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WA:Z

    return p1
.end method

.method private at(I)V
    .registers 3

    .line 1725
    iget v0, p0, Lmiui/widget/NumberPicker;->NH:I

    if-ne v0, p1, :cond_5

    .line 1726
    return-void

    .line 1728
    :cond_5
    if-nez p1, :cond_a

    .line 1729
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fg()V

    .line 1731
    :cond_a
    iput p1, p0, Lmiui/widget/NumberPicker;->NH:I

    .line 1732
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VY:Lmiui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_15

    .line 1733
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VY:Lmiui/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lmiui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiui/widget/NumberPicker;I)V

    .line 1735
    :cond_15
    return-void
.end method

.method private au(I)I
    .registers 5

    .line 1756
    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    if-le p1, v0, :cond_13

    .line 1757
    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    iget v1, p0, Lmiui/widget/NumberPicker;->VV:I

    sub-int/2addr p1, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v2, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr v1, v2

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1758
    :cond_13
    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    if-ge p1, v0, :cond_26

    .line 1759
    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v1, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr v1, p1

    iget p1, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v2, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1761
    :cond_26
    return p1
.end method

.method private av(I)V
    .registers 5

    .line 1801
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wb:Landroid/util/SparseArray;

    .line 1802
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1803
    if-eqz v1, :cond_b

    .line 1804
    return-void

    .line 1806
    :cond_b
    iget v1, p0, Lmiui/widget/NumberPicker;->VT:I

    if-lt p1, v1, :cond_26

    iget v1, p0, Lmiui/widget/NumberPicker;->VV:I

    if-le p1, v1, :cond_14

    goto :goto_26

    .line 1809
    :cond_14
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1810
    iget v1, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int v1, p1, v1

    .line 1811
    iget-object v2, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    aget-object v1, v2, v1

    .line 1812
    goto :goto_28

    .line 1813
    :cond_21
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->aw(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 1807
    :cond_26
    :goto_26
    const-string v1, ""

    .line 1816
    :goto_28
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1817
    return-void
.end method

.method private aw(I)Ljava/lang/String;
    .registers 3

    .line 1820
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VZ:Lmiui/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/widget/NumberPicker;->VZ:Lmiui/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method private ax(I)V
    .registers 4

    .line 1864
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->sendAccessibilityEvent(I)V

    .line 1865
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ff()V

    .line 1866
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VX:Lmiui/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_12

    .line 1867
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VX:Lmiui/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lmiui/widget/NumberPicker;->VW:I

    invoke-interface {v0, p0, p1, v1}, Lmiui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiui/widget/NumberPicker;II)V

    .line 1869
    :cond_12
    return-void
.end method

.method private b(Landroid/widget/Scroller;)V
    .registers 3

    .line 1709
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_12

    .line 1710
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fq()Z

    move-result p1

    if-nez p1, :cond_d

    .line 1711
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1713
    :cond_d
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->at(I)V

    goto :goto_1a

    .line 1715
    :cond_12
    iget p1, p0, Lmiui/widget/NumberPicker;->NH:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    .line 1716
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1719
    :cond_1a
    :goto_1a
    return-void
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;I)Z
    .registers 3

    .line 64
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WB:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WB:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;Z)Z
    .registers 2

    .line 64
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WB:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->VV:I

    return p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;I)I
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->au(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;II)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lmiui/widget/NumberPicker;->n(II)V

    return-void
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;Z)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->x(Z)V

    return-void
.end method

.method private c([I)V
    .registers 5

    .line 1769
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    .line 1770
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    aput v2, p1, v0

    .line 1769
    move v0, v1

    goto :goto_1

    .line 1772
    :cond_e
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1773
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-eqz v1, :cond_1f

    iget v1, p0, Lmiui/widget/NumberPicker;->VV:I

    if-le v0, v1, :cond_1f

    .line 1774
    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    .line 1776
    :cond_1f
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1777
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->av(I)V

    .line 1778
    return-void
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->aw(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d([I)V
    .registers 5

    .line 1785
    const/4 v0, 0x1

    array-length v1, p1

    sub-int/2addr v1, v0

    :goto_3
    if-lez v1, :cond_e

    .line 1786
    add-int/lit8 v2, v1, -0x1

    aget v2, p1, v2

    aput v2, p1, v1

    .line 1785
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1788
    :cond_e
    aget v1, p1, v0

    sub-int/2addr v1, v0

    .line 1789
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    if-ge v1, v0, :cond_1b

    .line 1790
    iget v1, p0, Lmiui/widget/NumberPicker;->VV:I

    .line 1792
    :cond_1b
    const/4 v0, 0x0

    aput v1, p1, v0

    .line 1793
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->av(I)V

    .line 1794
    return-void
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;)Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->WA:Z

    return p0
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;Z)Z
    .registers 2

    .line 64
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Wv:Z

    return p1
.end method

.method static synthetic e(Lmiui/widget/NumberPicker;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->Wy:I

    return p0
.end method

.method static synthetic f(Lmiui/widget/NumberPicker;)Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->WB:Z

    return p0
.end method

.method private fd()V
    .registers 3

    .line 802
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_18

    .line 803
    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    .line 804
    new-instance v1, Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    .line 805
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget v1, p0, Lmiui/widget/NumberPicker;->mh:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->init(I)V

    .line 807
    :cond_18
    return-void
.end method

.method private fe()V
    .registers 3

    .line 810
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_e

    .line 811
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget v1, p0, Lmiui/widget/NumberPicker;->mh:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->release(I)V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    .line 814
    :cond_e
    return-void
.end method

.method private ff()V
    .registers 2

    .line 817
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_9

    .line 818
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->play()V

    .line 820
    :cond_9
    return-void
.end method

.method private fg()V
    .registers 2

    .line 823
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_9

    .line 824
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VH:Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->stop()V

    .line 826
    :cond_9
    return-void
.end method

.method private fh()V
    .registers 6

    .line 1231
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->VQ:Z

    if-nez v0, :cond_5

    .line 1232
    return-void

    .line 1234
    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 1235
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/widget/NumberPicker;->WJ:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1236
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3b

    .line 1237
    const/4 v0, 0x0

    .line 1238
    :goto_15
    const/16 v1, 0x9

    if-ge v2, v1, :cond_2c

    .line 1239
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1240
    cmpl-float v3, v1, v0

    if-lez v3, :cond_29

    .line 1241
    nop

    .line 1238
    move v0, v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1244
    :cond_2c
    iget v1, p0, Lmiui/widget/NumberPicker;->VV:I

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->aw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1245
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    .line 1246
    goto :goto_53

    .line 1247
    :cond_3b
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    array-length v1, v1

    .line 1248
    :goto_3e
    if-ge v2, v1, :cond_53

    .line 1249
    iget-object v3, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 1250
    iget-object v4, p0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1251
    cmpl-float v4, v3, v0

    if-lez v4, :cond_50

    .line 1252
    nop

    .line 1248
    move v0, v3

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 1256
    :cond_53
    :goto_53
    iput v0, p0, Lmiui/widget/NumberPicker;->WI:F

    .line 1257
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1258
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1259
    iget v1, p0, Lmiui/widget/NumberPicker;->VP:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_86

    .line 1260
    iget v1, p0, Lmiui/widget/NumberPicker;->VO:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_82

    .line 1261
    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->VP:I

    goto :goto_86

    .line 1263
    :cond_82
    iget v0, p0, Lmiui/widget/NumberPicker;->VO:I

    iput v0, p0, Lmiui/widget/NumberPicker;->VP:I

    .line 1266
    :cond_86
    :goto_86
    return-void
.end method

.method private fi()V
    .registers 6

    .line 1610
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wb:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1611
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[I

    .line 1612
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    .line 1613
    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Lmiui/widget/NumberPicker;->Wc:[I

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 1614
    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    .line 1615
    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-eqz v4, :cond_1c

    .line 1616
    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->au(I)I

    move-result v3

    .line 1618
    :cond_1c
    aput v3, v0, v2

    .line 1619
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->av(I)V

    .line 1613
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1621
    :cond_26
    return-void
.end method

.method private fj()V
    .registers 6

    .line 1680
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1681
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[I

    .line 1682
    const/4 v1, 0x0

    array-length v2, v0

    iget v3, p0, Lmiui/widget/NumberPicker;->uA:I

    mul-int/2addr v2, v3

    .line 1683
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 1684
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1a

    .line 1685
    goto :goto_1b

    .line 1687
    :cond_1a
    move v1, v2

    :goto_1b
    array-length v0, v0

    int-to-float v0, v0

    .line 1688
    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->VR:I

    .line 1689
    iget v0, p0, Lmiui/widget/NumberPicker;->uA:I

    iget v1, p0, Lmiui/widget/NumberPicker;->VR:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->We:I

    .line 1693
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1694
    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    .line 1696
    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Wg:I

    .line 1697
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1698
    return-void
.end method

.method private fk()V
    .registers 3

    .line 1701
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1702
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->uA:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1703
    return-void
.end method

.method private fl()Z
    .registers 4

    .line 1849
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    if-nez v0, :cond_b

    iget v0, p0, Lmiui/widget/NumberPicker;->VW:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->aw(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1850
    :cond_b
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    iget v1, p0, Lmiui/widget/NumberPicker;->VW:I

    iget v2, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1851
    :goto_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1852
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    const/4 v0, 0x1

    return v0

    .line 1856
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private fling(I)V
    .registers 12

    .line 1741
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->Wj:I

    .line 1743
    if-lez p1, :cond_15

    .line 1744
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_26

    .line 1746
    :cond_15
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1749
    :goto_26
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1750
    return-void
.end method

.method private fm()V
    .registers 2

    .line 1890
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 1891
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1893
    :cond_9
    return-void
.end method

.method private fn()V
    .registers 4

    .line 1900
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_c

    .line 1901
    new-instance v0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_11

    .line 1903
    :cond_c
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1905
    :goto_11
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1906
    return-void
.end method

.method private fo()V
    .registers 2

    .line 1912
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_9

    .line 1913
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1915
    :cond_9
    return-void
.end method

.method private fp()V
    .registers 2

    .line 1921
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 1922
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1924
    :cond_9
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_12

    .line 1925
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1927
    :cond_12
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1b

    .line 1928
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wm:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1930
    :cond_1b
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WD:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1931
    return-void
.end method

.method private fq()Z
    .registers 8

    .line 2062
    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Wg:I

    sub-int/2addr v0, v1

    .line 2063
    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 2064
    iput v1, p0, Lmiui/widget/NumberPicker;->Wj:I

    .line 2065
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->We:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1d

    .line 2066
    if-lez v0, :cond_1a

    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    neg-int v1, v1

    goto :goto_1c

    :cond_1a
    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    :goto_1c
    add-int/2addr v0, v1

    .line 2068
    :cond_1d
    move v5, v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wi:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2069
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 2070
    const/4 v0, 0x1

    return v0

    .line 2072
    :cond_2d
    return v1
.end method

.method private fr()V
    .registers 1

    .line 2645
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 2646
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 2647
    return-void
.end method

.method static synthetic fs()[C
    .registers 1

    .line 64
    sget-object v0, Lmiui/widget/NumberPicker;->WV:[C

    return-object v0
.end method

.method static synthetic g(Lmiui/widget/NumberPicker;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->Wx:I

    return p0
.end method

.method static synthetic h(Lmiui/widget/NumberPicker;)J
    .registers 3

    .line 64
    iget-wide v0, p0, Lmiui/widget/NumberPicker;->Wa:J

    return-wide v0
.end method

.method private i(III)I
    .registers 5

    .line 1597
    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1598
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1599
    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lmiui/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    .line 1601
    :cond_d
    return p2
.end method

.method static synthetic i(Lmiui/widget/NumberPicker;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->Wu:I

    return p0
.end method

.method private i(IZ)V
    .registers 4

    .line 1631
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-eqz v0, :cond_9

    .line 1632
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->au(I)I

    move-result p1

    goto :goto_15

    .line 1634
    :cond_9
    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1635
    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1637
    :goto_15
    iget v0, p0, Lmiui/widget/NumberPicker;->VW:I

    if-ne v0, p1, :cond_1a

    .line 1638
    return-void

    .line 1640
    :cond_1a
    iget v0, p0, Lmiui/widget/NumberPicker;->VW:I

    .line 1641
    iput p1, p0, Lmiui/widget/NumberPicker;->VW:I

    .line 1642
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1643
    if-eqz p2, :cond_26

    .line 1644
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ax(I)V

    .line 1646
    :cond_26
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1647
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1648
    return-void
.end method

.method static synthetic j(Lmiui/widget/NumberPicker;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->VW:I

    return p0
.end method

.method static synthetic k(Lmiui/widget/NumberPicker;)Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->Ws:Z

    return p0
.end method

.method static synthetic l(Lmiui/widget/NumberPicker;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->VT:I

    return p0
.end method

.method private makeMeasureSpec(II)I
    .registers 7

    .line 1568
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 1569
    return p1

    .line 1571
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1572
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1573
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_33

    if-eqz v1, :cond_2e

    if-ne v1, v3, :cond_17

    .line 1575
    return p1

    .line 1581
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1579
    :cond_2e
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1577
    :cond_33
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private n(II)V
    .registers 4

    .line 1971
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_c

    .line 1972
    new-instance v0, Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    goto :goto_11

    .line 1974
    :cond_c
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1976
    :goto_11
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$SetSelectionCommand;->a(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1977
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lmiui/widget/NumberPicker$SetSelectionCommand;->b(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1978
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wk:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1979
    return-void
.end method

.method private q(Landroid/view/View;)V
    .registers 3

    .line 1824
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1825
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1827
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    goto :goto_20

    .line 1830
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->N(Ljava/lang/String;)I

    move-result p1

    .line 1831
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1833
    :goto_20
    return-void
.end method

.method private x(Z)V
    .registers 15

    .line 1658
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    if-eqz v0, :cond_3a

    .line 1659
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1660
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1661
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wi:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    .line 1663
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->Wj:I

    .line 1664
    if-eqz p1, :cond_2a

    .line 1665
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lmiui/widget/NumberPicker;->We:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_36

    .line 1667
    :cond_2a
    iget-object v7, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/NumberPicker;->We:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1669
    :goto_36
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_4a

    .line 1671
    :cond_3a
    const/4 v0, 0x1

    if-eqz p1, :cond_44

    .line 1672
    iget p1, p0, Lmiui/widget/NumberPicker;->VW:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    goto :goto_4a

    .line 1674
    :cond_44
    iget p1, p0, Lmiui/widget/NumberPicker;->VW:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1677
    :goto_4a
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    .line 1093
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    .line 1094
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1095
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wi:Landroid/widget/Scroller;

    .line 1096
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1097
    return-void

    .line 1100
    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1101
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1102
    iget v2, p0, Lmiui/widget/NumberPicker;->Wj:I

    if-nez v2, :cond_22

    .line 1103
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->Wj:I

    .line 1105
    :cond_22
    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NumberPicker;->Wj:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 1106
    iput v1, p0, Lmiui/widget/NumberPicker;->Wj:I

    .line 1107
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1108
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_39

    .line 1110
    :cond_36
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1112
    :goto_39
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1043
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    if-nez v0, :cond_9

    .line 1044
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1046
    :cond_9
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1047
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1050
    iget v1, p0, Lmiui/widget/NumberPicker;->Wx:I

    if-ge v0, v1, :cond_26

    .line 1051
    const/4 v0, 0x3

    goto :goto_2d

    .line 1052
    :cond_26
    iget v1, p0, Lmiui/widget/NumberPicker;->Wy:I

    if-le v0, v1, :cond_2c

    .line 1053
    const/4 v0, 0x1

    goto :goto_2d

    .line 1055
    :cond_2c
    const/4 v0, 0x2

    .line 1057
    :goto_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 1058
    nop

    .line 1059
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1060
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x80

    const/4 v6, -0x1

    const/16 v7, 0x100

    if-eq p1, v2, :cond_56

    packed-switch p1, :pswitch_data_6e

    goto :goto_6b

    .line 1082
    :pswitch_47
    invoke-virtual {v1, v0, v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1084
    iput v6, p0, Lmiui/widget/NumberPicker;->Wz:I

    goto :goto_6b

    .line 1062
    :pswitch_4d
    invoke-virtual {v1, v0, v5}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1064
    iput v0, p0, Lmiui/widget/NumberPicker;->Wz:I

    .line 1065
    invoke-virtual {v1, v0, v4, v3}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1067
    goto :goto_6b

    .line 1069
    :cond_56
    iget p1, p0, Lmiui/widget/NumberPicker;->Wz:I

    if-eq p1, v0, :cond_6b

    iget p1, p0, Lmiui/widget/NumberPicker;->Wz:I

    if-eq p1, v6, :cond_6b

    .line 1071
    iget p1, p0, Lmiui/widget/NumberPicker;->Wz:I

    invoke-virtual {v1, p1, v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1074
    invoke-virtual {v1, v0, v5}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1076
    iput v0, p0, Lmiui/widget/NumberPicker;->Wz:I

    .line 1077
    invoke-virtual {v1, v0, v4, v3}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1088
    :cond_6b
    :goto_6b
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_6e
    .packed-switch 0x9
        :pswitch_4d
        :pswitch_47
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 994
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 995
    const/16 v1, 0x17

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5d

    packed-switch v0, :pswitch_data_66

    goto :goto_61

    .line 1002
    :pswitch_10
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Wt:Z

    if-nez v1, :cond_15

    .line 1003
    goto :goto_61

    .line 1005
    :cond_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_6e

    goto :goto_61

    .line 1019
    :pswitch_1e
    iget v1, p0, Lmiui/widget/NumberPicker;->WE:I

    if-ne v1, v0, :cond_61

    .line 1020
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/NumberPicker;->WE:I

    .line 1021
    return v2

    .line 1007
    :pswitch_26
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Ws:Z

    const/16 v3, 0x14

    if-nez v1, :cond_3a

    if-ne v0, v3, :cond_2f

    goto :goto_3a

    .line 1008
    :cond_2f
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_61

    goto :goto_44

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_61

    .line 1009
    :goto_44
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->requestFocus()Z

    .line 1010
    iput v0, p0, Lmiui/widget/NumberPicker;->WE:I

    .line 1011
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 1012
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 1013
    if-ne v0, v3, :cond_58

    move p1, v2

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    :goto_59
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->x(Z)V

    .line 1015
    :cond_5c
    return v2

    .line 998
    :cond_5d
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 999
    nop

    .line 1026
    :cond_61
    :goto_61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_66
    .packed-switch 0x13
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 1548
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1549
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 983
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_e

    .line 986
    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 989
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1032
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_e

    .line 1035
    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 1038
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .registers 1

    .line 749
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 751
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 752
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .line 1537
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    if-nez v0, :cond_9

    .line 1538
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1540
    :cond_9
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WC:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_14

    .line 1541
    new-instance v0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->WC:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1543
    :cond_14
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WC:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .line 1456
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .line 1410
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    .line 1372
    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .line 1334
    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .line 1451
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 1325
    iget v0, p0, Lmiui/widget/NumberPicker;->VW:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .line 1277
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Ws:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 1461
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1462
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fd()V

    .line 1463
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1467
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1468
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fe()V

    .line 1469
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 1470
    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 1475
    move-object/from16 v1, p1

    iget-boolean v2, v0, Lmiui/widget/NumberPicker;->Wt:Z

    if-nez v2, :cond_c

    .line 1476
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1477
    return-void

    .line 1479
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v2

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v3

    .line 1481
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    const/4 v2, 0x2

    div-int/2addr v4, v2

    int-to-float v3, v4

    .line 1482
    iget v4, v0, Lmiui/widget/NumberPicker;->Wg:I

    int-to-float v4, v4

    .line 1484
    iget v5, v0, Lmiui/widget/NumberPicker;->Wf:I

    iget v6, v0, Lmiui/widget/NumberPicker;->We:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 1485
    iget-object v6, v0, Lmiui/widget/NumberPicker;->Wb:Landroid/util/SparseArray;

    .line 1486
    iget-object v7, v0, Lmiui/widget/NumberPicker;->Wc:[I

    .line 1487
    const/4 v8, 0x0

    move v9, v4

    move v4, v8

    :goto_33
    const/high16 v10, 0x40000000    # 2.0f

    array-length v11, v7

    if-ge v4, v11, :cond_93

    .line 1488
    aget v11, v7, v4

    .line 1489
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1490
    sub-float v12, v5, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, v0, Lmiui/widget/NumberPicker;->We:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 1491
    iget v13, v0, Lmiui/widget/NumberPicker;->WJ:I

    iget v14, v0, Lmiui/widget/NumberPicker;->WK:I

    invoke-direct {v0, v12, v13, v14}, Lmiui/widget/NumberPicker;->a(FII)F

    move-result v13

    .line 1492
    iget-object v14, v0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1493
    iget-object v14, v0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    iget v15, v0, Lmiui/widget/NumberPicker;->WN:I

    invoke-direct {v0, v12, v15, v8}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1494
    iget v14, v0, Lmiui/widget/NumberPicker;->WK:I

    int-to-float v14, v14

    sub-float v14, v13, v14

    div-float/2addr v14, v10

    add-float/2addr v14, v9

    iget-object v15, v0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1495
    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v12, v14

    if-gez v14, :cond_8b

    .line 1496
    iget-object v14, v0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    iget v15, v0, Lmiui/widget/NumberPicker;->WM:I

    const/4 v8, 0x1

    invoke-direct {v0, v12, v15, v8}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v8

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1497
    iget v8, v0, Lmiui/widget/NumberPicker;->WK:I

    int-to-float v8, v8

    sub-float/2addr v13, v8

    div-float/2addr v13, v10

    add-float/2addr v13, v9

    iget-object v8, v0, Lmiui/widget/NumberPicker;->Wd:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v13, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1499
    :cond_8b
    iget v8, v0, Lmiui/widget/NumberPicker;->We:I

    int-to-float v8, v8

    add-float/2addr v9, v8

    .line 1487
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_33

    .line 1501
    :cond_93
    iget-object v4, v0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_dc

    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_dc

    .line 1502
    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 1503
    iget v4, v0, Lmiui/widget/NumberPicker;->WI:F

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    iget v4, v0, Lmiui/widget/NumberPicker;->VB:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lmiui/widget/NumberPicker;->WG:Landroid/graphics/Paint;

    iget-object v6, v0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_c3

    .line 1504
    :cond_bb
    iget v4, v0, Lmiui/widget/NumberPicker;->WI:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, v0, Lmiui/widget/NumberPicker;->VB:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1505
    :goto_c3
    iget v4, v0, Lmiui/widget/NumberPicker;->WJ:I

    div-int/2addr v4, v2

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iget v4, v0, Lmiui/widget/NumberPicker;->WL:I

    div-int/2addr v4, v2

    int-to-float v2, v4

    add-float/2addr v5, v2

    iget v2, v0, Lmiui/widget/NumberPicker;->VD:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    .line 1506
    iget-object v2, v0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lmiui/widget/NumberPicker;->WG:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1508
    :cond_dc
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1528
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1529
    const-class v0, Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1530
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1531
    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    iget v1, p0, Lmiui/widget/NumberPicker;->VW:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1532
    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v1, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1533
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 858
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_ab

    .line 861
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 862
    if-eqz v0, :cond_14

    .line 903
    return v1

    .line 864
    :cond_14
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 865
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->Wn:F

    iput v0, p0, Lmiui/widget/NumberPicker;->Wp:F

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->Wo:J

    .line 868
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->Wv:Z

    .line 869
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->Ww:Z

    .line 871
    iget p1, p0, Lmiui/widget/NumberPicker;->Wn:F

    iget v0, p0, Lmiui/widget/NumberPicker;->Wx:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_44

    .line 872
    iget p1, p0, Lmiui/widget/NumberPicker;->NH:I

    if-nez p1, :cond_56

    .line 873
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WD:Lmiui/widget/NumberPicker$PressedStateHelper;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$PressedStateHelper;->az(I)V

    goto :goto_56

    .line 876
    :cond_44
    iget p1, p0, Lmiui/widget/NumberPicker;->Wn:F

    iget v2, p0, Lmiui/widget/NumberPicker;->Wy:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_56

    .line 877
    iget p1, p0, Lmiui/widget/NumberPicker;->NH:I

    if-nez p1, :cond_56

    .line 878
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WD:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->az(I)V

    .line 883
    :cond_56
    :goto_56
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_6c

    .line 884
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 885
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wi:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 886
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->at(I)V

    goto :goto_aa

    .line 887
    :cond_6c
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wi:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7f

    .line 888
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wh:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 889
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wi:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_aa

    .line 890
    :cond_7f
    iget p1, p0, Lmiui/widget/NumberPicker;->Wn:F

    iget v2, p0, Lmiui/widget/NumberPicker;->Wx:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_92

    .line 891
    nop

    .line 892
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    .line 891
    invoke-direct {p0, v1, v2, v3}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto :goto_aa

    .line 893
    :cond_92
    iget p1, p0, Lmiui/widget/NumberPicker;->Wn:F

    iget v1, p0, Lmiui/widget/NumberPicker;->Wy:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a5

    .line 894
    nop

    .line 895
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    .line 894
    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto :goto_aa

    .line 897
    :cond_a5
    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->Ww:Z

    .line 898
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fn()V

    .line 900
    :goto_aa
    return v0

    .line 859
    :cond_ab
    :goto_ab
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 756
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    if-nez v0, :cond_8

    .line 757
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 758
    return-void

    .line 760
    :cond_8
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result p2

    .line 761
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result p3

    .line 764
    iget-object p4, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 765
    iget-object p5, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    .line 766
    sub-int/2addr p2, p4

    const/4 v0, 0x2

    div-int/2addr p2, v0

    .line 767
    sub-int/2addr p3, p5

    div-int/2addr p3, v0

    .line 768
    add-int/2addr p4, p2

    .line 769
    add-int/2addr p5, p3

    .line 770
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    .line 772
    if-eqz p1, :cond_48

    .line 774
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fj()V

    .line 775
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fk()V

    .line 776
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getHeight()I

    move-result p1

    iget p2, p0, Lmiui/widget/NumberPicker;->VK:I

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    iget p2, p0, Lmiui/widget/NumberPicker;->Wu:I

    sub-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/NumberPicker;->Wx:I

    .line 778
    iget p1, p0, Lmiui/widget/NumberPicker;->Wx:I

    iget p2, p0, Lmiui/widget/NumberPicker;->Wu:I

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    iget p2, p0, Lmiui/widget/NumberPicker;->VK:I

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/NumberPicker;->Wy:I

    .line 781
    :cond_48
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 785
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    if-nez v0, :cond_8

    .line 786
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 787
    return-void

    .line 790
    :cond_8
    iget v0, p0, Lmiui/widget/NumberPicker;->VP:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 791
    iget v1, p0, Lmiui/widget/NumberPicker;->VM:I

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 792
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 794
    iget v0, p0, Lmiui/widget/NumberPicker;->VO:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiui/widget/NumberPicker;->i(III)I

    move-result p1

    .line 796
    iget v0, p0, Lmiui/widget/NumberPicker;->VL:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiui/widget/NumberPicker;->i(III)I

    move-result p2

    .line 798
    invoke-virtual {p0, p1, p2}, Lmiui/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 799
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1554
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    if-nez v1, :cond_1c

    const-string v1, ""

    goto :goto_1e

    :cond_1c
    iget-object v1, p0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1557
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 908
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e4

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wt:Z

    if-nez v0, :cond_d

    goto/16 :goto_e4

    .line 911
    :cond_d
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qS:Landroid/view/VelocityTracker;

    if-nez v0, :cond_17

    .line 912
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->qS:Landroid/view/VelocityTracker;

    .line 914
    :cond_17
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 916
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_e6

    goto/16 :goto_e3

    .line 918
    :pswitch_26
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wv:Z

    if-eqz v0, :cond_2c

    .line 919
    goto/16 :goto_e3

    .line 921
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 922
    iget v0, p0, Lmiui/widget/NumberPicker;->NH:I

    if-eq v0, v2, :cond_48

    .line 923
    iget v0, p0, Lmiui/widget/NumberPicker;->Wn:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 924
    iget v1, p0, Lmiui/widget/NumberPicker;->fE:I

    if-le v0, v1, :cond_47

    .line 925
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 926
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->at(I)V

    .line 928
    :cond_47
    goto :goto_53

    .line 929
    :cond_48
    iget v0, p0, Lmiui/widget/NumberPicker;->Wp:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 930
    invoke-virtual {p0, v1, v0}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 931
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 933
    :goto_53
    iput p1, p0, Lmiui/widget/NumberPicker;->Wp:F

    .line 934
    goto/16 :goto_e3

    .line 936
    :pswitch_57
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fo()V

    .line 937
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fm()V

    .line 938
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WD:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 939
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qS:Landroid/view/VelocityTracker;

    .line 940
    const/16 v3, 0x3e8

    iget v4, p0, Lmiui/widget/NumberPicker;->Wr:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 941
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 942
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->Wr:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v3, v4, :cond_82

    .line 943
    int-to-float v0, v0

    iget v3, p0, Lmiui/widget/NumberPicker;->WU:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 945
    :cond_82
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->Wq:I

    const/4 v5, 0x2

    if-le v3, v4, :cond_92

    .line 946
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->fling(I)V

    .line 947
    invoke-direct {p0, v5}, Lmiui/widget/NumberPicker;->at(I)V

    goto :goto_db

    .line 949
    :cond_92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 950
    int-to-float v3, v0

    iget v4, p0, Lmiui/widget/NumberPicker;->Wn:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/widget/NumberPicker;->Wo:J

    sub-long/2addr v6, v8

    .line 952
    iget p1, p0, Lmiui/widget/NumberPicker;->fE:I

    if-gt v3, p1, :cond_d5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v6, v3

    if-gez p1, :cond_d5

    .line 953
    iget-boolean p1, p0, Lmiui/widget/NumberPicker;->Ww:Z

    if-eqz p1, :cond_bb

    .line 954
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->Ww:Z

    goto :goto_d8

    .line 956
    :cond_bb
    iget p1, p0, Lmiui/widget/NumberPicker;->We:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v5

    .line 958
    if-lez v0, :cond_ca

    .line 959
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->x(Z)V

    .line 960
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WD:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$PressedStateHelper;->aA(I)V

    goto :goto_d4

    .line 962
    :cond_ca
    if-gez v0, :cond_d4

    .line 963
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->x(Z)V

    .line 964
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WD:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v5}, Lmiui/widget/NumberPicker$PressedStateHelper;->aA(I)V

    .line 967
    :cond_d4
    :goto_d4
    goto :goto_d8

    .line 969
    :cond_d5
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fq()Z

    .line 971
    :goto_d8
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->at(I)V

    .line 973
    :goto_db
    iget-object p1, p0, Lmiui/widget/NumberPicker;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 974
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->qS:Landroid/view/VelocityTracker;

    .line 977
    :goto_e3
    return v2

    .line 909
    :cond_e4
    :goto_e4
    return v1

    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_57
        :pswitch_26
    .end packed-switch
.end method

.method public scrollBy(II)V
    .registers 6

    .line 1116
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wc:[I

    .line 1117
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Ws:Z

    const/4 v1, 0x2

    if-nez v0, :cond_14

    if-lez p2, :cond_14

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->VT:I

    if-gt v0, v2, :cond_14

    .line 1119
    iget p1, p0, Lmiui/widget/NumberPicker;->Wf:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Wg:I

    .line 1120
    return-void

    .line 1122
    :cond_14
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-nez v0, :cond_25

    if-gez p2, :cond_25

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->VV:I

    if-lt v0, v2, :cond_25

    .line 1124
    iget p1, p0, Lmiui/widget/NumberPicker;->Wf:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Wg:I

    .line 1125
    return-void

    .line 1127
    :cond_25
    iget v0, p0, Lmiui/widget/NumberPicker;->Wg:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiui/widget/NumberPicker;->Wg:I

    .line 1128
    :cond_2a
    :goto_2a
    iget p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    sub-int/2addr p2, v0

    iget v0, p0, Lmiui/widget/NumberPicker;->VR:I

    const/4 v2, 0x1

    if-le p2, v0, :cond_52

    .line 1129
    iget p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    .line 1130
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->d([I)V

    .line 1131
    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1132
    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-nez p2, :cond_2a

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    if-gt p2, v0, :cond_2a

    .line 1133
    iget p2, p0, Lmiui/widget/NumberPicker;->Wf:I

    iput p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    goto :goto_2a

    .line 1136
    :cond_52
    :goto_52
    iget p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    sub-int/2addr p2, v0

    iget v0, p0, Lmiui/widget/NumberPicker;->VR:I

    neg-int v0, v0

    if-ge p2, v0, :cond_7a

    .line 1137
    iget p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    add-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    .line 1138
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->c([I)V

    .line 1139
    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1140
    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-nez p2, :cond_52

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    if-lt p2, v0, :cond_52

    .line 1141
    iget p2, p0, Lmiui/widget/NumberPicker;->Wf:I

    iput p2, p0, Lmiui/widget/NumberPicker;->Wg:I

    goto :goto_52

    .line 1144
    :cond_7a
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 3

    .line 1423
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1424
    return-void

    .line 1426
    :cond_5
    iput-object p1, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    .line 1427
    iget-object p1, p0, Lmiui/widget/NumberPicker;->VS:[Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 1429
    iget-object p1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1a

    .line 1432
    :cond_14
    iget-object p1, p0, Lmiui/widget/NumberPicker;->VJ:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1434
    :goto_1a
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1435
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1436
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 1437
    return-void
.end method

.method public setFormatter(Lmiui/widget/NumberPicker$Formatter;)V
    .registers 3

    .line 1187
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VZ:Lmiui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1188
    return-void

    .line 1190
    :cond_5
    iput-object p1, p0, Lmiui/widget/NumberPicker;->VZ:Lmiui/widget/NumberPicker$Formatter;

    .line 1191
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1192
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1193
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    .line 1151
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    if-nez p1, :cond_12

    :cond_6
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1152
    :cond_12
    iput-object p1, p0, Lmiui/widget/NumberPicker;->WT:Ljava/lang/CharSequence;

    .line 1153
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1155
    :cond_17
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .registers 3

    .line 1444
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    .line 1445
    iput p1, p0, Lmiui/widget/NumberPicker;->WU:F

    .line 1447
    :cond_7
    return-void
.end method

.method public setMaxValue(I)V
    .registers 3

    .line 1386
    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    if-ne v0, p1, :cond_5

    .line 1387
    return-void

    .line 1389
    :cond_5
    if-ltz p1, :cond_30

    .line 1392
    iput p1, p0, Lmiui/widget/NumberPicker;->VV:I

    .line 1393
    iget p1, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v0, p0, Lmiui/widget/NumberPicker;->VW:I

    if-ge p1, v0, :cond_13

    .line 1394
    iget p1, p0, Lmiui/widget/NumberPicker;->VV:I

    iput p1, p0, Lmiui/widget/NumberPicker;->VW:I

    .line 1396
    :cond_13
    iget p1, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[I

    array-length v0, v0

    if-le p1, v0, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 1397
    :goto_20
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1398
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1399
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1400
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 1401
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1402
    return-void

    .line 1390
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .registers 3

    .line 1348
    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    if-ne v0, p1, :cond_5

    .line 1349
    return-void

    .line 1351
    :cond_5
    if-ltz p1, :cond_30

    .line 1354
    iput p1, p0, Lmiui/widget/NumberPicker;->VT:I

    .line 1355
    iget p1, p0, Lmiui/widget/NumberPicker;->VT:I

    iget v0, p0, Lmiui/widget/NumberPicker;->VW:I

    if-le p1, v0, :cond_13

    .line 1356
    iget p1, p0, Lmiui/widget/NumberPicker;->VT:I

    iput p1, p0, Lmiui/widget/NumberPicker;->VW:I

    .line 1358
    :cond_13
    iget p1, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v0, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[I

    array-length v0, v0

    if-le p1, v0, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 1359
    :goto_20
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1360
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1361
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1362
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 1363
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1364
    return-void

    .line 1352
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 3

    .line 1316
    iput-wide p1, p0, Lmiui/widget/NumberPicker;->Wa:J

    .line 1317
    return-void
.end method

.method public setOnScrollListener(Lmiui/widget/NumberPicker$OnScrollListener;)V
    .registers 2

    .line 1172
    iput-object p1, p0, Lmiui/widget/NumberPicker;->VY:Lmiui/widget/NumberPicker$OnScrollListener;

    .line 1173
    return-void
.end method

.method public setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2

    .line 1163
    iput-object p1, p0, Lmiui/widget/NumberPicker;->VX:Lmiui/widget/NumberPicker$OnValueChangeListener;

    .line 1164
    return-void
.end method

.method public setValue(I)V
    .registers 3

    .line 1224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1225
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 4

    .line 1298
    iget v0, p0, Lmiui/widget/NumberPicker;->VV:I

    iget v1, p0, Lmiui/widget/NumberPicker;->VT:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wc:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1299
    :goto_d
    if-eqz p1, :cond_11

    if-eqz v0, :cond_17

    :cond_11
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Ws:Z

    if-eq p1, v0, :cond_17

    .line 1300
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Ws:Z

    .line 1302
    :cond_17
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fr()V

    .line 1303
    return-void
.end method
