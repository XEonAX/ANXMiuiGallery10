.class Lmiui/widget/NumberPicker$SetSelectionCommand;
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
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field final synthetic WW:Lmiui/widget/NumberPicker;

.field private Xk:I

.field private Xl:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    .line 2155
    iput-object p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->WW:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I
    .registers 2

    .line 2155
    iput p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xk:I

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I
    .registers 2

    .line 2155
    iput p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xl:I

    return p1
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2161
    iget v0, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xl:I

    iget-object v1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2162
    iget-object v0, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xk:I

    iget v2, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xl:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2164
    :cond_1b
    return-void
.end method
