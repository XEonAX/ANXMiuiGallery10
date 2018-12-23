.class Lcom/miui/extraphoto/refocus/RefocusActivity$8;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 508
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 511
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_STATIC:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3102(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;)Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 514
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3400(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$400(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1800(Lcom/miui/extraphoto/refocus/RefocusActivity;)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendStaticEffect(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;FZ)V

    .line 515
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3500(Lcom/miui/extraphoto/refocus/RefocusActivity;I)V

    .line 516
    return-void
.end method
