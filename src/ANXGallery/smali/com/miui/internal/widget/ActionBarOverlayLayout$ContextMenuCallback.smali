.class Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private rD:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field final synthetic rz:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .registers 2

    .line 805
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rz:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .registers 3

    .line 805
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method public f(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 809
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 810
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 812
    :cond_12
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rz:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 820
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_9

    .line 821
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->f(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 824
    :cond_9
    if-eqz p2, :cond_2a

    .line 825
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 826
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 828
    :cond_19
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rz:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->c(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    .line 830
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rD:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz p1, :cond_2a

    .line 831
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rD:Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 832
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rD:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 835
    :cond_2a
    return-void
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 850
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 851
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 853
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 859
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 839
    if-nez p1, :cond_4

    .line 840
    const/4 p1, 0x0

    return p1

    .line 842
    :cond_4
    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 843
    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rD:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 844
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->rD:Lcom/miui/internal/view/menu/MenuDialogHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 845
    const/4 p1, 0x1

    return p1
.end method
