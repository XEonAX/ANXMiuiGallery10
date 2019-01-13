.class Lmiui/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WW:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    .line 686
    iput-object p1, p0, Lmiui/widget/NumberPicker$1;->WW:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .line 688
    if-eqz p2, :cond_c

    .line 689
    iget-object p1, p0, Lmiui/widget/NumberPicker$1;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1b

    .line 691
    :cond_c
    iget-object p2, p0, Lmiui/widget/NumberPicker$1;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 692
    iget-object p2, p0, Lmiui/widget/NumberPicker$1;->WW:Lmiui/widget/NumberPicker;

    invoke-static {p2, p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Landroid/view/View;)V

    .line 694
    :goto_1b
    return-void
.end method
