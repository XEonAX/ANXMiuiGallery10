.class Lmiui/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wQ:Lmiui/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DatePickerDialog;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lmiui/app/DatePickerDialog$1;->wQ:Lmiui/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lmiui/widget/DatePicker;IIIZ)V
    .registers 6

    .line 52
    iget-object p1, p0, Lmiui/app/DatePickerDialog$1;->wQ:Lmiui/app/DatePickerDialog;

    invoke-static {p1}, Lmiui/app/DatePickerDialog;->a(Lmiui/app/DatePickerDialog;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 53
    iget-object p1, p0, Lmiui/app/DatePickerDialog$1;->wQ:Lmiui/app/DatePickerDialog;

    invoke-static {p1, p2, p3, p4}, Lmiui/app/DatePickerDialog;->a(Lmiui/app/DatePickerDialog;III)V

    .line 55
    :cond_d
    return-void
.end method
