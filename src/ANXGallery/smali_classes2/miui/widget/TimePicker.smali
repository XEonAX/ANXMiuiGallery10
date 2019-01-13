.class public Lmiui/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TimePicker$SavedState;,
        Lmiui/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final Qf:Z = true

.field private static final aaw:I = 0xc

.field private static final aax:Lmiui/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private Qk:Ljava/util/Locale;

.field private Qx:Z

.field private final aaA:Lmiui/widget/NumberPicker;

.field private final aaB:Lmiui/widget/NumberPicker;

.field private final aaC:Landroid/widget/Button;

.field private aaD:Lmiui/widget/TimePicker$OnTimeChangedListener;

.field private aaE:Lmiui/date/Calendar;

.field private aay:Z

.field private final aaz:Lmiui/widget/NumberPicker;

.field private xs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lmiui/widget/TimePicker$1;

    invoke-direct {v0}, Lmiui/widget/TimePicker$1;-><init>()V

    sput-object v0, Lmiui/widget/TimePicker;->aax:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 p2, 0x1

    iput-boolean p2, p0, Lmiui/widget/TimePicker;->Qx:Z

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lmiui/widget/TimePicker;->b(Ljava/util/Locale;)V

    .line 101
    sget p3, Lcom/miui/internal/R$layout;->time_picker:I

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 105
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    sget p1, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/NumberPicker;

    iput-object p1, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    .line 109
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    new-instance p3, Lmiui/widget/TimePicker$2;

    invoke-direct {p3, p0}, Lmiui/widget/TimePicker$2;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p1, p3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 121
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    sget p3, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, p3}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 122
    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 125
    sget p1, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/NumberPicker;

    iput-object p1, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    .line 126
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 127
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 128
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 129
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->VF:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 130
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/TimePicker$3;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$3;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 135
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 136
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 139
    sget p1, Lcom/miui/internal/R$id;->amPm:I

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 140
    instance-of p3, p1, Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz p3, :cond_95

    .line 141
    iput-object v1, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    .line 142
    move-object p3, p1

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lmiui/widget/TimePicker;->aaC:Landroid/widget/Button;

    .line 143
    iget-object p3, p0, Lmiui/widget/TimePicker;->aaC:Landroid/widget/Button;

    new-instance v1, Lmiui/widget/TimePicker$4;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$4;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_cb

    .line 152
    :cond_95
    iput-object v1, p0, Lmiui/widget/TimePicker;->aaC:Landroid/widget/Button;

    .line 153
    move-object p3, p1

    check-cast p3, Lmiui/widget/NumberPicker;

    iput-object p3, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    .line 154
    iget-object p3, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    invoke-virtual {p3, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 155
    iget-object p3, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    invoke-virtual {p3, p2}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 156
    iget-object p3, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 157
    iget-object p3, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/TimePicker$5;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$5;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p3, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 165
    iget-object p3, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p3, v1}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 166
    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 169
    :goto_cb
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fQ()Z

    move-result p3

    if-eqz p3, :cond_df

    .line 171
    sget p3, Lcom/miui/internal/R$id;->timePickerLayout:I

    invoke-virtual {p0, p3}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 172
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 177
    :cond_df
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fR()V

    .line 178
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fS()V

    .line 180
    sget-object p1, Lmiui/widget/TimePicker;->aax:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    .line 183
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaE:Lmiui/date/Calendar;

    const/16 p3, 0x12

    invoke-virtual {p1, p3}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 184
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaE:Lmiui/date/Calendar;

    const/16 p3, 0x14

    invoke-virtual {p1, p3}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 186
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_111

    .line 187
    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setEnabled(Z)V

    .line 191
    :cond_111
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_11a

    .line 192
    invoke-virtual {p0, p2}, Lmiui/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 194
    :cond_11a
    return-void
.end method

