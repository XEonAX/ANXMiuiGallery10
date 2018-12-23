.class Lcom/miui/extraphoto/common/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$len:I

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;ILandroid/content/Context;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$msg:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$len:I

    iput-object p3, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 39
    invoke-static {}, Lcom/miui/extraphoto/common/ToastUtils;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/miui/extraphoto/common/ToastUtils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcom/miui/extraphoto/common/ToastUtils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {}, Lcom/miui/extraphoto/common/ToastUtils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    iget v2, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$len:I

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$msg:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/miui/extraphoto/common/ToastUtils$1;->val$len:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/extraphoto/common/ToastUtils;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 47
    :goto_0
    invoke-static {}, Lcom/miui/extraphoto/common/ToastUtils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
