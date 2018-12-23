.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->scheduleNewImages()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$502(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z

    .line 267
    return-void
.end method

.method public onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    .prologue
    .line 271
    return-void
.end method

.method public onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 2
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$502(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z

    .line 276
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method
