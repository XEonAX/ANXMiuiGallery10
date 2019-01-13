.class Lcom/miui/internal/app/AlertControllerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cH:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 341
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->c(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_22

    .line 343
    :cond_1c
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->c(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 345
    :goto_22
    return-void
.end method
