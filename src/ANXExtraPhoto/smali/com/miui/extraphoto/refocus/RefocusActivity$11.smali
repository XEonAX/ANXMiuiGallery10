.class Lcom/miui/extraphoto/refocus/RefocusActivity$11;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 543
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 547
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1802(Lcom/miui/extraphoto/refocus/RefocusActivity;F)F

    .line 548
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3400(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1800(Lcom/miui/extraphoto/refocus/RefocusActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendAdjustStatic(F)V

    .line 549
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0, p2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3500(Lcom/miui/extraphoto/refocus/RefocusActivity;I)V

    .line 550
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 554
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 558
    return-void
.end method
