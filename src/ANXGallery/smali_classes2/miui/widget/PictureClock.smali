.class public Lmiui/widget/PictureClock;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PictureClock$AmPm;
    }
.end annotation


# instance fields
.field private final Xv:Landroid/content/BroadcastReceiver;

.field private Xw:Lmiui/widget/ImageTextView;

.field private Xx:Lmiui/widget/PictureClock$AmPm;

.field private Xy:Z

.field private Xz:Z

.field private final mHandler:Landroid/os/Handler;

.field private wN:Lmiui/date/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PictureClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance p1, Lmiui/widget/PictureClock$1;

    invoke-direct {p1, p0}, Lmiui/widget/PictureClock$1;-><init>(Lmiui/widget/PictureClock;)V

    iput-object p1, p0, Lmiui/widget/PictureClock;->Xv:Landroid/content/BroadcastReceiver;

    .line 59
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/PictureClock;->Xy:Z

    .line 69
    return-void
.end method

.method static synthetic a(Lmiui/widget/PictureClock;Lmiui/date/Calendar;)Lmiui/date/Calendar;
    .registers 2

    .line 31
    iput-object p1, p0, Lmiui/widget/PictureClock;->wN:Lmiui/date/Calendar;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/PictureClock;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lmiui/widget/PictureClock;->Xy:Z

    return p0
.end method

.method static synthetic b(Lmiui/widget/PictureClock;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lmiui/widget/PictureClock;->fx()V

    return-void
.end method

.method static synthetic c(Lmiui/widget/PictureClock;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private fx()V
    .registers 5

    .line 118
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Xy:Z

    if-eqz v0, :cond_d

    .line 119
    iget-object v0, p0, Lmiui/widget/PictureClock;->wN:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 122
    :cond_d
    iget-object v0, p0, Lmiui/widget/PictureClock;->Xw:Lmiui/widget/ImageTextView;

    iget-object v1, p0, Lmiui/widget/PictureClock;->wN:Lmiui/date/Calendar;

    .line 123
    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x4c

    .line 122
    invoke-static {v1, v2, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lmiui/widget/PictureClock;->Xx:Lmiui/widget/PictureClock$AmPm;

    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiui/widget/PictureClock$AmPm;->A(Z)V

    .line 126
    iget-object v0, p0, Lmiui/widget/PictureClock;->Xx:Lmiui/widget/PictureClock$AmPm;

    iget-object v1, p0, Lmiui/widget/PictureClock;->wN:Lmiui/date/Calendar;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    invoke-virtual {v0, v2}, Lmiui/widget/PictureClock$AmPm;->B(Z)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 4

    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 83
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Xz:Z

    if-eqz v0, :cond_8

    .line 84
    return-void

    .line 86
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->Xz:Z

    .line 88
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Xy:Z

    if-eqz v0, :cond_31

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/PictureClock;->Xv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    :cond_31
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/PictureClock;->wN:Lmiui/date/Calendar;

    .line 100
    invoke-direct {p0}, Lmiui/widget/PictureClock;->fx()V

    .line 101
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 107
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Xz:Z

    if-nez v0, :cond_8

    .line 108
    return-void

    .line 110
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->Xz:Z

    .line 112
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Xy:Z

    if-eqz v0, :cond_18

    .line 113
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock;->Xv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    :cond_18
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    sget v0, Lcom/miui/internal/R$id;->time_display:I

    invoke-virtual {p0, v0}, Lmiui/widget/PictureClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ImageTextView;

    iput-object v0, p0, Lmiui/widget/PictureClock;->Xw:Lmiui/widget/ImageTextView;

    .line 76
    new-instance v0, Lmiui/widget/PictureClock$AmPm;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->Xx:Lmiui/widget/PictureClock$AmPm;

    .line 77
    return-void
.end method

.method z(Z)V
    .registers 2

    .line 130
    iput-boolean p1, p0, Lmiui/widget/PictureClock;->Xy:Z

    .line 131
    return-void
.end method
