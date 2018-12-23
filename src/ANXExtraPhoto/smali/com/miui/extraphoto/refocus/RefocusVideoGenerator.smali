.class Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;
.super Ljava/lang/Object;
.source "RefocusVideoGenerator.java"


# static fields
.field private static final FRAME_RATE:I = 0x1e

.field private static final I_FRAME_INTERVAL:F = 1.0f

.field private static final MAX_VIDEO_SIZE:I = 0x7e0

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "RefocusVideoGenerator"


# instance fields
.field private mBufferSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;",
            ">;"
        }
    .end annotation
.end field

.field private mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mGLTextureShader:Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;

.field private mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

.field private final mHeight:I

.field private mInputSurface:Landroid/view/Surface;

.field private mInputWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

.field private final mOrientation:I

.field private final mRefocusEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

.field private final mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

.field private mRefocusWaterMarkPainter:Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

.field private mTextureCood:[F

.field private final mTotalFrame:I

.field private mTrackIndex:I

.field private mUData:[B

.field private mVData:[B

.field private final mVideoHeight:I

.field private final mVideoWidth:I

.field private final mWidth:I

.field private mYData:[B

.field private mediaMuxer:Landroid/media/MediaMuxer;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/miui/extraphoto/refocus/gles/EglCore;Lcom/miui/extraphoto/refocus/effect/RefocusEffect;Lcom/miui/extraphoto/refocus/RefocusManager;II)V
    .locals 17
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "eglCore"    # Lcom/miui/extraphoto/refocus/gles/EglCore;
    .param p3, "refocusEffect"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    .param p4, "refocusManager"    # Lcom/miui/extraphoto/refocus/RefocusManager;
    .param p5, "width"    # I
    .param p6, "height"    # I

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 66
    move/from16 v2, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTextureCood:[F

    .line 67
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    .line 68
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    .line 69
    iput v1, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    .line 70
    iput v2, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    .line 72
    iget v5, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    iget v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 73
    .local v5, "max":I
    const/16 v6, 0x7e0

    if-le v5, v6, :cond_1

    .line 74
    iget v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    iget v8, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    const/high16 v9, 0x44fc0000    # 2016.0f

    if-le v7, v8, :cond_0

    .line 75
    iput v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    .line 76
    iget v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    int-to-float v6, v6

    div-float/2addr v9, v6

    iget v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    goto :goto_0

    .line 78
    :cond_0
    iput v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    .line 79
    iget v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v9, v6

    iget v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    goto :goto_0

    .line 82
    :cond_1
    iput v1, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    .line 83
    iput v2, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    .line 87
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->initBuffer()V

    .line 88
    iget-object v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->getTotalFrame(I)I

    move-result v6

    iput v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTotalFrame:I

    .line 89
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mBufferSparseArray:Landroid/util/SparseArray;

    .line 90
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    .line 91
    new-instance v7, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    iget v8, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    iget v9, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    invoke-direct {v7, v8, v9}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;-><init>(II)V

    iput-object v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    .line 92
    new-instance v7, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;

    invoke-direct {v7}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;-><init>()V

    iput-object v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLTextureShader:Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;

    .line 93
    iget-object v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v7}, Lcom/miui/extraphoto/refocus/RefocusManager;->getImageOrientation()I

    move-result v7

    iput v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mOrientation:I

    .line 94
    iget-object v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTextureCood:[F

    iget v8, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mOrientation:I

    iget-object v9, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v9}, Lcom/miui/extraphoto/refocus/RefocusManager;->isMirror()Z

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->generateTextureCood([FIZ)V

    .line 96
    iget-object v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v7}, Lcom/miui/extraphoto/refocus/RefocusManager;->hasWaterMark()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    new-instance v7, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    iget-object v8, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v8}, Lcom/miui/extraphoto/refocus/RefocusManager;->getWaterMark()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v8, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v8}, Lcom/miui/extraphoto/refocus/RefocusManager;->getWaterMarkTime()Landroid/graphics/Bitmap;

    move-result-object v11

    iget v12, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    iget v13, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    iget-object v8, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v8}, Lcom/miui/extraphoto/refocus/RefocusManager;->getOriginWidth()I

    move-result v14

    iget-object v8, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v8}, Lcom/miui/extraphoto/refocus/RefocusManager;->getOriginHeight()I

    move-result v15

    iget v9, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mOrientation:I

    move-object v8, v7

    move/from16 v16, v9

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v16}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIII)V

    iput-object v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusWaterMarkPainter:Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    .line 98
    iget-object v7, v0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusWaterMarkPainter:Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    invoke-virtual {v7}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->generateWaterMarkTexture()V

    .line 100
    :cond_2
    return-void
