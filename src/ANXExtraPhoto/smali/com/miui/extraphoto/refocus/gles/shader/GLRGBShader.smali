.class public Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;
.super Ljava/lang/Object;
.source "GLRGBShader.java"


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

.field private mHeight:I

.field private mRGBBuffer:Ljava/nio/ByteBuffer;

.field private mRGBTexture:I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->TEXTURE_NO_ROTATION:[F

    .line 40
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->TEXTURE_90_ROTATION:[F

    .line 47
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->TEXTURE_180_ROTATION:[F

    .line 54
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->TEXTURE_270_ROTATION:[F

    .line 61
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->CUBE:[F

    .line 67
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->CUBE_REVERSE:[F

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

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 88
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    .line 90
    invoke-static {}, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBTexture:I

    .line 91
    iput p1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mWidth:I

    .line 92
    iput p2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mHeight:I

    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRunOnDraw:Ljava/util/LinkedList;

    .line 98
    return-void
.end method

.method private static generateTexture()I
    .locals 5

    .line 202
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 203
    .local v1, "textures":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 204
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 205
    const v0, 0x46180400    # 9729.0f

    const/16 v4, 0x2801

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 206
    const/16 v4, 0x2800

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 207
    const v0, 0x812f

    const/16 v4, 0x2802

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 208
    const/16 v4, 0x2803

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 209
    aget v0, v1, v2

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    .line 197
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 198
    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBTexture:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 199
    return-void
.end method

.method public draw([F[F[B)V
    .locals 12
    .param p1, "glPosition"    # [F
    .param p2, "textureCood"    # [F
    .param p3, "rgb"    # [B

    .line 131
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 134
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->onPreDraw()V

    .line 137
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->runPendingOnDrawTasks()V

    .line 139
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 140
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 142
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribPosition:I

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 144
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 145
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 147
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribTextureCoordinate:I

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 150
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBTexture:I

    const/16 v2, 0xde1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 151
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 152
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBTexture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 153
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    iget v6, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mWidth:I

    iget v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mHeight:I

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    iget-object v11, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRGBBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 156
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLUniformTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 159
    :cond_0
    const/4 v0, 0x5

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 160
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 161
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 163
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 164
    return-void
.end method

.method public getProgram()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLProgId:I

    return v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .line 101
    invoke-static {p1, p2}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLProgId:I

    .line 102
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribPosition:I

    .line 103
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLUniformTexture:I

    .line 104
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLAttribTextureCoordinate:I

    .line 107
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 110
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 115
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->CUBE:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    return-void
.end method

.method protected onPreDraw()V
    .locals 0

    .line 167
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 176
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "floatValue"    # F

    .line 182
    new-instance v0, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader$1;-><init>(Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;IF)V

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLRGBShader;->runOnDraw(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method
