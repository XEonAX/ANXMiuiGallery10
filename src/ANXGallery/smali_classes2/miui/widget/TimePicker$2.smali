.class Lmiui/widget/TimePicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaF:Lmiui/widget/TimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/TimePicker;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lmiui/widget/TimePicker$2;->aaF:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .registers 5

    .line 111
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaF:Lmiui/widget/TimePicker;

    invoke-virtual {p1}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result p1

    if-nez p1, :cond_26

    .line 112
    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_10

    if-eq p3, p1, :cond_14

    :cond_10
    if-ne p2, p1, :cond_26

    if-ne p3, v0, :cond_26

    .line 114
    :cond_14
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaF:Lmiui/widget/TimePicker;

    iget-object p2, p0, Lmiui/widget/TimePicker$2;->aaF:Lmiui/widget/TimePicker;

    invoke-static {p2}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;Z)Z

    .line 115
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaF:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->b(Lmiui/widget/TimePicker;)V

    .line 118
    :cond_26
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaF:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->c(Lmiui/widget/TimePicker;)V

    .line 119
    return-void
.end method