.end method

.method private static computePresentationTime(II)J
    .locals 2
    .param p0, "frameIndex"    # I
    .param p1, "frameRate"    # I

    .line 339
    const v0, 0xf4240

    mul-int/2addr v0, p0

    div-int/2addr v0, p1

    const/16 v1, 0x84

    add-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0
.end method

.method private drainEncoder(ZLandroid/media/MediaCodec$BufferInfo;)V
    .locals 8
    .param p1, "endOfStream"    # Z
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 199
    const/16 v0, 0x2710

    .line 201
    .local v0, "TIMEOUT_USEC":I
    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RefocusVideoGenerator"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, p2, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 212
    .local v1, "encoderStatus":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 214
    if-nez p1, :cond_1

    .line 215
    goto/16 :goto_2

    .line 217
    :cond_1
    const-string v2, "RefocusVideoGenerator"

    const-string v3, "no output available, spinning to await EOS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 219
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .end local v1    # "encoderStatus":I
    goto/16 :goto_3

    .line 221
    .restart local v1    # "encoderStatus":I
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 222
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 223
    .local v2, "newFormat":Landroid/media/MediaFormat;
    const-string v3, "RefocusVideoGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoder output format changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTrackIndex:I

    .line 227
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 228
    .end local v2    # "newFormat":Landroid/media/MediaFormat;
    goto/16 :goto_3

    :cond_4
    if-gez v1, :cond_5

    .line 229
    const-string v2, "RefocusVideoGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 233
    :cond_5
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-static {v2, v1}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 234
    .local v2, "encodedData":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_a

    .line 239
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 243
    const-string v3, "RefocusVideoGenerator"

    const-string v5, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 247
    :cond_6
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_7

    .line 249
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 251
    const-string v3, "RefocusVideoGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BufferInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :try_start_1
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTrackIndex:I

    invoke-virtual {v3, v5, v2, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    goto :goto_1

    .line 258
    :catch_1
    move-exception v3

    .line 259
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "RefocusVideoGenerator"

    const-string v6, "Too many frames"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 265
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    .line 266
    if-nez p1, :cond_8

    .line 267
    const-string v3, "RefocusVideoGenerator"

    const-string v4, "reached end of stream unexpectedly"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 269
    :cond_8
    const-string v3, "RefocusVideoGenerator"

    const-string v4, "end of stream reached"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    nop

    .line 275
    .end local v1    # "encoderStatus":I
    .end local v2    # "encodedData":Ljava/nio/ByteBuffer;
    :goto_2
    return-void

    .line 274
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 235
    .restart local v1    # "encoderStatus":I
    .restart local v2    # "encodedData":Ljava/nio/ByteBuffer;
    :cond_a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoderOutputBuffer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " was null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private drawByYUV()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mYData:[B

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mUData:[B

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVData:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->configYUVData([B[B[B)V

    .line 182
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    sget-object v1, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->CUBE:[F

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTextureCood:[F

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->draw([F[F)V

    .line 183
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->drawWartMark()V

    .line 184
    return-void
.end method

.method private drawOnSurface()V
    .locals 10

    .line 141
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 142
    .local v0, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->makeCurrent()V

    .line 143
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 144
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 145
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 146
    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 148
    move v4, v3

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTotalFrame:I

    if-ge v4, v5, :cond_1

    .line 149
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 150
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 151
    invoke-direct {p0, v4}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->generateFrame(I)V

    .line 152
    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    const/16 v6, 0x1e

    invoke-static {v4, v6}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->computePresentationTime(II)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->setPresentationTime(J)V

    .line 153
    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v5}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->swapBuffers()Z

    .line 154
    iget v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTotalFrame:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    invoke-direct {p0, v6, v0}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->drainEncoder(ZLandroid/media/MediaCodec$BufferInfo;)V

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private drawWartMark()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusWaterMarkPainter:Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusWaterMarkPainter:Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLTextureShader:Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->glDrawWaterMark(Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;)V

    .line 190
    :cond_0
    return-void
.end method

.method private generateFrame(I)V
    .locals 8
    .param p1, "generateIndex"    # I

    .line 159
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    instance-of v0, v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    check-cast v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;

    .line 161
    .local v0, "refocusEffectBasic":Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTotalFrame:I

    invoke-static {p1, v1}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->getCurrentProgress(II)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->getBokehSizeByProgress(F)I

    move-result v1

    .line 162
    .local v1, "size":I
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mBufferSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;

    .line 163
    .local v2, "glfboManager":Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;
    if-nez v2, :cond_0

    .line 164
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    invoke-virtual {v3, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->enableEffectByProgress(Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;I)V

    .line 165
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mYData:[B

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mUData:[B

    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVData:[B

    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult([B[B[B)V

    .line 166
    new-instance v3, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    iget v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    iget v6, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    iget v7, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;-><init>(IIII)V

    move-object v2, v3

    .line 167
    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;->bind()V

    .line 168
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->drawByYUV()V

    .line 169
    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;->unBind()V

    .line 170
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mBufferSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLTextureShader:Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;->getTextureId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->drawFBO(I)V

    .line 173
    .end local v0    # "refocusEffectBasic":Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;
    .end local v1    # "size":I
    .end local v2    # "glfboManager":Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;
    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusEffect:Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTotalFrame:I

    invoke-static {p1, v2}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->getCurrentProgress(II)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/RefocusManager;->enableEffectByProgress(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;F)V

    .line 175
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusManager:Lcom/miui/extraphoto/refocus/RefocusManager;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mYData:[B

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mUData:[B

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVData:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult([B[B[B)V

    .line 176
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->drawByYUV()V

    .line 178
    :goto_0
    return-void
.end method

.method private static generateTextureCood([FIZ)V
    .locals 3
    .param p0, "dst"    # [F
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .line 329
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    if-eqz p2, :cond_0

    .line 331
    invoke-static {p0, p1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->textureCoodMirror([FI)V

    .line 333
    :cond_0
    return-void
.end method

.method private static getCurrentProgress(II)F
    .locals 2
    .param p0, "currentFrame"    # I
    .param p1, "totalFrame"    # I

    .line 343
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private static getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p1, "index"    # I

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 311
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 313
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, p1

    .line 315
    .restart local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0
.end method

.method private static getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p1, "index"    # I

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 323
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, p1

    .line 325
    .restart local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0
.end method

.method private initBuffer()V
    .locals 3

    .line 103
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mWidth:I

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mHeight:I

    mul-int/2addr v0, v1

    .line 104
    .local v0, "ySize":I
    div-int/lit8 v1, v0, 0x4

    .line 105
    .local v1, "uvSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mYData:[B

    .line 106
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mUData:[B

    .line 107
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVData:[B

    .line 108
    return-void
.end method

.method private prepareEncoder(Ljava/lang/String;)V
    .locals 6
    .param p1, "outPath"    # Ljava/lang/String;

    .line 118
    :try_start_0
    const-string v0, "video/avc"

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 119
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    const-string v1, "bitrate"

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoWidth:I

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mVideoHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 121
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 122
    const-string v1, "i-frame-interval"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 124
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    .line 125
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 126
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputSurface:Landroid/view/Surface;

    .line 127
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 128
    new-instance v1, Landroid/media/MediaMuxer;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 129
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mOrientation:I

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusManager;->getDegreeByOrientation(I)I

    move-result v1

    .line 130
    .local v1, "orientation":I
    rem-int/lit16 v3, v1, 0x168

    move v1, v3

    .line 131
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 132
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mTrackIndex:I

    .line 134
    new-instance v3, Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEglCore:Lcom/miui/extraphoto/refocus/gles/EglCore;

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputSurface:Landroid/view/Surface;

    invoke-direct {v3, v4, v5, v2}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;-><init>(Lcom/miui/extraphoto/refocus/gles/EglCore;Landroid/view/Surface;Z)V

    iput-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "orientation":I
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private release()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 280
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 281
    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mEncoder:Landroid/media/MediaCodec;

    .line 282
    const-string v0, "RefocusVideoGenerator"

    const-string v2, "RELEASE CODEC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 286
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 287
    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 288
    const-string v0, "RefocusVideoGenerator"

    const-string v1, "RELEASE MUXER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusWaterMarkPainter:Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mRefocusWaterMarkPainter:Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->release()V

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLYUVShader:Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLYUVShader;->destroy()V

    .line 294
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mGLTextureShader:Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->destroy()V

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mBufferSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mBufferSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 297
    .local v1, "key":I
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mBufferSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;

    .line 298
    .local v2, "glfboManager":Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;
    if-eqz v2, :cond_3

    .line 299
    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;->clear()V

    .line 295
    .end local v1    # "key":I
    .end local v2    # "glfboManager":Lcom/miui/extraphoto/refocus/gles/shader/GLFBOManager;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mBufferSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 303
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->mInputWindowSurface:Lcom/miui/extraphoto/refocus/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/gles/WindowSurface;->release()V

    .line 306
    :cond_5
    return-void
.end method


# virtual methods
.method public generateVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "outPath"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->prepareEncoder(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->drawOnSurface()V

    .line 113
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusVideoGenerator;->release()V

    .line 114
    return-void
.end method
