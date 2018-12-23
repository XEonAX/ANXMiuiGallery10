.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

.field final synthetic val$position:I

.field final synthetic val$textStyle:Lcom/miui/gallery/video/editor/TextStyle;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;->val$textStyle:Lcom/miui/gallery/video/editor/TextStyle;

    iput p3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;->val$textStyle:Lcom/miui/gallery/video/editor/TextStyle;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/TextStyle;->setDownloadState(I)V

    .line 577
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->notifyDateSetChanged(I)V

    .line 578
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 582
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->loadWaterMarkTemplateList(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;)V

    .line 589
    return-void
.end method
