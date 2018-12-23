.class Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$3;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->configureExitTransition(Z)V
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

    .line 845
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$3;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 861
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 856
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 866
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 871
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 848
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$3;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$4200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lmiui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$3;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$4200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$3;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$4200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 851
    :cond_0
    return-void
.end method
