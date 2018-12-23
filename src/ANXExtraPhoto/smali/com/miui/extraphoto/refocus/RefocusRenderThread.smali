.class Lcom/miui/extraphoto/refocus/RefocusRenderThread;
.super Lcom/miui/extraphoto/refocus/gles/RenderThread;
.source "RefocusRenderThread.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;,
        Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;
    }
.end annotation


# static fields
.field public static final MSG_ADJUST_STATIC:I = 0x65

.field public static final MSG_CHANGE_EFFECT_TO_RELIGHTING:I = 0x6c

.field public static final MSG_CHANGE_EFFECT_TO_STATIC:I = 0x6b

.field public static final MSG_CHANGE_EFFECT_TO_VIDEO:I = 0x6a

.field public static final MSG_INIT:I = 0x64

.field public static final MSG_MOTION_EVENT_SINGLE_TOUCH_UP:I = 0x6e

.field public static final MSG_PAUSE_VIDEO:I = 0x69

.field public static final MSG_PLAY_VIDEO:I = 0x67

.field public static final MSG_RELIGHTING_SOURCE:I = 0x6f

.field public static final MSG_SAVE_IMAGE:I = 0x70

.field public static final MSG_SAVE_VIDEO:I = 0x71

.field public static final MSG_SEND_REFRESH:I = 0x6d

.field public static final MSG_STOP_PLAY_VIDEO:I = 0x68

.field private static final SAVE_TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static final SAVE_TYPE_RELIGHT:Ljava/lang/String; = "relighting"

.field private static final SAVE_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final SAVE_TYPE_VIDEO_IMAGE:Ljava/lang/String; = "video_to_image"

.field private static final TAG:Ljava/lang/String; = "RefocusRenderThread"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

