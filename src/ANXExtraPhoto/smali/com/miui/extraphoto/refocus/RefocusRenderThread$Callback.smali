.class interface abstract Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onDecodeError()V
.end method

.method public abstract onInitFinish(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
.end method

.method public abstract onLoading()V
.end method

.method public abstract onLoadingEnd()V
.end method

.method public abstract onPreviewUpdate(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onRelightingEffect()V
.end method

.method public abstract onSave(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSaveCancel()V
.end method

.method public abstract onSaveStatusChange(Z)V
.end method

.method public abstract onSurfaceChanged()V
.end method

.method public abstract onSurfaceReady()V
.end method
