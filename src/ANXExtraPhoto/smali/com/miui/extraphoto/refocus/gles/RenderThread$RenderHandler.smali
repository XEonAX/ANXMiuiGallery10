.class public Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;
.super Landroid/os/Handler;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/gles/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderHandler"
.end annotation


# static fields
.field private static final MSG_DO_FRAME:I = 0x2

.field private static final MSG_SHUTDOWN:I = 0x5

.field private static final MSG_SURFACE_CHANGED:I = 0x1

.field private static final MSG_SURFACE_CREATED:I


# instance fields
.field private mWeakRenderThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/extraphoto/refocus/gles/RenderThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/extraphoto/refocus/gles/RenderThread;)V
    .locals 1
    .param p1, "rt"    # Lcom/miui/extraphoto/refocus/gles/RenderThread;

    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->mWeakRenderThread:Ljava/lang/ref/WeakReference;

    .line 183
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    .line 226
    .local v0, "what":I
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->mWeakRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/extraphoto/refocus/gles/RenderThread;

    .line 227
    .local v1, "renderThread":Lcom/miui/extraphoto/refocus/gles/RenderThread;
    if-nez v1, :cond_0

    .line 228
    invoke-static {}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RenderHandler.handleMessage: weak ref is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_0
    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 246
    invoke-virtual {v1, p1}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 240
    :pswitch_0
    invoke-static {v1}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->access$100(Lcom/miui/extraphoto/refocus/gles/RenderThread;)V

    .line 241
    goto :goto_0

    .line 237
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->onSurfaceChanged(II)V

    .line 238
    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 235
    goto :goto_0

    .line 243
    :cond_1
    invoke-static {v1}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->access$200(Lcom/miui/extraphoto/refocus/gles/RenderThread;)V

    .line 244
    nop

    .line 248
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendDoFrame()V
    .locals 1

    .line 209
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    return-void
.end method

.method public sendShutdown()V
    .locals 1

    .line 218
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void
.end method

.method public sendSurfaceChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method

.method public sendSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method
