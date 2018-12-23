.class Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$1;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->configureEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    .line 785
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$1;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 799
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 793
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$1;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->access$3900(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;)V

    .line 794
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$1;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->access$4002(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;Z)Z

    .line 795
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 803
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 807
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 789
    return-void
.end method
