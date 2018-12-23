.class public Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;
.super Ljava/lang/Object;
.source "GLYUVShader.java"


# static fields
.field protected static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

.field protected static final YUV_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform sampler2D yTexture;\nuniform sampler2D uTexture;\nuniform sampler2D vTexture;\nvarying vec2 textureCoordinate;\n\nvoid main() {\n    int y = int(texture2D(yTexture, textureCoordinate).r*255.0);\n    int u = int(texture2D(uTexture, textureCoordinate).r*255.0)-128;\n    int v = int(texture2D(vTexture, textureCoordinate).r*255.0)-128;\n\n    int r = y + int(1.402*float(v));\n    int g = y - int(0.34413*float(u)) - int(0.71414*float(v));\n    int b = y + int(1.772*float(u));\n\n    vec3 rgb;\n    rgb.r = float(r) / 255.0;\n    rgb.g = float(g) / 255.0;\n    rgb.b = float(b) / 255.0;\n\n    gl_FragColor = vec4(rgb, 1.0);\n}"


# instance fields
.field private mGLAttribPosition:I

.field private mGLAttribTextureCoordinate:I

.field private mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLProgId:I

.field private mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLUniformUTexture:I

.field private mGLUniformVTexture:I

.field private mGLUniformYTexture:I

.field private final mHeight:I

.field private mUBuffer:Ljava/nio/ByteBuffer;

.field private mUTexture:I

.field private mVBuffer:Ljava/nio/ByteBuffer;

.field private mVTexture:I

.field private final mWidth:I

.field private mYBuffer:Ljava/nio/ByteBuffer;

.field private mYTexture:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mWidth:I

    .line 73
    iput p2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mHeight:I

    .line 74
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->init()V

    .line 75
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->initYUVBuffer()V

    .line 76
    return-void
.end method

.method private static generateTexture()I
    .locals 5

    .line 176
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 177
    .local v1, "textures":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 178
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 179
    const v0, 0x46180400    # 9729.0f

    const/16 v4, 0x2801

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 180
    const/16 v4, 0x2800

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 181
    const v0, 0x812f

    const/16 v4, 0x2802

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 182
    const/16 v4, 0x2803

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 183
    aget v0, v1, v2

    return v0
.end method

.method private initYUVBuffer()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYTexture:I

    .line 101
    invoke-static {}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUTexture:I

    .line 102
    invoke-static {}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVTexture:I

    .line 104
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mWidth:I

    iget v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mHeight:I

    mul-int/2addr v0, v1

    .line 105
    .local v0, "ySize":I
    div-int/lit8 v1, v0, 0x4

    .line 106
    .local v1, "uvSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYBuffer:Ljava/nio/ByteBuffer;

    .line 107
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUBuffer:Ljava/nio/ByteBuffer;

    .line 108
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVBuffer:Ljava/nio/ByteBuffer;

    .line 109
    return-void
.end method


# virtual methods
.method public configYUVData([B[B[B)V
    .locals 2
    .param p1, "y"    # [B
    .param p2, "u"    # [B
    .param p3, "v"    # [B

    .line 158
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 167
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 168
    return-void

    .line 159
    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 5

    .line 171
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 172
    const/4 v0, 0x3

    new-array v1, v0, [I

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYTexture:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUTexture:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVTexture:I

    const/4 v4, 0x2

    aput v2, v1, v4

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 173
    return-void
.end method

.method public draw([F)V
    .locals 1
    .param p1, "glPosition"    # [F

    .line 112
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {p0, p1, v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->draw([F[F)V

    .line 113
    return-void
.end method

.method public draw([F[F)V
    .locals 13
    .param p1, "glPosition"    # [F
    .param p2, "textureCood"    # [F

    .line 116
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 119
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 121
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribPosition:I

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 123
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 124
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 126
    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribTextureCoordinate:I

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 129
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 130
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYTexture:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 131
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget v6, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mWidth:I

    iget v7, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mHeight:I

    iget-object v11, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mYBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 134
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLUniformYTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 136
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 137
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUTexture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 138
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mWidth:I

    const/4 v3, 0x2

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mHeight:I

    div-int/lit8 v8, v0, 0x2

    iget-object v12, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mUBuffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1909

    const/4 v9, 0x0

    const/16 v10, 0x1909

    const/16 v11, 0x1401

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 141
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLUniformUTexture:I

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 143
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 144
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVTexture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 145
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mWidth:I

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mHeight:I

    div-int/lit8 v8, v0, 0x2

    iget-object v12, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mVBuffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0xde1

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 148
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLUniformVTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 150
    const/4 v0, 0x5

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 151
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 152
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 154
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 155
    return-void
.end method

.method protected init()V
    .locals 3

    .line 79
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "precision highp float;\nuniform sampler2D yTexture;\nuniform sampler2D uTexture;\nuniform sampler2D vTexture;\nvarying vec2 textureCoordinate;\n\nvoid main() {\n    int y = int(texture2D(yTexture, textureCoordinate).r*255.0);\n    int u = int(texture2D(uTexture, textureCoordinate).r*255.0)-128;\n    int v = int(texture2D(vTexture, textureCoordinate).r*255.0)-128;\n\n    int r = y + int(1.402*float(v));\n    int g = y - int(0.34413*float(u)) - int(0.71414*float(v));\n    int b = y + int(1.772*float(u));\n\n    vec3 rgb;\n    rgb.r = float(r) / 255.0;\n    rgb.g = float(g) / 255.0;\n    rgb.b = float(b) / 255.0;\n\n    gl_FragColor = vec4(rgb, 1.0);\n}"

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    .line 80
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribPosition:I

    .line 81
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLAttribTextureCoordinate:I

    .line 84
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    const-string v1, "yTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLUniformYTexture:I

    .line 85
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLUniformUTexture:I

    .line 86
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLProgId:I

    const-string v1, "vTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLUniformVTexture:I

    .line 88
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 91
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 96
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    return-void
.end method
