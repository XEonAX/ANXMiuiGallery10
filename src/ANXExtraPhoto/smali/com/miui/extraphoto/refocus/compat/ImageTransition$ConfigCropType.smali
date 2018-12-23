.class Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;
.super Ljava/lang/Object;
.source "ImageTransition.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/compat/ImageTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigCropType"
.end annotation


# instance fields
.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/refocus/compat/ImageTransition$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/refocus/compat/ImageTransition$1;

    .line 133
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 153
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 154
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    .local v1, "view":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 156
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 146
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 147
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 148
    .local v1, "view":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 138
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 139
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 140
    .local v1, "view":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 141
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    return-void
.end method
