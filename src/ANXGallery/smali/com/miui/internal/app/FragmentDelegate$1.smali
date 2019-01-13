.class Lcom/miui/internal/app/FragmentDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic da:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 56
    nop

    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 58
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 61
    :cond_11
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_31

    .line 62
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/FragmentDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 63
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/internal/app/FragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    .line 66
    :cond_31
    if-eqz v1, :cond_3f

    .line 67
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/internal/app/FragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 70
    :cond_3f
    if-eqz v1, :cond_4d

    .line 71
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_57

    .line 73
    :cond_4d
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 74
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 77
    :goto_57
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->da:Lcom/miui/internal/app/FragmentDelegate;

    const/16 v1, -0x12

    invoke-static {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->a(Lcom/miui/internal/app/FragmentDelegate;I)B

    .line 78
    return-void
.end method
