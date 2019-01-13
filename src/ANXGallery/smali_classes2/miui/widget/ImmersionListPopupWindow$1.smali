.class Lmiui/widget/ImmersionListPopupWindow$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ImmersionListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TI:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$1;->TI:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .line 65
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->TI:Lmiui/widget/ImmersionListPopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->a(Lmiui/widget/ImmersionListPopupWindow;Z)Z

    .line 66
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->TI:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ImmersionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 67
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->TI:Lmiui/widget/ImmersionListPopupWindow;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$1;->TI:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ImmersionListPopupWindow;->a(Lmiui/widget/ImmersionListPopupWindow;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$1;->TI:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v2}, Lmiui/widget/ImmersionListPopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiui/widget/ImmersionListPopupWindow;->update(II)V

    .line 68
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->TI:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->b(Lmiui/widget/ImmersionListPopupWindow;)V

    .line 70
    :cond_24
    return-void
.end method
