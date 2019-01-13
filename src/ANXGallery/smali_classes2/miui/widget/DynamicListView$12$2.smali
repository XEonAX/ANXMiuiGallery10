.class Lmiui/widget/DynamicListView$12$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView$12;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sm:Lmiui/widget/DynamicListView$12;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView$12;)V
    .registers 2

    .line 1026
    iput-object p1, p0, Lmiui/widget/DynamicListView$12$2;->Sm:Lmiui/widget/DynamicListView$12;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1029
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1030
    iget-object p1, p0, Lmiui/widget/DynamicListView$12$2;->Sm:Lmiui/widget/DynamicListView$12;

    iget-object p1, p1, Lmiui/widget/DynamicListView$12;->Si:Lmiui/widget/DynamicListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 1031
    return-void
.end method
