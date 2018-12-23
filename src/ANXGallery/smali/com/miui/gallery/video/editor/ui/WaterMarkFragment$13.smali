.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 632
    const-string v4, "WaterMarkFragment"

    const-string v5, "---onGlobalLayout start---"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 634
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/ScreenUtils;->getExactScreenHeight(Landroid/app/Activity;)I

    move-result v2

    .line 635
    .local v2, "screenHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 636
    .local v0, "displayHight":I
    sub-int v1, v2, v0

    .line 637
    .local v1, "keyboardHeight":I
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    if-lez v1, :cond_0

    .line 638
    const-string v4, "WaterMarkFragment"

    const-string/jumbo v5, "soft keyboard start to show!"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2202(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 640
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 642
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 643
    const-string v4, "WaterMarkFragment"

    const-string/jumbo v5, "soft keyboard start to dismiss!"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2202(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 645
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 647
    :cond_1
    return-void
.end method
