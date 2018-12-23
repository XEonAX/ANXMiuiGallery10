.class Lcom/miui/extraphoto/refocus/LoadingDialogView$1;
.super Ljava/lang/Object;
.source "LoadingDialogView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/LoadingDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/LoadingDialogView;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/LoadingDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/LoadingDialogView;

    .line 63
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;->this$0:Lcom/miui/extraphoto/refocus/LoadingDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 66
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;->this$0:Lcom/miui/extraphoto/refocus/LoadingDialogView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/LoadingDialogView;->access$002(Lcom/miui/extraphoto/refocus/LoadingDialogView;I)I

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;->this$0:Lcom/miui/extraphoto/refocus/LoadingDialogView;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/LoadingDialogView;->invalidate()V

    .line 68
    return-void
.end method
