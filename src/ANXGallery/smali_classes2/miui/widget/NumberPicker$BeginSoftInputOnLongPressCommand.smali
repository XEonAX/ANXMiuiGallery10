.class Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic WW:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    .line 2205
    iput-object p1, p0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->WW:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2209
    iget-object v0, p0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->WW:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;Z)Z

    .line 2210
    return-void
.end method
