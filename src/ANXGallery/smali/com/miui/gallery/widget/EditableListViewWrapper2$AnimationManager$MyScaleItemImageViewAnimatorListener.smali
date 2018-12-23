.class Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;
.super Ljava/lang/Object;
.source "EditableListViewWrapper2.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleItemImageViewAnimatorListener"
.end annotation


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field public mPrimaryMatrix:Landroid/graphics/Matrix;

.field final synthetic this$1:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;Landroid/widget/ImageView;)V
    .locals 2
    .param p2, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;->this$1:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;->mPrimaryMatrix:Landroid/graphics/Matrix;

    .line 356
    iput-object p2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;->mImage:Landroid/widget/ImageView;

    .line 357
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 362
    .local v0, "scale":F
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;->this$1:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;->mImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->access$1100(Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;Landroid/widget/ImageView;F)V

    .line 363
    return-void
.end method
