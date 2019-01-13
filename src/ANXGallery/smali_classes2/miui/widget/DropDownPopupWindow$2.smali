.class Lmiui/widget/DropDownPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rl:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private eE()V
    .registers 2

    .line 61
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->f(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 62
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->g(Lmiui/widget/DropDownPopupWindow;)V

    .line 64
    :cond_d
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->eE()V

    .line 81
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->eE()V

    .line 76
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 85
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 68
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->f(Lmiui/widget/DropDownPopupWindow;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 69
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object p1

    invoke-interface {p1}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 71
    :cond_19
    return-void
.end method
