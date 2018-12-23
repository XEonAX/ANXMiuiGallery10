.class public final Lcom/miui/extraphoto/refocus/gles/EglCore;
.super Ljava/lang/Object;
.source "EglCore.java"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/miui/extraphoto/refocus/gles/EglCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/gles/EglCore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/extraphoto/refocus/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 10
    .param p1, "sharedContext"    # Landroid/opengl/EGLContext;
    .param p2, "flags"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mGlVersion:I

    .line 75
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_6

    .line 79
    if-nez p1, :cond_0

    .line 80
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 83
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 84
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_5

    .line 87
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 88
    .local v3, "version":[I
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x1

    invoke-static {v4, v3, v1, v3, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    and-int/lit8 v0, p2, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p2, v4}, Lcom/miui/extraphoto/refocus/gles/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 97
    .local v0, "config":Landroid/opengl/EGLConfig;
    if-eqz v0, :cond_1

    .line 98
    new-array v6, v4, [I

    fill-array-data v6, :array_0

    .line 102
    .local v6, "attrib3_list":[I
    iget-object v7, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v7, v0, p1, v6, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v7

    .line 105
    .local v7, "context":Landroid/opengl/EGLContext;
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v8

    const/16 v9, 0x3000

    if-ne v8, v9, :cond_1

    .line 107
    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 108
    iput-object v7, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 109
    iput v4, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mGlVersion:I

    .line 113
    .end local v0    # "config":Landroid/opengl/EGLConfig;
    .end local v6    # "attrib3_list":[I
    .end local v7    # "context":Landroid/opengl/EGLContext;
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v6, :cond_3

    .line 115
    invoke-direct {p0, p2, v2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 116
    .restart local v0    # "config":Landroid/opengl/EGLConfig;
    if-eqz v0, :cond_2

    .line 119
    new-array v4, v4, [I

    fill-array-data v4, :array_1

    .line 123
    .local v4, "attrib2_list":[I
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v6, v0, p1, v4, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    .line 125
    .local v6, "context":Landroid/opengl/EGLContext;
    const-string v7, "eglCreateContext"

    invoke-direct {p0, v7}, Lcom/miui/extraphoto/refocus/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 126
    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 127
    iput-object v6, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 128
    iput v2, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mGlVersion:I

    .end local v0    # "config":Landroid/opengl/EGLConfig;
    .end local v4    # "attrib2_list":[I
    .end local v6    # "context":Landroid/opengl/EGLContext;
    goto :goto_0

    .line 117
    .restart local v0    # "config":Landroid/opengl/EGLConfig;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v0    # "config":Landroid/opengl/EGLConfig;
    :cond_3
    :goto_0
    new-array v0, v5, [I

    .line 133
    .local v0, "values":[I
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/16 v5, 0x3098

    invoke-static {v2, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 135
    sget-object v2, Lcom/miui/extraphoto/refocus/gles/EglCore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EGLContext created, client version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 89
    .end local v0    # "values":[I
    :cond_4
    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    .end local v3    # "version":[I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL already set up"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 368
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    move v1, v0

    .local v1, "error":I
    const/16 v2, 0x3000

    if-ne v0, v2, :cond_0

    .line 371
    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .locals 17
    .param p1, "flags"    # I
    .param p2, "version"    # I

    .line 145
    move/from16 v0, p2

    const/4 v1, 0x4

    .line 146
    .local v1, "renderableType":I
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 147
    or-int/lit8 v1, v1, 0x40

    .line 153
    :cond_0
    const/16 v3, 0xd

    new-array v3, v3, [I

    const/16 v4, 0x3024

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x8

    const/4 v6, 0x1

    aput v4, v3, v6

    const/16 v7, 0x3023

    const/4 v8, 0x2

    aput v7, v3, v8

    aput v4, v3, v2

    const/4 v7, 0x4

    const/16 v9, 0x3022

    aput v9, v3, v7

    const/4 v7, 0x5

    aput v4, v3, v7

    const/4 v7, 0x6

    const/16 v9, 0x3021

    aput v9, v3, v7

    const/4 v7, 0x7

    aput v4, v3, v7

    const/16 v7, 0x3040

    aput v7, v3, v4

    const/16 v4, 0x9

    aput v1, v3, v4

    const/16 v4, 0xa

    const/16 v7, 0x3038

    aput v7, v3, v4

    const/16 v4, 0xb

    aput v5, v3, v4

    const/16 v4, 0xc

    aput v7, v3, v4

    .line 164
    .local v3, "attribList":[I
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    .line 165
    array-length v7, v3

    sub-int/2addr v7, v2

    const/16 v2, 0x3142

    aput v2, v3, v7

    .line 166
    array-length v2, v3

    sub-int/2addr v2, v8

    aput v6, v3, v2

    .line 168
    :cond_1
    new-array v2, v6, [Landroid/opengl/EGLConfig;

    .line 169
    .local v2, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v6, [I

    .line 170
    .local v6, "numConfigs":[I
    move-object/from16 v7, p0

    iget-object v9, v7, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v11, 0x0

    const/4 v13, 0x0

    array-length v14, v2

    const/16 v16, 0x0

    move-object v10, v3

    move-object v12, v2

    move-object v15, v6

    invoke-static/range {v9 .. v16}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 172
    sget-object v5, Lcom/miui/extraphoto/refocus/gles/EglCore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to find RGB8888 / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " EGLConfig"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v5, 0x0

    return-object v5

    .line 175
    :cond_2
    aget-object v5, v2, v5

    return-object v5
.end method

.method public static logCurrent(Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .line 356
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 357
    .local v0, "display":Landroid/opengl/EGLDisplay;
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    .line 358
    .local v1, "context":Landroid/opengl/EGLContext;
    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 359
    .local v2, "surface":Landroid/opengl/EGLSurface;
    sget-object v3, Lcom/miui/extraphoto/refocus/gles/EglCore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current EGL ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", surface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 251
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3057

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3056

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p2, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 256
    .local v0, "surfaceAttribs":[I
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 258
    .local v1, "eglSurface":Landroid/opengl/EGLSurface;
    const-string v2, "eglCreatePbufferSurface"

    invoke-direct {p0, v2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 259
    if-eqz v1, :cond_0

    .line 262
    return-object v1

    .line 260
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "surface was null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4
    .param p1, "surface"    # Ljava/lang/Object;

    .line 230
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 238
    .local v0, "surfaceAttribs":[I
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 240
    .local v1, "eglSurface":Landroid/opengl/EGLSurface;
    const-string v2, "eglCreateWindowSurface"

    invoke-direct {p0, v2}, Lcom/miui/extraphoto/refocus/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 241
    if-eqz v1, :cond_2

    .line 244
    return-object v1

    .line 242
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "surface was null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 208
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/EglCore;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: EglCore was not explicitly released -- state may be leaked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/gles/EglCore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGlVersion()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mGlVersion:I

    return v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;

    .line 321
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3059

    .line 322
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;

    .line 269
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 271
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/EglCore;->TAG:Ljava/lang/String;

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    return-void

    .line 274
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2
    .param p1, "drawSurface"    # Landroid/opengl/EGLSurface;
    .param p2, "readSurface"    # Landroid/opengl/EGLSurface;

    .line 282
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 284
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/EglCore;->TAG:Ljava/lang/String;

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    return-void

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent(draw,read) failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeNothingCurrent()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .line 338
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;
    .param p2, "what"    # I

    .line 329
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 330
    .local v0, "value":[I
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 331
    aget v1, v0, v2

    return v1
.end method

.method public release()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 190
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 191
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 192
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 195
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 196
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 198
    return-void
.end method

.method public releaseSurface(Landroid/opengl/EGLSurface;)V
    .locals 1
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;

    .line 221
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 222
    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 1
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;
    .param p2, "nsecs"    # J

    .line 314
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 315
    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;

    .line 307
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
