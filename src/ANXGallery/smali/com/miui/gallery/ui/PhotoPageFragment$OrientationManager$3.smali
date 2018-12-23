.class Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->showClickAnim(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

.field final synthetic val$listener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2530
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4300(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4302(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2556
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4300(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2557
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2537
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2533
    return-void
.end method
