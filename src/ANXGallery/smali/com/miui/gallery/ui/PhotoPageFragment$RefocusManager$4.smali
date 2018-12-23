.class Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->getShowGuidanceRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3373
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-boolean v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$6200(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V

    .line 3379
    :cond_0
    return-void
.end method
