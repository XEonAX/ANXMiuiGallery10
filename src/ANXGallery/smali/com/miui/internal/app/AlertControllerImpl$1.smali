.class Lcom/miui/internal/app/AlertControllerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 163
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 165
    nop

    .line 166
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 167
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->b(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_53

    .line 168
    :cond_1c
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->c(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_37

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->d(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 169
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->d(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_53

    .line 170
    :cond_37
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->e(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_52

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->f(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 171
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->f(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_53

    .line 173
    :cond_52
    const/4 p1, 0x0

    :goto_53
    if-eqz p1, :cond_58

    .line 174
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :cond_58
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->h(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->cH:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->g(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method
