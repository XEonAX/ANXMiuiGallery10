.class Lmiui/widget/NavigationLayout$ViewDragCallback;
.super Lcom/miui/internal/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field final synthetic Vd:Lmiui/widget/NavigationLayout;


# direct methods
.method private constructor <init>(Lmiui/widget/NavigationLayout;)V
    .registers 2

    .line 1098
    iput-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V
    .registers 3

    .line 1098
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    .line 1146
    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {p3}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    goto :goto_19

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    neg-int p3, p3

    .line 1147
    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p3

    .line 1149
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    .line 1107
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p1}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public onEdgeDragStarted(II)V
    .registers 4

    .line 1159
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result p1

    if-nez p1, :cond_22

    .line 1160
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p1}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object p1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1161
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    iget-object p2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p2}, Lmiui/widget/NavigationLayout;->g(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1163
    :cond_22
    return-void
.end method

.method public onEdgeTouched(II)V
    .registers 5

    .line 1154
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    iget-object p2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p2}, Lmiui/widget/NavigationLayout;->g(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Lmiui/widget/NavigationLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1155
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .line 1125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 1126
    const/4 p2, 0x0

    iput-boolean p2, p1, Lmiui/widget/NavigationLayout$LayoutParams;->Ve:Z

    .line 1127
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    .line 1167
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1168
    if-nez p1, :cond_25

    .line 1169
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1170
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    goto :goto_25

    .line 1172
    :cond_1c
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    .line 1175
    :cond_25
    :goto_25
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerDragStateChanged(I)V

    .line 1177
    :cond_2e
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 1112
    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_31

    .line 1113
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p1}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 1115
    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result p3

    if-eqz p3, :cond_22

    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {p3}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result p3

    sub-int/2addr p3, p2

    goto :goto_24

    :cond_22
    add-int p3, p2, p1

    .line 1117
    :goto_24
    int-to-float p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 1118
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p1, p2}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;F)V

    .line 1119
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 1121
    :cond_31
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    .line 1131
    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->f(Lmiui/widget/NavigationLayout;)F

    move-result p3

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1134
    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {v1}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1c

    .line 1135
    :cond_1b
    move v1, v2

    :goto_1c
    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v3}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    goto :goto_2c

    :cond_2b
    neg-int v0, v0

    .line 1136
    :goto_2c
    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v3}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3d

    cmpg-float v3, p2, v5

    if-gez v3, :cond_3c

    .line 1138
    :goto_3a
    move v2, v4

    goto :goto_42

    .line 1136
    :cond_3c
    goto :goto_42

    :cond_3d
    cmpl-float v3, p2, v5

    if-lez v3, :cond_3c

    goto :goto_3a

    .line 1138
    :goto_42
    if-nez v2, :cond_4e

    cmpl-float p2, p2, v5

    if-nez p2, :cond_4f

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, p3, p2

    if-lez p2, :cond_4f

    .line 1140
    :cond_4e
    move v0, v1

    :cond_4f
    iget-object p2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p2}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1141
    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 1142
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    .line 1102
    iget-object p2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {p2}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_12

    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
