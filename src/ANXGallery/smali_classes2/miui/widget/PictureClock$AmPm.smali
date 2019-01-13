.class Lmiui/widget/PictureClock$AmPm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private XC:Landroid/widget/TextView;

.field private XD:Ljava/lang/String;

.field private XE:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget v0, Lcom/miui/internal/R$id;->am_pm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XC:Landroid/widget/TextView;

    .line 142
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object p1

    .line 143
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XD:Ljava/lang/String;

    .line 144
    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XE:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method A(Z)V
    .registers 3

    .line 148
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XC:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 149
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XC:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    :goto_c
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_f
    return-void
.end method

.method B(Z)V
    .registers 3

    .line 154
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XC:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 155
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XC:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XD:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XE:Ljava/lang/String;

    :goto_d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_10
    return-void
.end method
