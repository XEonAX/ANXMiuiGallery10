.class public Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/miui/extraphoto/refocus/gles/EglCore;)V
    .locals 1
    .param p1, "eglCore"    # Lcom/miui/extraphoto/refocus/gles/EglCore;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mWidth:I

    .line 45
    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mHeight:I

    .line 48
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    .line 49
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 72
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    invoke-virtual {v0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 76
    iput p1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mWidth:I

    .line 77
    iput p2, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mHeight:I

    .line 78
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "surface already created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2
    .param p1, "surface"    # Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/gles/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 66
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "surface already created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .locals 3

    .line 99
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mHeight:I

    if-gez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    .line 102
    :cond_0
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 88
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mWidth:I

    if-gez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    .line 91
    :cond_0
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mWidth:I

    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 120
    return-void
.end method

.method public makeCurrentReadFrom(Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;)V
    .locals 3
    .param p1, "readSurface"    # Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;

    .line 127
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p1, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    .line 128
    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/gles/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 111
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mWidth:I

    .line 113
    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/gles/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->getWidth()I

    move-result v8

    .line 177
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->getHeight()I

    move-result v9

    .line 178
    .local v9, "height":I
    mul-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 179
    .local v10, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 180
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, v8

    move v4, v9

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 182
    const-string v1, "glReadPixels"

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 188
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 189
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 190
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 195
    sget-object v2, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " frame as \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 193
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_0
    throw v2

    .line 159
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected EGL context/surface is not current"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPresentationTime(J)V
    .locals 2
    .param p1, "nsecs"    # J

    .line 149
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    .line 150
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/gles/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 137
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 138
    sget-object v1, Lcom/miui/extraphoto/refocus/gles/EglSurfaceBase;->TAG:Ljava/lang/String;

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return v0
.end method
