.class public abstract Lcom/miui/extraphoto/refocus/gles/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

.field private mHandler:Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

.field private mHeight:I

.field private mReady:Z

.field private mStartLock:Ljava/lang/Object;

.field private volatile mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWidth:I

.field private mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mReady:Z

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/extraphoto/refocus/gles/RenderThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/gles/RenderThread;

    .line 13
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->doFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/extraphoto/refocus/gles/RenderThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/gles/RenderThread;

    .line 13
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->shutdown()V

    return-void
.end method

.method private doFrame()V
    .locals 1

    .line 112
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 113
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 115
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->swapBuffers()Z

    .line 116
    return-void
.end method

.method private prepareGl(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 84
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->release()V

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    return-void

    .line 90
    :cond_1
    new-instance v0, Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;-><init>(Lcom/miui/extraphoto/refocus/gles/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    .line 91
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->makeCurrent()V

    .line 92
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 93
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 94
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 95
    return-void
.end method

.method private shutdown()V
    .locals 2

    .line 61
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 63
    return-void
.end method


# virtual methods
.method public getEglCore()Lcom/miui/extraphoto/refocus/gles/EglCore;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    return-object v0
.end method

.method public getHandler()Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mHandler:Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    return-object v0
.end method

.method public getViewPortHeight()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mHeight:I

    return v0
.end method

.method public getViewPortWidth()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWidth:I

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    return-void
.end method

.method protected makeCurrent()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->makeCurrent()V

    .line 124
    return-void
.end method

.method protected onSurfaceChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 103
    iput p1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWidth:I

    .line 104
    iput p2, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mHeight:I

    .line 105
    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 106
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 76
    if-nez p1, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 80
    .local v0, "surface":Landroid/view/Surface;
    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->prepareGl(Landroid/view/Surface;)V

    .line 81
    return-void
.end method

.method protected releaseGl()V
    .locals 1

    .line 51
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->release()V

    .line 55
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 31
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 32
    new-instance v0, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;-><init>(Lcom/miui/extraphoto/refocus/gles/RenderThread;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mHandler:Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    .line 33
    new-instance v0, Lcom/miui/extraphoto/refocus/gles/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/miui/extraphoto/refocus/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    .line 34
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mReady:Z

    .line 36
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mStartLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 41
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "looper quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->releaseGl()V

    .line 43
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/EglCore;->release()V

    .line 45
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mReady:Z

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 37
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendShutdown()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mHandler:Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->sendShutdown()V

    .line 145
    return-void
.end method

.method public sendSurfaceChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 152
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mHandler:Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->sendSurfaceChanged(II)V

    .line 153
    return-void
.end method

.method public sendSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 148
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mHandler:Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;->sendSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 149
    return-void
.end method

.method protected updateSurface()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->swapBuffers()Z

    .line 120
    return-void
.end method

.method public waitUntilReady()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 137
    :try_start_1
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/RenderThread;->mStartLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 140
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
