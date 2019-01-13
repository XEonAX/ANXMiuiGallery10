.class Lmiui/widget/NavigationLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vd:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 170
    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ViewDragHelper;->getEdgeSize()I

    move-result v1

    .line 174
    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v2}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 175
    if-eqz v0, :cond_22

    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {v2}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v3

    nop

    :cond_22
    sub-int/2addr v3, v1

    goto :goto_2d

    .line 177
    :cond_24
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v3, v2

    nop

    :cond_2c
    add-int/2addr v3, v1

    .line 180
    :goto_2d
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v3, :cond_5d

    iget-object v1, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {v1}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v1

    if-nez v1, :cond_5d

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 182
    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v2}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, v1, Lmiui/widget/NavigationLayout$LayoutParams;->Ve:Z

    .line 184
    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 186
    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->Vd:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->d(Lmiui/widget/NavigationLayout;)V

    .line 188
    :cond_5d
    return-void
.end method
