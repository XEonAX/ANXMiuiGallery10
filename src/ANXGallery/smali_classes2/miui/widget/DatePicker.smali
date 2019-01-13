.class public Lmiui/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DatePicker$SavedState;,
        Lmiui/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final Qb:I = 0x76c

.field private static final Qc:I = 0x834

.field private static final Qd:Z = false

.field private static final Qe:Z = true

.field private static final Qf:Z = true

.field private static final Qn:[Ljava/lang/String;

.field private static final Qo:[Ljava/lang/String;

.field private static final Qp:[Ljava/lang/String;

.field private static final Qq:Ljava/lang/String;


# instance fields
.field private final Qg:Landroid/widget/LinearLayout;

.field private final Qh:Lmiui/widget/NumberPicker;

.field private final Qi:Lmiui/widget/NumberPicker;

.field private final Qj:Lmiui/widget/NumberPicker;

.field private Qk:Ljava/util/Locale;

.field private Ql:[Ljava/lang/String;

.field private Qm:[C

.field private final Qr:Ljava/text/DateFormat;

.field private Qs:I

.field private Qt:Lmiui/date/Calendar;

.field private Qu:Lmiui/date/Calendar;

.field private Qv:Lmiui/date/Calendar;

.field private Qw:Lmiui/date/Calendar;

.field private Qx:Z

.field private Qy:Z

.field private wP:Lmiui/widget/DatePicker$OnDateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 44
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    .line 74
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->Qn:[Ljava/lang/String;

    .line 75
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    :goto_25
    sget-object v2, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_48

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/internal/R$string;->chinese_month:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 82
    :cond_48
    sget-object v0, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    const/4 v1, 0x1

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/widget/DatePicker;->Qp:[Ljava/lang/String;

    .line 83
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    sput-object v0, Lmiui/widget/DatePicker;->Qq:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 122
    sget v0, Lcom/miui/internal/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lmiui/widget/DatePicker;->Qr:Ljava/text/DateFormat;

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, v0, Lmiui/widget/DatePicker;->Qx:Z

    .line 99
    const/4 v3, 0x0

    iput-boolean v3, v0, Lmiui/widget/DatePicker;->Qy:Z

    .line 128
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    .line 129
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    .line 130
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    .line 131
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    .line 133
    sget-object v4, Lcom/miui/internal/R$styleable;->DatePicker:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 135
    sget v5, Lcom/miui/internal/R$styleable;->DatePicker_spinnersShown:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 137
    sget v6, Lcom/miui/internal/R$styleable;->DatePicker_startYear:I

    const/16 v7, 0x76c

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 139
    sget v6, Lcom/miui/internal/R$styleable;->DatePicker_endYear:I

    const/16 v7, 0x834

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 140
    sget v7, Lcom/miui/internal/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    sget v8, Lcom/miui/internal/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    sget v8, Lcom/miui/internal/R$layout;->date_picker:I

    .line 143
    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_lunarCalendar:I

    invoke-virtual {v4, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lmiui/widget/DatePicker;->Qy:Z

    .line 144
    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_showYear:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 145
    sget v11, Lcom/miui/internal/R$styleable;->DatePicker_showMonth:I

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 146
    sget v12, Lcom/miui/internal/R$styleable;->DatePicker_showDay:I

    invoke-virtual {v4, v12, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 147
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiui/widget/DatePicker;->b(Ljava/util/Locale;)V

    .line 152
    const-string v4, "layout_inflater"

    .line 153
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 154
    invoke-virtual {v1, v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    new-instance v1, Lmiui/widget/DatePicker$1;

    invoke-direct {v1, v0}, Lmiui/widget/DatePicker$1;-><init>(Lmiui/widget/DatePicker;)V

    .line 179
    sget v4, Lcom/miui/internal/R$id;->pickers:I

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lmiui/widget/DatePicker;->Qg:Landroid/widget/LinearLayout;

    .line 182
    sget v4, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    iput-object v4, v0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    .line 183
    iget-object v4, v0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    const-wide/16 v13, 0x64

    invoke-virtual {v4, v13, v14}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 184
    iget-object v4, v0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 185
    const/16 v4, 0x8

    if-nez v12, :cond_bd

    .line 186
    iget-object v8, v0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v4}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 190
    :cond_bd
    sget v8, Lcom/miui/internal/R$id;->month:I

    invoke-virtual {v0, v8}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lmiui/widget/NumberPicker;

    iput-object v8, v0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    .line 191
    iget-object v8, v0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 192
    iget-object v3, v0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    iget v8, v0, Lmiui/widget/DatePicker;->Qs:I

    sub-int/2addr v8, v2

    invoke-virtual {v3, v8}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 193
    iget-object v3, v0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    iget-object v8, v0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 194
    iget-object v3, v0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    const-wide/16 v13, 0xc8

    invoke-virtual {v3, v13, v14}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 195
    iget-object v3, v0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 196
    if-nez v11, :cond_ee

    .line 197
    iget-object v3, v0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 201
    :cond_ee
    sget v3, Lcom/miui/internal/R$id;->year:I

    invoke-virtual {v0, v3}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/NumberPicker;

    iput-object v3, v0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    .line 202
    iget-object v3, v0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    const-wide/16 v11, 0x64

    invoke-virtual {v3, v11, v12}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 203
    iget-object v3, v0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 204
    if-nez v10, :cond_10b

    .line 205
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v4}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 208
    :cond_10b
    invoke-direct/range {p0 .. p0}, Lmiui/widget/DatePicker;->ep()V

    .line 212
    if-nez v5, :cond_114

    .line 213
    invoke-virtual {v0, v2}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    goto :goto_117

    .line 215
    :cond_114
    invoke-virtual {v0, v5}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    .line 219
    :goto_117
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 220
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13c

    .line 221
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    invoke-direct {v0, v7, v1}, Lmiui/widget/DatePicker;->a(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_13a

    .line 222
    iget-object v8, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    move-object v5, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto :goto_148

    .line 227
    :cond_13a
    move-object v5, v15

    goto :goto_148

    .line 225
    :cond_13c
    move-object v5, v15

    iget-object v8, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 227
    :goto_148
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lmiui/widget/DatePicker;->setMinDate(J)V

    .line 230
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    invoke-virtual {v1, v3, v4}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 231
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_175

    .line 232
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    invoke-direct {v0, v5, v1}, Lmiui/widget/DatePicker;->a(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_185

    .line 233
    iget-object v10, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto :goto_185

    .line 236
    :cond_175
    iget-object v10, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 238
    :cond_185
    :goto_185
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lmiui/widget/DatePicker;->setMaxDate(J)V

    .line 241
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 242
    iget-object v1, v0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/16 v5, 0x9

    .line 243
    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    .line 242
    invoke-virtual {v0, v1, v3, v4, v5}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    .line 246
    invoke-direct/range {p0 .. p0}, Lmiui/widget/DatePicker;->er()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1bc

    .line 250
    invoke-virtual {v0, v2}, Lmiui/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 252
    :cond_1bc
    return-void
.end method

.method static synthetic a(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .registers 1

    .line 42
    iget-object p0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    return-object p0
.end method

.method static synthetic a(Lmiui/widget/DatePicker;III)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->h(III)V

    return-void
.end method

.method private a(Lmiui/widget/NumberPicker;II)V
    .registers 4

    .line 718
    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_6

    .line 719
    const/4 p2, 0x5

    goto :goto_7

    .line 721
    :cond_6
    const/4 p2, 0x6

    .line 723
    :goto_7
    sget p3, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, p3}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 724
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 725
    return-void
.end method

.method private a(Ljava/lang/String;Lmiui/date/Calendar;)Z
    .registers 5

    .line 574
    :try_start_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qr:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_d} :catch_f

    .line 575
    const/4 p1, 0x1

    return p1

    .line 576
    :catch_f
    move-exception p2

    .line 577
    sget-object p2, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MM/dd/yyyy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .registers 1

    .line 42
    iget-object p0, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    return-object p0
.end method

.method private b(Ljava/util/Locale;)V
    .registers 3

    .line 440
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qk:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 441
    return-void

    .line 444
    :cond_9
    iput-object p1, p0, Lmiui/widget/DatePicker;->Qk:Ljava/util/Locale;

    .line 446
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiui/widget/DatePicker;->Qs:I

    .line 447
    invoke-direct {p0}, Lmiui/widget/DatePicker;->eq()V

    .line 448
    invoke-direct {p0}, Lmiui/widget/DatePicker;->ep()V

    .line 449
    return-void
.end method

.method static synthetic c(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .registers 1

    .line 42
    iget-object p0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic d(Lmiui/widget/DatePicker;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lmiui/widget/DatePicker;->Qy:Z

    return p0
.end method

.method static synthetic e(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .registers 1

    .line 42
    iget-object p0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method private ep()V
    .registers 3

    .line 255
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    if-nez v0, :cond_9

    goto :goto_1b

    .line 258
    :cond_9
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->VF:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 259
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/NumberPicker$NumberFormatter;

    invoke-direct {v1}, Lmiui/widget/NumberPicker$NumberFormatter;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 260
    return-void

    .line 256
    :cond_1b
    :goto_1b
    return-void
.end method

.method private eq()V
    .registers 6

    .line 452
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 453
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    .line 454
    if-gez v0, :cond_12

    .line 455
    sget-object v0, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    goto :goto_43

    .line 457
    :cond_12
    sget-object v2, Lmiui/widget/DatePicker;->Qp:[Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    .line 458
    sget-object v2, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    iget-object v3, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    sget-object v1, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    sget-object v3, Lmiui/widget/DatePicker;->Qo:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget-object v0, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/widget/DatePicker;->Qq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 463
    :goto_43
    goto :goto_7a

    .line 464
    :cond_44
    const-string v0, "en"

    iget-object v2, p0, Lmiui/widget/DatePicker;->Qk:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 465
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    goto :goto_7a

    .line 467
    :cond_61
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    .line 468
    :goto_67
    iget-object v0, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7a

    .line 469
    iget-object v0, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    sget-object v2, Lmiui/widget/NumberPicker;->VF:Lmiui/widget/NumberPicker$Formatter;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 468
    move v1, v3

    goto :goto_67

    .line 473
    :cond_7a
    :goto_7a
    return-void
.end method

.method private er()V
    .registers 6

    .line 481
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qg:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 483
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qm:[C

    if-nez v0, :cond_12

    .line 484
    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    goto :goto_14

    .line 486
    :cond_12
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qm:[C

    .line 488
    :goto_14
    array-length v1, v0

    .line 489
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_56

    .line 490
    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_46

    const/16 v4, 0x64

    if-eq v3, v4, :cond_39

    const/16 v4, 0x79

    if-ne v3, v4, :cond_33

    .line 500
    iget-object v3, p0, Lmiui/widget/DatePicker;->Qg:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v3, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiui/widget/DatePicker;->a(Lmiui/widget/NumberPicker;II)V

    .line 502
    goto :goto_53

    .line 504
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 492
    :cond_39
    iget-object v3, p0, Lmiui/widget/DatePicker;->Qg:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v3, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiui/widget/DatePicker;->a(Lmiui/widget/NumberPicker;II)V

    .line 494
    goto :goto_53

    .line 496
    :cond_46
    iget-object v3, p0, Lmiui/widget/DatePicker;->Qg:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    iget-object v3, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiui/widget/DatePicker;->a(Lmiui/widget/NumberPicker;II)V

    .line 498
    nop

    .line 489
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 507
    :cond_56
    return-void
.end method

.method private es()V
    .registers 13

    .line 598
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 599
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    goto :goto_42

    .line 603
    :cond_15
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_day:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_month:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_year:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 607
    :goto_42
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 609
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    iget-boolean v3, p0, Lmiui/widget/DatePicker;->Qy:Z

    const/16 v4, 0x9

    const/16 v5, 0xa

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v3, v5}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v3

    goto :goto_64

    .line 610
    :cond_5e
    iget-object v3, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 609
    :goto_64
    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 611
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 612
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 614
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    iget-boolean v6, p0, Lmiui/widget/DatePicker;->Qy:Z

    const/16 v7, 0xb

    if-eqz v6, :cond_8a

    iget-object v6, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v6}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v6

    if-ltz v6, :cond_8a

    const/16 v7, 0xc

    nop

    :cond_8a
    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 615
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 618
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_99

    .line 619
    move v0, v6

    goto :goto_9b

    .line 618
    :cond_99
    nop

    .line 619
    move v0, v2

    :goto_9b
    iget-object v7, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x6

    if-ne v7, v8, :cond_f7

    .line 620
    iget-object v7, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    iget-boolean v8, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v8, :cond_b8

    iget-object v8, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    goto :goto_be

    :cond_b8
    iget-object v8, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    :goto_be
    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 621
    iget-object v7, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 623
    iget-boolean v7, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v7, :cond_cc

    .line 624
    move v7, v10

    goto :goto_ce

    .line 623
    :cond_cc
    nop

    .line 624
    move v7, v9

    :goto_ce
    iget-object v8, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v8, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    iget-object v11, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v11, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_f7

    .line 625
    iget-object v7, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    iget-boolean v8, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v8, :cond_e9

    iget-object v8, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v8, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    goto :goto_ef

    .line 626
    :cond_e9
    iget-object v8, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v8, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    .line 625
    :goto_ef
    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 627
    iget-object v7, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 631
    :cond_f7
    iget-object v7, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v7, v0, :cond_156

    .line 632
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    iget-boolean v7, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v7, :cond_112

    iget-object v7, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v7, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    goto :goto_118

    :cond_112
    iget-object v7, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v7, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    :goto_118
    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 633
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 634
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 636
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v0, :cond_12b

    .line 637
    move v0, v10

    goto :goto_12d

    .line 636
    :cond_12b
    nop

    .line 637
    move v0, v9

    :goto_12d
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v7, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_156

    .line 638
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v1, :cond_148

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    goto :goto_14e

    .line 639
    :cond_148
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    .line 638
    :goto_14e
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 640
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 646
    :cond_156
    iget-object v0, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v7, p0, Lmiui/widget/DatePicker;->Ql:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 648
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 649
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v0, :cond_187

    .line 650
    sget-object v0, Lmiui/widget/DatePicker;->Qn:[Ljava/lang/String;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v1, v2

    sget-object v7, Lmiui/widget/DatePicker;->Qn:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 651
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 655
    :cond_187
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 656
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 657
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 660
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    .line 661
    if-ltz v0, :cond_1bc

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v1

    if-nez v1, :cond_1ba

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-le v1, v0, :cond_1bc

    .line 662
    :cond_1ba
    move v3, v2

    goto :goto_1bd

    .line 661
    :cond_1bc
    nop

    .line 662
    :goto_1bd
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v1, :cond_1ca

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    goto :goto_1d0

    :cond_1ca
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    :goto_1d0
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 663
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v1, :cond_1ea

    if-eqz v3, :cond_1e3

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1f0

    .line 664
    :cond_1e3
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    goto :goto_1f0

    :cond_1ea
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    .line 663
    :goto_1f0
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 665
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v1, :cond_200

    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    goto :goto_206

    .line 666
    :cond_200
    iget-object v1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    .line 665
    :goto_206
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 667
    return-void
.end method

.method private et()V
    .registers 8

    .line 703
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 704
    iget-object v0, p0, Lmiui/widget/DatePicker;->wP:Lmiui/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1c

    .line 705
    iget-object v1, p0, Lmiui/widget/DatePicker;->wP:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getYear()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-boolean v6, p0, Lmiui/widget/DatePicker;->Qy:Z

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lmiui/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lmiui/widget/DatePicker;IIIZ)V

    .line 707
    :cond_1c
    return-void
.end method

.method static synthetic f(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .registers 1

    .line 42
    iget-object p0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic g(Lmiui/widget/DatePicker;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lmiui/widget/DatePicker;->eq()V

    return-void
.end method

.method private g(III)Z
    .registers 6

    .line 583
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1f

    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/4 v0, 0x5

    .line 584
    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    if-ne p1, p3, :cond_1f

    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/16 p3, 0x9

    .line 585
    invoke-virtual {p1, p3}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    if-eq p1, p2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    nop

    .line 583
    :cond_1f
    :goto_1f
    return v1
.end method

.method private h(III)V
    .registers 12

    .line 589
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 590
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 591
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_37

    .line 592
    :cond_22
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 593
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 595
    :cond_37
    :goto_37
    return-void
.end method

.method static synthetic h(Lmiui/widget/DatePicker;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lmiui/widget/DatePicker;->es()V

    return-void
.end method

.method static synthetic i(Lmiui/widget/DatePicker;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lmiui/widget/DatePicker;->et()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 349
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 350
    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 529
    return-void
.end method

.method public getDayOfMonth()I
    .registers 3

    .line 689
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    const/16 v1, 0x9

    :goto_b
    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .line 307
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .line 273
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .registers 3

    .line 680
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_16

    .line 681
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    goto :goto_24

    :cond_16
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    goto :goto_24

    .line 682
    :cond_1d
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 680
    :goto_24
    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    .line 386
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qg:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 3

    .line 673
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V
    .registers 5

    .line 561
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->h(III)V

    .line 562
    invoke-direct {p0}, Lmiui/widget/DatePicker;->es()V

    .line 563
    iput-object p4, p0, Lmiui/widget/DatePicker;->wP:Lmiui/widget/DatePicker$OnDateChangedListener;

    .line 564
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qx:Z

    return v0
.end method

.method public isLunarMode()Z
    .registers 2

    .line 696
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 376
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 377
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lmiui/widget/DatePicker;->b(Ljava/util/Locale;)V

    .line 378
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 365
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 371
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 355
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 357
    nop

    .line 358
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x380

    invoke-static {v0, v1, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 542
    check-cast p1, Lmiui/widget/DatePicker$SavedState;

    .line 543
    invoke-virtual {p1}, Lmiui/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 544
    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->a(Lmiui/widget/DatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->b(Lmiui/widget/DatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->c(Lmiui/widget/DatePicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/DatePicker;->h(III)V

    .line 545
    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->d(Lmiui/widget/DatePicker$SavedState;)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/DatePicker;->Qy:Z

    .line 546
    invoke-direct {p0}, Lmiui/widget/DatePicker;->es()V

    .line 547
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .line 533
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 534
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    .line 535
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    .line 536
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    .line 537
    new-instance v7, Lmiui/widget/DatePicker$SavedState;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->Qy:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V

    return-object v7
.end method

.method public setDateFormatOrder([C)V
    .registers 2

    .line 734
    iput-object p1, p0, Lmiui/widget/DatePicker;->Qm:[C

    .line 735
    invoke-direct {p0}, Lmiui/widget/DatePicker;->er()V

    .line 736
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 332
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qx:Z

    if-ne v0, p1, :cond_5

    .line 333
    return-void

    .line 335
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 339
    iput-boolean p1, p0, Lmiui/widget/DatePicker;->Qx:Z

    .line 340
    return-void
.end method

.method public setLunarMode(Z)V
    .registers 3

    .line 403
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Qy:Z

    if-eq p1, v0, :cond_c

    .line 404
    iput-boolean p1, p0, Lmiui/widget/DatePicker;->Qy:Z

    .line 405
    invoke-direct {p0}, Lmiui/widget/DatePicker;->eq()V

    .line 406
    invoke-direct {p0}, Lmiui/widget/DatePicker;->es()V

    .line 408
    :cond_c
    return-void
.end method

.method public setMaxDate(J)V
    .registers 6

    .line 318
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 319
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    .line 320
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_25

    .line 321
    return-void

    .line 323
    :cond_25
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 324
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 325
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qv:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 327
    :cond_3f
    invoke-direct {p0}, Lmiui/widget/DatePicker;->es()V

    .line 328
    return-void
.end method

.method public setMinDate(J)V
    .registers 6

    .line 284
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 285
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lmiui/widget/DatePicker;->Qt:Lmiui/date/Calendar;

    .line 286
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_25

    .line 287
    return-void

    .line 289
    :cond_25
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 290
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 291
    iget-object p1, p0, Lmiui/widget/DatePicker;->Qw:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->Qu:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 293
    :cond_3f
    invoke-direct {p0}, Lmiui/widget/DatePicker;->es()V

    .line 294
    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 3

    .line 395
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qg:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public showDayPicker(Z)V
    .registers 3

    .line 431
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qh:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 432
    return-void
.end method

.method public showMonthPicker(Z)V
    .registers 3

    .line 423
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qi:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 424
    return-void
.end method

.method public showYearPicker(Z)V
    .registers 3

    .line 415
    iget-object v0, p0, Lmiui/widget/DatePicker;->Qj:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 416
    return-void
.end method

.method public updateDate(III)V
    .registers 5

    .line 517
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->g(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 518
    return-void

    .line 520
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->h(III)V

    .line 521
    invoke-direct {p0}, Lmiui/widget/DatePicker;->es()V

    .line 522
    invoke-direct {p0}, Lmiui/widget/DatePicker;->et()V

    .line 523
    return-void
.end method