.field private mFacePoint:[I

.field private mFacePointOnView:[F

.field private mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

.field private mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

.field private mHandler:Landroid/os/Handler;

.field private mIsPlaying:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPath:Ljava/lang/String;

.field private final mPoint:[F

.field private mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

.field private mStartTimeNanos:J

.field private mSurfaceChanged:Z

.field private mSurfaceReady:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    .line 85
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/gles/RenderThread;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mIsPlaying:Z

    .line 65
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceChanged:Z

    .line 66
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceReady:Z

    .line 72
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    .line 74
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePoint:[I

    .line 75
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePointOnView:[F

    .line 77
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMatrix:Landroid/graphics/Matrix;

    .line 86
    iput-object p3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    .line 87
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPath:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->init()V

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/miui/extraphoto/refocus/RefocusRenderThread;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mBitmapWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/miui/extraphoto/refocus/RefocusRenderThread;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mBitmapHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/miui/extraphoto/refocus/RefocusRenderThread;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mOrientation:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMirror:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyInitFinish(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 31
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyDecodeError()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 31
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    return-object v0
.end method

.method private adjustStatic(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 219
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v0, p1, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->adjustForDisplay(FLcom/miui/extraphoto/refocus/effect/RefocusEffect;)V

    .line 223
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->drawYUVData()V

    .line 224
    return-void
.end method

.method private changeEffect(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
    .locals 2
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 488
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->destroyEffect(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V

    .line 489
    invoke-virtual {p1}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->generateEffect()Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    .line 490
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    instance-of v0, v0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    if-eqz v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyLoading()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->initEffect(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V

    .line 495
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    instance-of v0, v0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    if-eqz v0, :cond_2

    .line 496
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyLoadingEnd()V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->adjustToNormal()V

    .line 500
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->updateDisplay()V

    .line 502
    :cond_2
    :goto_0
    return-void
.end method

.method private changeEffectToRelighting(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
    .locals 5
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 444
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->stopPlayVideo()V

    .line 445
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->onPreviewVideo()V

    .line 446
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->changeEffect(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "needToast":Z
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    instance-of v1, v1, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    check-cast v1, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->hasFace()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    check-cast v1, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePoint:[I

    invoke-virtual {v1, v3}, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->getFacePoint([I)V

    .line 451
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePointOnView:[F

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePoint:[I

    aget v3, v3, v2

    int-to-float v3, v3

    aput v3, v1, v2

    .line 452
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePointOnView:[F

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePoint:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    aput v3, v1, v4

    .line 453
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePointOnView:[F

    invoke-virtual {v1, v3}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getPointOnView([F)V

    .line 454
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    invoke-virtual {v1, v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->getRelightingLightSource([F)V

    .line 455
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    invoke-virtual {v1, v3}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getPointOnView([F)V

    .line 457
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    aget v2, v3, v2

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->setUserRelightingSourceOnView(FF)V

    .line 458
    invoke-direct {p0, v4}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveStatusChange(Z)V

    .line 459
    const/4 v0, 0x1

    goto :goto_0

    .line 461
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveStatusChange(Z)V

    .line 462
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    check-cast v1, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->makeErrorToast(Landroid/content/Context;)V

    .line 465
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult()V

    .line 466
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->updateDisplay()V

    .line 467
    if-eqz v0, :cond_2

    .line 468
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyRelightingEffect()V

    .line 470
    :cond_2
    return-void
.end method

.method private changeEffectToStatic(Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;)V
    .locals 1
    .param p1, "staticAdjust"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;

    .line 479
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->stopPlayVideo()V

    .line 480
    iget-object v0, p1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;->refocusEffectConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->changeEffect(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 481
    iget-boolean v0, p1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;->adjust:Z

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->onAdjustToStatic()V

    .line 483
    iget v0, p1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;->progress:F

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->adjustStatic(F)V

    .line 485
    :cond_0
    return-void
.end method

.method private changeEffectToVideo(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
    .locals 1
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 473
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->onPreviewVideo()V

    .line 474
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->changeEffect(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 475
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->playVideo()V

    .line 476
    return-void
.end method

.method private drawYUVData()V
    .locals 12

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 203
    .local v0, "a":J
    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 204
    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 205
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->getYData()[B

    move-result-object v3

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v4}, Lcom/miui/extraphoto/refocus/RefocusManager;->getUData()[B

    move-result-object v4

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v5}, Lcom/miui/extraphoto/refocus/RefocusManager;->getVData()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->configYUVData([B[B[B)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    .local v2, "b":J
    const-string v4, "RefocusRenderThread"

    const-string v5, "config yuv coast %d"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    sub-long v8, v2, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    invoke-virtual {v5}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getGLPosition()[F

    move-result-object v5

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    invoke-virtual {v7}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getRotation()[F

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->draw([F[F)V

    .line 209
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->updateSurface()V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 211
    const-string v4, "RefocusRenderThread"

    const-string v5, "draw yuv coast %d"

    new-array v7, v6, [Ljava/lang/Object;

    sub-long v10, v2, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceReady:Z

    if-nez v4, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySurfaceReady()V

    .line 214
    iput-boolean v6, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceReady:Z

    .line 216
    :cond_0
    return-void
.end method

.method private getCurrentDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->getProcessWidth()I

    move-result v0

    .line 387
    .local v0, "processWidth":I
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->getProcessHeight()I

    move-result v1

    .line 388
    .local v1, "processHeight":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 389
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3, v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->configBitmapByResult(Landroid/graphics/Bitmap;)V

    .line 390
    return-object v2
.end method

.method private getPreviewBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 394
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->getProcessWidth()I

    move-result v0

    .line 395
    .local v0, "processWidth":I
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->getProcessHeight()I

    move-result v1

    .line 396
    .local v1, "processHeight":I
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 397
    .local v2, "matrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v7, v1

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 398
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->getImageOrientation()I

    move-result v3

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->getDegreeByOrientation(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 399
    iget-boolean v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMirror:Z

    if-eqz v3, :cond_0

    .line 400
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 402
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p1

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 403
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    return-object v3
.end method

.method private init()V
    .locals 3

    .line 94
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/extraphoto/refocus/RefocusManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    .line 95
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->start()V

    .line 96
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->waitUntilReady()V

    .line 97
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getHandler()Lcom/miui/extraphoto/refocus/gles/RenderThread$RenderHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method private notifyDecodeError()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$5;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$5;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    :cond_0
    return-void
.end method

.method private notifyInitFinish(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "imageExif"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 610
    const-string v0, "RefocusRenderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyInitFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_0
    return-void
.end method

.method private notifyLoading()V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$9;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$9;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    :cond_0
    return-void
.end method

.method private notifyLoadingEnd()V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$10;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$10;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    :cond_0
    return-void
.end method

.method private notifyPreviewUpdate(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .line 689
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;

    invoke-direct {v1, p0, p1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    :cond_0
    return-void
.end method

.method private notifyRelightingEffect()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$12;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$12;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 751
    :cond_0
    return-void
.end method

.method private notifySaveCancel()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$7;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$7;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    :cond_0
    return-void
.end method

.method private notifySaveFinish(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "video"    # Z
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "explain"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 673
    :cond_0
    return-void
.end method

.method private notifySaveStatusChange(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 728
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;

    invoke-direct {v1, p0, p1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    :cond_0
    return-void
.end method

.method private notifySurfaceChanged()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$3;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$3;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    :cond_0
    return-void
.end method

.method private notifySurfaceReady()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$4;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$4;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 647
    :cond_0
    return-void
.end method

.method private onSingleTouchUp(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 233
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 234
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    int-to-float v1, p2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 235
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getPointOnBitmap([F)V

    .line 236
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-eqz v0, :cond_1

    .line 237
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$13;->$SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType:[I

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->refocus(II)V

    .line 243
    :cond_1
    :goto_0
    return-void
.end method

.method private onThreadExit()V
    .locals 2

    .line 766
    const-string v0, "RefocusRenderThread"

    const-string v1, "render thread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->destroyEffect(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->releaseAll()V

    .line 771
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->destroy()V

    .line 774
    :cond_1
    return-void
.end method

.method private pauseVideo()V
    .locals 1

    .line 272
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 273
    return-void
.end method

.method private playVideo()V
    .locals 2

    .line 257
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 258
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mStartTimeNanos:J

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mIsPlaying:Z

    .line 263
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 264
    return-void
.end method

.method private refocus(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 227
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->stopPlayVideo()V

    .line 228
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusManager;->refocus(II)V

    .line 229
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->updateDisplay()V

    .line 230
    return-void
.end method

.method private refocusInit()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->init(Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;)V

    .line 187
    return-void
.end method

.method private refreshDisplay()V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->playVideo()V

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->drawYUVData()V

    .line 199
    :goto_0
    return-void
.end method

.method private saveDisplayImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outPath"    # Ljava/lang/String;

    .line 339
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMirror:Z

    if-eqz v0, :cond_1

    .line 340
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 341
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mOrientation:I

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->isVerticalMirror(I)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 346
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 347
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 348
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v0, p1

    .line 350
    .restart local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->hasWaterMark()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    const-string v1, "RefocusRenderThread"

    const-string v2, "hasWaterMark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->getWaterMark()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->getWaterMarkTime()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    .line 353
    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->getOriginWidth()I

    move-result v9

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->getOriginHeight()I

    move-result v10

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->getImageOrientation()I

    move-result v11

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIII)V

    .line 354
    .local v1, "refocusWaterMarkPainter":Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;
    invoke-virtual {v1, v0}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->canvasDrawWaterMark(Landroid/graphics/Bitmap;)V

    .line 355
    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->release()V

    .line 357
    .end local v1    # "refocusWaterMarkPainter":Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;
    :cond_2
    const/4 v1, 0x0

    .line 359
    .local v1, "fileOutputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 360
    new-instance v2, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 361
    .local v2, "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->getOriginExifTags()Ljava/util/List;

    move-result-object v3

    .line 362
    .local v3, "exifTags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery3d/exif/ExifTag;>;"
    if-eqz v3, :cond_4

    .line 363
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery3d/exif/ExifTag;

    .line 364
    .local v5, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v6

    .line 365
    .local v6, "tagId":S
    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v7

    if-eq v6, v7, :cond_3

    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 366
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v7

    if-eq v6, v7, :cond_3

    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    .line 367
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v7

    if-eq v6, v7, :cond_3

    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 368
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v7

    if-eq v6, v7, :cond_3

    const/16 v7, -0x7770

    if-eq v6, v7, :cond_3

    .line 370
    invoke-virtual {v2, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_3

    .line 372
    :cond_3
    const-string v7, "RefocusRenderThread"

    const-string v8, "skip user comment"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v5    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v6    # "tagId":S
    :goto_3
    goto :goto_2

    .line 376
    :cond_4
    invoke-virtual {v2, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    move-object v1, v4

    .line 377
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    .end local v3    # "exifTags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery3d/exif/ExifTag;>;"
    goto :goto_4

    .line 381
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 378
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    const-string v2, "RefocusRenderThread"

    invoke-static {v2, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 382
    nop

    .line 383
    return-void

    .line 381
    :goto_5
    const-string v3, "RefocusRenderThread"

    invoke-static {v3, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v2
.end method

.method private saveImage(Ljava/lang/String;Z)V
    .locals 14
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "adjustToSuggest"    # Z

    move-object v6, p0

    move-object v7, p1

    .line 276
    invoke-direct {v6}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->stopPlayVideo()V

    .line 277
    invoke-direct {v6}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getCurrentDisplayBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getPreviewBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 278
    .local v8, "displayBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v6, v8}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyPreviewUpdate(Landroid/graphics/Bitmap;)V

    .line 279
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-nez v0, :cond_0

    .line 280
    invoke-direct {v6}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveCancel()V

    .line 281
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 284
    .local v9, "outFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 287
    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 288
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v10, v1

    .line 289
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x2

    iput v1, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 290
    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 291
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0, v10}, Lcom/miui/extraphoto/refocus/RefocusManager;->decodeOriginBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 293
    invoke-direct {v6}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveCancel()V

    .line 294
    return-void

    .line 296
    :cond_2
    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getBitmapForYUV(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 297
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0, v11, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->resetData(Landroid/graphics/Bitmap;I)V

    .line 298
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->multiplyCoefficient(I)V

    .line 299
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->configProcessQuality(I)V

    .line 300
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->initEffect(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V

    .line 301
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v2, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->getSuggestImageProgress()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->enableEffectByProgress(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;F)V

    .line 302
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0, v11}, Lcom/miui/extraphoto/refocus/RefocusManager;->configBitmapByResult(Landroid/graphics/Bitmap;)V

    .line 303
    invoke-direct {v6, v11, v7}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->saveDisplayImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 304
    invoke-direct {v6, v11}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getPreviewBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "video_to_image"

    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v5, v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveFinish(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 306
    :cond_3
    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->readOriginBytes()[B

    move-result-object v10

    .line 307
    .local v10, "data":[B
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v11, v1

    .line 308
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 309
    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v1, v10, v11}, Lcom/miui/extraphoto/refocus/RefocusManager;->decodeOriginBitmap([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_4

    .line 311
    invoke-direct {v6}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveCancel()V

    .line 312
    return-void

    .line 314
    :cond_4
    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getBitmapForYUV(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 315
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v1, v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    sget-object v2, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->RELIGHTING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const/4 v3, 0x4

    if-ne v1, v2, :cond_6

    .line 316
    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    check-cast v1, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->hasFace()Z

    move-result v1

    if-nez v1, :cond_5

    .line 317
    invoke-direct {v6}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveCancel()V

    .line 318
    return-void

    .line 320
    :cond_5
    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v1, v12, v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->resetData(Landroid/graphics/Bitmap;I)V

    .line 321
    iget-object v1, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v2, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->getUserRelightingSourceX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->getUserRelightingSourceY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->setRelightingLightSource(FFZ)V

    goto :goto_0

    .line 323
    :cond_6
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0, v12, v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->resetData(Landroid/graphics/Bitmap;I)V

    .line 324
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->reprocess()V

    .line 326
    :goto_0
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0, v12}, Lcom/miui/extraphoto/refocus/RefocusManager;->configBitmapByResult(Landroid/graphics/Bitmap;)V

    .line 327
    invoke-direct {v6, v12, v7}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->saveDisplayImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 328
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->getCurrentBokehSize()I

    move-result v13

    .line 329
    .local v13, "size":I
    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->RELIGHTING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    if-ne v0, v1, :cond_7

    .line 330
    invoke-direct {v6, v12}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getPreviewBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "relighting"

    iget-object v0, v6, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v5, v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveFinish(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :cond_7
    invoke-direct {v6, v12}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getPreviewBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "image"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveFinish(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v10    # "data":[B
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "size":I
    :goto_1
    return-void
.end method

.method private saveVideo(Ljava/lang/String;)V
    .locals 14
    .param p1, "outPath"    # Ljava/lang/String;

    .line 407
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->stopPlayVideo()V

    .line 408
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getCurrentDisplayBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getPreviewBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    .local v0, "displayBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyPreviewUpdate(Landroid/graphics/Bitmap;)V

    .line 410
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-nez v1, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveCancel()V

    .line 412
    return-void

    .line 414
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 415
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 416
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->decodeOriginBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 417
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveCancel()V

    .line 419
    return-void

    .line 421
    :cond_1
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v4}, Lcom/miui/extraphoto/refocus/RefocusManager;->onPreviewVideo()V

    .line 422
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v4, v3, v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->resetData(Landroid/graphics/Bitmap;I)V

    .line 423
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v4, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->multiplyCoefficient(I)V

    .line 424
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    invoke-virtual {v2, v4}, Lcom/miui/extraphoto/refocus/RefocusManager;->initEffect(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V

    .line 426
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/miui/extraphoto/refocus/RefocusManager;->enableEffectByProgress(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;F)V

    .line 427
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 428
    .local v2, "preview":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v4, v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->configBitmapByResult(Landroid/graphics/Bitmap;)V

    .line 430
    new-instance v4, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getEglCore()Lcom/miui/extraphoto/refocus/gles/EglCore;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v9, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;-><init>(Landroid/content/res/Resources;Lcom/miui/extraphoto/refocus/gles/EglCore;Lcom/miui/extraphoto/refocus/effect/RefocusEffect;Lcom/miui/extraphoto/refocus/RefocusManager;II)V

    .line 431
    .local v4, "refocusVideoGenerator":Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v5, "origin":Ljava/io/File;
    invoke-static {v5}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getTempPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 434
    .local v6, "temp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->generateVideo(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->makeCurrent()V

    .line 438
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 440
    invoke-direct {p0, v2}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getPreviewBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v11, 0x1

    const-string v12, "video"

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v13, v7, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->name:Ljava/lang/String;

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveFinish(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private setRelightingSource(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 246
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 247
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    int-to-float v1, p2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 248
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getPointOnBitmap([F)V

    .line 249
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->isRelightingHasFace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mPoint:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->setRelightingLightSource(FF)V

    .line 251
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult()V

    .line 252
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->updateDisplay()V

    .line 254
    :cond_0
    return-void
.end method

.method private stopPlayVideo()V
    .locals 1

    .line 267
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mIsPlaying:Z

    .line 269
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7
    .param p1, "frameTimeNanos"    # J

    .line 589
    const-string v0, "RefocusRenderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mStartTimeNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "progress":F
    iput-wide p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mStartTimeNanos:J

    goto :goto_0

    .line 595
    .end local v0    # "progress":F
    :cond_0
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mStartTimeNanos:J

    sub-long v0, p1, v0

    .line 596
    .local v0, "diff":J
    long-to-float v4, v0

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget v5, v5, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->totalSecond:I

    int-to-float v5, v5

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v5, v6

    div-float v0, v4, v5

    .line 598
    .local v0, "progress":F
    :goto_0
    const-string v1, "RefocusRenderThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-lez v4, :cond_1

    .line 600
    iput-wide v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mStartTimeNanos:J

    .line 601
    invoke-direct {p0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->adjustStatic(F)V

    .line 602
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->pauseVideo()V

    goto :goto_1

    .line 604
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->adjustStatic(F)V

    .line 605
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 607
    :goto_1
    return-void
.end method

.method public getCurrentBokehSize()I
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->getCurrentBokehSize()I

    move-result v0

    return v0
.end method

.method public getFacePoint([F)V
    .locals 2
    .param p1, "point"    # [F

    .line 571
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePointOnView:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    .line 572
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mFacePointOnView:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    .line 573
    return-void
.end method

.method public getImageDisplayRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .line 580
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getImageDisplayRect(Landroid/graphics/RectF;)V

    .line 581
    return-void
.end method

.method public getLightingPointOnView()[F
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->getUserRelightingSourceOnView()[F

    move-result-object v0

    return-object v0
.end method

.method public getRelightingRadius()F
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->getRelightingRadius()F

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 137
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->saveVideo(Ljava/lang/String;)V

    .line 138
    goto :goto_1

    .line 134
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->saveImage(Ljava/lang/String;Z)V

    .line 135
    goto :goto_1

    .line 131
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->setRelightingSource(II)V

    .line 132
    goto :goto_1

    .line 128
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->onSingleTouchUp(II)V

    .line 129
    goto :goto_1

    .line 125
    :pswitch_5
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->refreshDisplay()V

    .line 126
    goto :goto_1

    .line 122
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->changeEffectToRelighting(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 123
    goto :goto_1

    .line 119
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->changeEffectToStatic(Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;)V

    .line 120
    goto :goto_1

    .line 116
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->changeEffectToVideo(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 117
    goto :goto_1

    .line 140
    :pswitch_9
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->pauseVideo()V

    goto :goto_1

    .line 113
    :pswitch_a
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->stopPlayVideo()V

    .line 114
    goto :goto_1

    .line 110
    :pswitch_b
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->playVideo()V

    .line 111
    goto :goto_1

    .line 106
    :pswitch_c
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->stopPlayVideo()V

    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->adjustStatic(F)V

    .line 108
    goto :goto_1

    .line 103
    :pswitch_d
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->refocusInit()V

    .line 104
    nop

    .line 143
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isPlaying()Z
    .locals 1

    .line 754
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mIsPlaying:Z

    return v0
.end method

.method public isRelightingHasFace()Z
    .locals 1

    .line 762
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->isRelightingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    check-cast v0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->hasFace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRelightingMode()Z
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mCurrentEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->RELIGHTING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onSurfaceChanged(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 159
    invoke-super {p0, p1, p2}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->onSurfaceChanged(II)V

    .line 160
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceChanged:Z

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mBitmapWidth:I

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mBitmapHeight:I

    iget v6, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mOrientation:I

    iget-boolean v7, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mMirror:Z

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;-><init>(IIIIIZ)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLDisplayParameter:Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;

    .line 162
    new-instance v0, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mBitmapWidth:I

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mBitmapHeight:I

    invoke-direct {v0, v1, v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;-><init>(II)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    .line 163
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceReady:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->updateDisplay()V

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySurfaceChanged()V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceChanged:Z

    .line 169
    :cond_1
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 153
    invoke-super {p0, p1}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mSurfaceChanged:Z

    .line 155
    return-void
.end method

.method protected releaseGl()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/miui/extraphoto/refocus/gles/RenderThread;->releaseGl()V

    .line 148
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->onThreadExit()V

    .line 149
    return-void
.end method

.method public sendAdjustStatic(F)V
    .locals 4
    .param p1, "progress"    # F

    .line 509
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method

.method public sendInitMsg()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 506
    return-void
.end method

.method public sendOnSingleTapUp(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 557
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    return-void
.end method

.method public sendPauseVideo()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 550
    return-void
.end method

.method public sendPlayVideo()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    return-void
.end method

.method public sendRefresh()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 554
    return-void
.end method

.method public sendRelightingEffectConfig(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
    .locals 3
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 535
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 537
    return-void
.end method

.method public sendRelightingSource(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 562
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method

.method public sendSaveImage(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "adjustToSuggest"    # Z

    .line 520
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/16 v3, 0x70

    invoke-virtual {v1, v3, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    return-void
.end method

.method public sendSaveVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "outPath"    # Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    return-void
.end method

.method public sendStaticEffect(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;FZ)V
    .locals 5
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .param p2, "progress"    # F
    .param p3, "adjust"    # Z

    .line 540
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, p3, v4}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;-><init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;FZLcom/miui/extraphoto/refocus/RefocusRenderThread$1;)V

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    return-void
.end method

.method public sendStopPlayVideo()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    return-void
.end method

.method public sendVideoEffectConfig(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
    .locals 3
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 530
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 532
    return-void
.end method

.method public updateDisplay()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->drawYUVData()V

    .line 191
    return-void
.end method
