.class Lcom/miui/internal/app/ActionBarImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarImpl;->e(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bD:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .registers 2

    .line 1167
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$6;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1170
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$6;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->c(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1171
    return-void
.end method
