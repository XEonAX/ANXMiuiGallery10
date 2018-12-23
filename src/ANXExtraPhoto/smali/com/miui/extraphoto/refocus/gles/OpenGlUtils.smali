.class public Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;
.super Ljava/lang/Object;
.source "OpenGlUtils.java"


# static fields
.field public static final NO_TEXTURE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "strVSource"    # Ljava/lang/String;
    .param p1, "strFSource"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 93
    .local v0, "link":[I
    const v1, 0x8b31

    invoke-static {p0, v1}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, "iVShader":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 95
    const-string v3, "Load Program"

    const-string v4, "Vertex Shader Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v2

    .line 98
    :cond_0
    const v3, 0x8b30

    invoke-static {p1, v3}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v3

    .line 99
    .local v3, "iFShader":I
    if-nez v3, :cond_1

    .line 100
    const-string v4, "Load Program"

    const-string v5, "Fragment Shader Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 104
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    .line 106
    .local v4, "iProgId":I
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 107
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 109
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 111
    const v5, 0x8b82

    invoke-static {v4, v5, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 112
    aget v5, v0, v2

    if-gtz v5, :cond_2

    .line 113
    const-string v5, "Load Program"

    const-string v6, "Linking Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v2

    .line 116
    :cond_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 117
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 118
    return v4
.end method

.method public static loadShader(Ljava/lang/String;I)I
    .locals 6
    .param p0, "strSource"    # Ljava/lang/String;
    .param p1, "iType"    # I

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 77
    .local v0, "compiled":[I
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 78
    .local v1, "iShader":I
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 79
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 80
    const/4 v2, 0x0

    const v3, 0x8b81

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 81
    aget v3, v0, v2

    if-nez v3, :cond_0

    .line 82
    const-string v3, "Load Shader Failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compilation\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v2

    .line 85
    :cond_0
    return v1
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 1
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "usedTexId"    # I

    .line 16
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    return v0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .locals 5
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "usedTexId"    # I
    .param p2, "recycle"    # Z

    .line 20
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 21
    .local v1, "textures":[I
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 22
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 23
    aget v0, v1, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 24
    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 26
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 28
    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 30
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 33
    invoke-static {v2, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 36
    invoke-static {v2, v3, v3, v3, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 37
    aput p1, v1, v3

    .line 39
    :goto_0
    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_1
    aget v0, v1, v3

    return v0
.end method

.method public static loadTexture(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 24
    .param p0, "data"    # Ljava/nio/IntBuffer;
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "usedTexId"    # I

    move-object/from16 v0, p1

    .line 46
    move/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 47
    .local v3, "textures":[I
    const/4 v4, 0x0

    const/16 v5, 0xde1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 48
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 49
    aget v2, v3, v4

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 50
    const/16 v2, 0x2800

    const v6, 0x46180400    # 9729.0f

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 52
    const/16 v2, 0x2801

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 54
    const/16 v2, 0x2802

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 56
    const/16 v2, 0x2803

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 58
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    move-object/from16 v15, p0

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 62
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v21, 0x1908

    const/16 v22, 0x1401

    move/from16 v19, v2

    move/from16 v20, v5

    move-object/from16 v23, p0

    invoke-static/range {v15 .. v23}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 64
    aput v1, v3, v4

    .line 66
    :goto_0
    aget v2, v3, v4

    return v2
.end method

.method public static loadTextureAsBitmap(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 4
    .param p0, "data"    # Ljava/nio/IntBuffer;
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "usedTexId"    # I

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v1

    return v1
.end method

.method public static rnd(FF)F
    .locals 2
    .param p0, "min"    # F
    .param p1, "max"    # F

    .line 122
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    .line 123
    .local v0, "fRandNum":F
    sub-float v1, p1, p0

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    return v1
.end method
