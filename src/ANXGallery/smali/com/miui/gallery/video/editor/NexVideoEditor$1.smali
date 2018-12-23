.class Lcom/miui/gallery/video/editor/NexVideoEditor$1;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;->loadMainThumbnail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$1;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 175
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0xa0

    const/16 v3, 0x5a

    const/4 v4, 0x0

    .line 154
    if-eqz p3, :cond_0

    .line 155
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$1;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, p3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showThumbnail(Landroid/graphics/Bitmap;)V

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$1;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$000(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->getBestVideoAspect(III)Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    move-result-object v0

    .line 158
    .local v0, "ratio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    sget-object v1, Lcom/miui/gallery/video/editor/NexVideoEditor$18;->$SwitchMap$com$miui$gallery$video$editor$DisplayAspectRatio:[I

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 171
    .end local v0    # "ratio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v0    # "ratio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$1;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$000(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/VideoThumbnail;

    invoke-static {p3, v5, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/miui/gallery/video/editor/VideoThumbnail;-><init>(IIILandroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$1;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->notifyThumbnailChanged()V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$1;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$000(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/VideoThumbnail;

    invoke-static {p3, v3, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/miui/gallery/video/editor/VideoThumbnail;-><init>(IIILandroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$1;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->notifyThumbnailChanged()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 150
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 145
    return-void
.end method
