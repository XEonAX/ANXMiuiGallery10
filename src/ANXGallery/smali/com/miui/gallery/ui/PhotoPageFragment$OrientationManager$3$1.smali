.class Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 2545
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2546
    .local v9, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2547
    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2548
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2549
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2550
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4400(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2551
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2552
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4400(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2553
    return-void
.end method
