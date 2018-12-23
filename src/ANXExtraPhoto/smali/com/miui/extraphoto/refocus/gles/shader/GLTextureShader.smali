.class public Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;
.super Ljava/lang/Object;
.source "GLTextureShader.java"


# static fields
.field public static final CUBE:[F

.field public static final CUBE_REVERSE:[F

.field protected static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field protected static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

.field public static final TEXTURE_180_ROTATION:[F

.field public static final TEXTURE_270_ROTATION:[F

.field public static final TEXTURE_90_ROTATION:[F

.field public static final TEXTURE_NO_ROTATION:[F


# instance fields
.field private mGLAttribPosition:I

.field private mGLAttribTextureCoordinate:I

.field private mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLProgId:I

.field private mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLUniformTexture:I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    .line 40
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_90_ROTATION:[F

    .line 47
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_180_ROTATION:[F

    .line 54
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_270_ROTATION:[F

    .line 61
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE:[F

    .line 67
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE_REVERSE:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    .line 90
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 181
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 182
    return-void
.end method

.method public draw(I)V
    .locals 1
    .param p1, "textureId"    # I

    .line 111
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE:[F

    invoke-virtual {p0, p1, v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->draw(I[F)V

    .line 112
    return-void
.end method

.method public draw(I[F)V
    .locals 1
    .param p1, "textureId"    # I
    .param p2, "glPosition"    # [F

    .line 119
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->draw(I[F[F)V

    .line 120
    return-void
.end method

.method public draw(I[F[F)V
    .locals 8
    .param p1, "textureId"    # I
    .param p2, "glPosition"    # [F
    .param p3, "textureCood"    # [F

    .line 123
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 125
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->onPreDraw()V

    .line 126
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->runPendingOnDrawTasks()V

    .line 128
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 129
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 131
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribPosition:I

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 133
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 134
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 136
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 139
    const/16 v0, 0xde1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 140
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 141
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 142
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLUniformTexture:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 145
    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 146
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribPosition:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 147
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 149
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 150
    return-void
.end method

.method public drawFBO(I)V
    .locals 1
    .param p1, "textureId"    # I

    .line 115
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE_REVERSE:[F

    invoke-virtual {p0, p1, v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->draw(I[F)V

    .line 116
    return-void
.end method

.method public getProgram()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLProgId:I

    return v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .line 93
    invoke-static {p1, p2}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLProgId:I

    .line 94
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribPosition:I

    .line 95
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLUniformTexture:I

    .line 96
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    .line 99
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 102
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 107
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    return-void
.end method

.method protected onPreDraw()V
    .locals 0

    .line 153
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 162
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "floatValue"    # F

    .line 168
    new-instance v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader$1;-><init>(Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;IF)V

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->runOnDraw(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method
