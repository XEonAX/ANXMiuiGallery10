.class Lmiui/widget/SlidingButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SlidingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aau:Lmiui/widget/SlidingButton;

.field private qB:Z


# direct methods
.method constructor <init>(Lmiui/widget/SlidingButton;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 102
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/SlidingButton$1;->qB:Z

    .line 103
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 107
    iget-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/SlidingButton;->a(Lmiui/widget/SlidingButton;Z)Z

    .line 108
    iget-boolean p1, p0, Lmiui/widget/SlidingButton$1;->qB:Z

    if-eqz p1, :cond_b

    .line 109
    return-void

    .line 111
    :cond_b
    iget-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lmiui/widget/SlidingButton;->a(Lmiui/widget/SlidingButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 112
    iget-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    invoke-static {p1}, Lmiui/widget/SlidingButton;->a(Lmiui/widget/SlidingButton;)I

    move-result p1

    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    invoke-static {v1}, Lmiui/widget/SlidingButton;->b(Lmiui/widget/SlidingButton;)I

    move-result v1

    if-lt p1, v1, :cond_21

    const/4 v0, 0x1

    nop

    .line 113
    :cond_21
    iget-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    invoke-virtual {p1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result p1

    if-eq v0, p1, :cond_33

    .line 114
    iget-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    invoke-virtual {p1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 115
    iget-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    invoke-static {p1}, Lmiui/widget/SlidingButton;->c(Lmiui/widget/SlidingButton;)V

    .line 117
    :cond_33
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 96
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/SlidingButton$1;->qB:Z

    .line 97
    iget-object p1, p0, Lmiui/widget/SlidingButton$1;->aau:Lmiui/widget/SlidingButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/widget/SlidingButton;->a(Lmiui/widget/SlidingButton;Z)Z

    .line 98
    return-void
.end method
