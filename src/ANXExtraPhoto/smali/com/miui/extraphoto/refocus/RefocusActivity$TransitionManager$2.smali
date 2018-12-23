.class Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onExit(ZLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

.field final synthetic val$exported:Z


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    .line 818
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iput-boolean p2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->val$exported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusView;->setVisibility(I)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iget-boolean v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->val$exported:Z

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->access$4100(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;Z)V

    .line 823
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/compat/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 824
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->access$4002(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;Z)Z

    .line 825
    return-void
.end method
