.class Lmiui/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qz:Lmiui/widget/DatePicker;


# direct methods
.method constructor <init>(Lmiui/widget/DatePicker;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .registers 9

    .line 158
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v1}, Lmiui/widget/DatePicker;->a(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 160
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->c(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x9

    if-ne p1, v0, :cond_36

    .line 161
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v4}, Lmiui/widget/DatePicker;->d(Lmiui/widget/DatePicker;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/16 v4, 0xa

    goto :goto_31

    :cond_30
    move v4, v3

    :goto_31
    sub-int/2addr p3, p2

    invoke-virtual {v0, v4, p3}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_70

    .line 162
    :cond_36
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->e(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_54

    .line 163
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v4}, Lmiui/widget/DatePicker;->d(Lmiui/widget/DatePicker;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v4, 0x6

    goto :goto_4f

    :cond_4e
    move v4, v2

    :goto_4f
    sub-int/2addr p3, p2

    invoke-virtual {v0, v4, p3}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_70

    .line 164
    :cond_54
    iget-object p2, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {p2}, Lmiui/widget/DatePicker;->f(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_ab

    .line 165
    iget-object p2, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {p2}, Lmiui/widget/DatePicker;->b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object p2

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->d(Lmiui/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x2

    goto :goto_6d

    :cond_6c
    move v0, v1

    :goto_6d
    invoke-virtual {p2, v0, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 170
    :goto_70
    iget-object p2, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    iget-object p3, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {p3}, Lmiui/widget/DatePicker;->b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object p3

    invoke-virtual {p3, v1}, Lmiui/date/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {v1}, Lmiui/widget/DatePicker;->b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, p3, v0, v1}, Lmiui/widget/DatePicker;->a(Lmiui/widget/DatePicker;III)V

    .line 171
    iget-object p2, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {p2}, Lmiui/widget/DatePicker;->f(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_a0

    .line 172
    iget-object p1, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {p1}, Lmiui/widget/DatePicker;->g(Lmiui/widget/DatePicker;)V

    .line 174
    :cond_a0
    iget-object p1, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {p1}, Lmiui/widget/DatePicker;->h(Lmiui/widget/DatePicker;)V

    .line 175
    iget-object p1, p0, Lmiui/widget/DatePicker$1;->Qz:Lmiui/widget/DatePicker;

    invoke-static {p1}, Lmiui/widget/DatePicker;->i(Lmiui/widget/DatePicker;)V

    .line 176
    return-void

    .line 167
    :cond_ab
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
