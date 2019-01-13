.class Lmiui/widget/DynamicListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Si:Lmiui/widget/DynamicListView;

.field private qB:Z


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 176
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 177
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 178
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/DynamicListView$2;->qB:Z

    .line 179
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 157
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    iget-object v0, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object p1

    .line 158
    if-eqz p1, :cond_12

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_12
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;J)J

    .line 162
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;J)J

    .line 163
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;J)J

    .line 164
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 165
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 166
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-virtual {p1}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 167
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 169
    iget-boolean p1, p0, Lmiui/widget/DynamicListView$2;->qB:Z

    if-nez p1, :cond_4e

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-static {p1}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 170
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    invoke-static {p1}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object p1

    invoke-interface {p1}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragEnd()V

    .line 172
    :cond_4e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 151
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Si:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 152
    iput-boolean v0, p0, Lmiui/widget/DynamicListView$2;->qB:Z

    .line 153
    return-void
.end method