.method static synthetic a(Lmiui/widget/TimePicker;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lmiui/widget/TimePicker;->aay:Z

    return p0
.end method

.method static synthetic a(Lmiui/widget/TimePicker;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->aay:Z

    return p1
.end method

.method private b(Ljava/util/Locale;)V
    .registers 3

    .line 237
    iget-object v0, p0, Lmiui/widget/TimePicker;->Qk:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    return-void

    .line 240
    :cond_9
    iput-object p1, p0, Lmiui/widget/TimePicker;->Qk:Ljava/util/Locale;

    .line 241
    iget-object p1, p0, Lmiui/widget/TimePicker;->aaE:Lmiui/date/Calendar;

    if-nez p1, :cond_16

    .line 242
    new-instance p1, Lmiui/date/Calendar;

    invoke-direct {p1}, Lmiui/date/Calendar;-><init>()V

    iput-object p1, p0, Lmiui/widget/TimePicker;->aaE:Lmiui/date/Calendar;

    .line 244
    :cond_16
    return-void
.end method

.method static synthetic b(Lmiui/widget/TimePicker;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fS()V

    return-void
.end method

.method private c(Landroid/view/View;II)V
    .registers 4

    .line 480
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 481
    if-eqz p1, :cond_11

    .line 482
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 484
    :cond_11
    return-void
.end method

.method static synthetic c(Lmiui/widget/TimePicker;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fT()V

    return-void
.end method

.method private fQ()Z
    .registers 4

    .line 197
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 198
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 199
    nop

    .line 201
    xor-int/lit8 v0, v0, 0x1

    :cond_22
    return v0
.end method

.method private fR()V
    .registers 3

    .line 441
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 442
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 443
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 444
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->VF:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    goto :goto_2e

    .line 446
    :cond_1b
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 447
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 448
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 450
    :goto_2e
    return-void
.end method

.method private fS()V
    .registers 5

    .line 453
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 454
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_12

    .line 455
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_40

    .line 457
    :cond_12
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaC:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_40

    .line 460
    :cond_18
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->aay:Z

    .line 461
    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 462
    iget-object v1, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 463
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_40

    .line 465
    :cond_2c
    iget-object v1, p0, Lmiui/widget/TimePicker;->aaC:Landroid/widget/Button;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 469
    :goto_40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 470
    return-void
.end method

.method private fT()V
    .registers 4

    .line 473
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 474
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaD:Lmiui/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1d

    .line 475
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaD:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lmiui/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lmiui/widget/TimePicker;II)V

    .line 477
    :cond_1d
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 408
    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .registers 2

    .line 403
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    .line 321
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 324
    :cond_11
    iget-boolean v1, p0, Lmiui/widget/TimePicker;->aay:Z

    if-eqz v1, :cond_1c

    .line 325
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1c
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    .line 387
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .line 380
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->xs:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->Qx:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 227
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lmiui/widget/TimePicker;->b(Ljava/util/Locale;)V

    .line 229
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 431
    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 436
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 437
    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    .line 414
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 416
    nop

    .line 417
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->xs:Z

    if-eqz v0, :cond_b

    .line 418
    const/16 v0, 0x2c

    goto :goto_d

    .line 420
    :cond_b
    const/16 v0, 0x1c

    .line 422
    :goto_d
    iget-object v1, p0, Lmiui/widget/TimePicker;->aaE:Lmiui/date/Calendar;

    const/16 v2, 0x12

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 423
    iget-object v1, p0, Lmiui/widget/TimePicker;->aaE:Lmiui/date/Calendar;

    const/16 v2, 0x14

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 424
    iget-object v1, p0, Lmiui/widget/TimePicker;->aaE:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 302
    check-cast p1, Lmiui/widget/TimePicker$SavedState;

    .line 303
    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 304
    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 305
    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 306
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 296
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 297
    new-instance v1, Lmiui/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILmiui/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 4

    .line 336
    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4b

    .line 339
    :cond_d
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 341
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2e

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->aay:Z

    .line 343
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_3b

    .line 344
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3b

    .line 347
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->aay:Z

    .line 348
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3b

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 352
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fS()V

    .line 354
    :cond_3e
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 355
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fT()V

    .line 356
    return-void

    .line 337
    :cond_4b
    :goto_4b
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 3

    .line 394
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 395
    return-void

    .line 397
    :cond_b
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 398
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fT()V

    .line 399
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 206
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->Qx:Z

    if-ne v0, p1, :cond_5

    .line 207
    return-void

    .line 209
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaA:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaz:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_1c

    .line 213
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaB:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_21

    .line 215
    :cond_1c
    iget-object v0, p0, Lmiui/widget/TimePicker;->aaC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    :goto_21
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->Qx:Z

    .line 218
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 4

    .line 364
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->xs:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_9

    .line 365
    return-void

    .line 367
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/TimePicker;->xs:Z

    .line 369
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 370
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fR()V

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 373
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fS()V

    .line 374
    return-void
.end method

.method public setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lmiui/widget/TimePicker;->aaD:Lmiui/widget/TimePicker$OnTimeChangedListener;

    .line 315
    return-void
.end method
