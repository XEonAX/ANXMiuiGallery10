.class Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;
.super Ljava/lang/Object;
.source "PosterLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/PosterLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/PosterLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/PosterLayout;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/PosterLayout$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$700(Lcom/miui/gallery/collage/widget/PosterLayout;F)V

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->invalidate()V

    .line 184
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 166
    .local v0, "progress":F
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v1, v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$700(Lcom/miui/gallery/collage/widget/PosterLayout;F)V

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->invalidate()V

    .line 168
    return-void
.end method
