.class Lmiui/widget/DropDownSingleChoiceMenu$1;
.super Lmiui/widget/DropDownPopupWindow$DefaultContainerController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rs:Lmiui/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->Rs:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 82
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->Rs:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->b(Lmiui/widget/DropDownSingleChoiceMenu;)V

    .line 83
    return-void
.end method

.method public onShow()V
    .registers 2

    .line 75
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->Rs:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->Rs:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onShow()V

    .line 78
    :cond_11
    return-void
.end method
