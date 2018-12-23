.class Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2588
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2595
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4500(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2596
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0e0312

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 2606
    :goto_0
    return-void

    .line 2598
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2599
    .local v0, "curUIRotation":I
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4600(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2601
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4702(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;Z)Z

    goto :goto_0

    .line 2603
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0e0313

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2610
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2591
    return-void
.end method
