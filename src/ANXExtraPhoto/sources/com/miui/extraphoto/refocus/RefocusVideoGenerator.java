package com.miui.extraphoto.refocus;

import android.content.res.Resources;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.opengl.GLES20;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import com.miui.extraphoto.refocus.effect.RefocusEffect;
import com.miui.extraphoto.refocus.effect.RefocusEffectBasic;
import com.miui.extraphoto.refocus.gles.EglCore;
import com.miui.extraphoto.refocus.gles.WindowSurface;
import com.miui.extraphoto.refocus.gles.shader.GLDisplayParameter;
import com.miui.extraphoto.refocus.gles.shader.GLFBOManager;
import com.miui.extraphoto.refocus.gles.shader.GLTextureShader;
import com.miui.extraphoto.refocus.gles.shader.GLYUVShader;
import java.io.IOException;
import java.nio.ByteBuffer;

class RefocusVideoGenerator {
    private static final int FRAME_RATE = 30;
    private static final float I_FRAME_INTERVAL = 1.0f;
    private static final int MAX_VIDEO_SIZE = 2016;
    private static final String MIME_TYPE = "video/avc";
    private static final String TAG = "RefocusVideoGenerator";
    private SparseArray<GLFBOManager> mBufferSparseArray;
    private EglCore mEglCore;
    private MediaCodec mEncoder;
    private GLTextureShader mGLTextureShader;
    private GLYUVShader mGLYUVShader;
    private final int mHeight;
    private Surface mInputSurface;
    private WindowSurface mInputWindowSurface;
    private final int mOrientation;
    private final RefocusEffect mRefocusEffect;
    private final RefocusManager mRefocusManager;
    private RefocusWaterMarkPainter mRefocusWaterMarkPainter;
    private float[] mTextureCood = new float[8];
    private final int mTotalFrame;
    private int mTrackIndex;
    private byte[] mUData;
    private byte[] mVData;
    private final int mVideoHeight;
    private final int mVideoWidth;
    private final int mWidth;
    private byte[] mYData;
    private MediaMuxer mediaMuxer;

    RefocusVideoGenerator(Resources resources, EglCore eglCore, RefocusEffect refocusEffect, RefocusManager refocusManager, int width, int height) {
        int i = width;
        int i2 = height;
        this.mRefocusEffect = refocusEffect;
        this.mRefocusManager = refocusManager;
        this.mWidth = i;
        this.mHeight = i2;
        if (Math.max(this.mWidth, this.mHeight) <= MAX_VIDEO_SIZE) {
            this.mVideoWidth = i;
            this.mVideoHeight = i2;
        } else if (this.mWidth > this.mHeight) {
            this.mVideoWidth = MAX_VIDEO_SIZE;
            this.mVideoHeight = Math.round((2016.0f / ((float) this.mWidth)) * ((float) this.mHeight));
        } else {
            this.mVideoHeight = MAX_VIDEO_SIZE;
            this.mVideoWidth = Math.round((2016.0f / ((float) this.mHeight)) * ((float) this.mWidth));
        }
        initBuffer();
        this.mTotalFrame = this.mRefocusEffect.getTotalFrame(FRAME_RATE);
        this.mBufferSparseArray = new SparseArray();
        this.mEglCore = eglCore;
        this.mGLYUVShader = new GLYUVShader(this.mWidth, this.mHeight);
        this.mGLTextureShader = new GLTextureShader();
        this.mOrientation = this.mRefocusManager.getImageOrientation();
        generateTextureCood(this.mTextureCood, this.mOrientation, this.mRefocusManager.isMirror());
        if (this.mRefocusManager.hasWaterMark()) {
            this.mRefocusWaterMarkPainter = new RefocusWaterMarkPainter(resources, this.mRefocusManager.getWaterMark(), this.mRefocusManager.getWaterMarkTime(), this.mWidth, this.mHeight, this.mRefocusManager.getOriginWidth(), this.mRefocusManager.getOriginHeight(), this.mOrientation);
            this.mRefocusWaterMarkPainter.generateWaterMarkTexture();
        }
    }

    private void initBuffer() {
        int ySize = this.mWidth * this.mHeight;
        int uvSize = ySize / 4;
        this.mYData = new byte[ySize];
        this.mUData = new byte[uvSize];
        this.mVData = new byte[uvSize];
    }

    public void generateVideo(String outPath) {
        prepareEncoder(outPath);
        drawOnSurface();
        release();
    }

    private void prepareEncoder(String outPath) {
        try {
            MediaFormat format = MediaFormat.createVideoFormat(MIME_TYPE, this.mVideoWidth, this.mVideoHeight);
            format.setInteger("color-format", 2130708361);
            format.setInteger("bitrate", (this.mVideoWidth * this.mVideoHeight) * 5);
            format.setInteger("frame-rate", FRAME_RATE);
            format.setFloat("i-frame-interval", 1.0f);
            this.mEncoder = MediaCodec.createEncoderByType(MIME_TYPE);
            this.mEncoder.configure(format, null, null, 1);
            this.mInputSurface = this.mEncoder.createInputSurface();
            this.mEncoder.start();
            this.mediaMuxer = new MediaMuxer(outPath, 0);
            this.mediaMuxer.setOrientationHint(RefocusManager.getDegreeByOrientation(this.mOrientation) % 360);
            this.mTrackIndex = -1;
            this.mInputWindowSurface = new WindowSurface(this.mEglCore, this.mInputSurface, true);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void drawOnSurface() {
        BufferInfo info = new BufferInfo();
        this.mInputWindowSurface.makeCurrent();
        GLES20.glViewport(0, 0, this.mVideoWidth, this.mVideoHeight);
        GLES20.glDisable(2929);
        GLES20.glClear(16640);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        for (int i = 0; i < this.mTotalFrame; i++) {
            GLES20.glClear(16640);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            generateFrame(i);
            this.mInputWindowSurface.setPresentationTime(computePresentationTime(i, FRAME_RATE) * 1000);
            this.mInputWindowSurface.swapBuffers();
            boolean z = true;
            if (i != this.mTotalFrame - 1) {
                z = false;
            }
            drainEncoder(z, info);
        }
    }

    private void generateFrame(int generateIndex) {
        if (this.mRefocusEffect instanceof RefocusEffectBasic) {
            RefocusEffectBasic refocusEffectBasic = this.mRefocusEffect;
            int size = refocusEffectBasic.getBokehSizeByProgress(getCurrentProgress(generateIndex, this.mTotalFrame));
            GLFBOManager glfboManager = (GLFBOManager) this.mBufferSparseArray.get(size);
            if (glfboManager == null) {
                this.mRefocusManager.enableEffectByProgress(refocusEffectBasic, size);
                this.mRefocusManager.configSingleYUVByResult(this.mYData, this.mUData, this.mVData);
                glfboManager = new GLFBOManager(this.mVideoWidth, this.mVideoHeight, this.mVideoWidth, this.mVideoHeight);
                glfboManager.bind();
                drawByYUV();
                glfboManager.unBind();
                this.mBufferSparseArray.put(size, glfboManager);
            }
            this.mGLTextureShader.drawFBO(glfboManager.getTextureId());
            return;
        }
        this.mRefocusManager.enableEffectByProgress(this.mRefocusEffect, getCurrentProgress(generateIndex, this.mTotalFrame));
        this.mRefocusManager.configSingleYUVByResult(this.mYData, this.mUData, this.mVData);
        drawByYUV();
    }

    private void drawByYUV() {
        this.mGLYUVShader.configYUVData(this.mYData, this.mUData, this.mVData);
        this.mGLYUVShader.draw(GLTextureShader.CUBE, this.mTextureCood);
        drawWartMark();
    }

    private void drawWartMark() {
        if (this.mRefocusWaterMarkPainter != null) {
            this.mRefocusWaterMarkPainter.glDrawWaterMark(this.mGLTextureShader);
        }
    }

    private void drainEncoder(boolean endOfStream, BufferInfo bufferInfo) {
        if (endOfStream) {
            try {
                this.mEncoder.signalEndOfInputStream();
            } catch (Exception e) {
                Log.e(TAG, "", e);
            }
        }
        while (true) {
            int encoderStatus = this.mEncoder.dequeueOutputBuffer(bufferInfo, 10000);
            String str;
            StringBuilder stringBuilder;
            if (encoderStatus == -1) {
                if (endOfStream) {
                    Log.i(TAG, "no output available, spinning to await EOS");
                } else {
                    return;
                }
            } else if (encoderStatus == -3) {
                continue;
            } else if (encoderStatus == -2) {
                MediaFormat newFormat = this.mEncoder.getOutputFormat();
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("encoder output format changed: ");
                stringBuilder.append(newFormat);
                Log.i(str, stringBuilder.toString());
                this.mTrackIndex = this.mediaMuxer.addTrack(newFormat);
                this.mediaMuxer.start();
            } else if (encoderStatus < 0) {
                String str2 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("unexpected result from encoder.dequeueOutputBuffer: ");
                stringBuilder2.append(encoderStatus);
                Log.i(str2, stringBuilder2.toString());
            } else {
                ByteBuffer encodedData = getOutputBuffer(this.mEncoder, encoderStatus);
                if (encodedData != null) {
                    if ((bufferInfo.flags & 2) != 0) {
                        Log.d(TAG, "ignoring BUFFER_FLAG_CODEC_CONFIG");
                        bufferInfo.size = 0;
                    }
                    if (bufferInfo.size != 0) {
                        encodedData.position(bufferInfo.offset);
                        encodedData.limit(bufferInfo.offset + bufferInfo.size);
                        str = TAG;
                        StringBuilder stringBuilder3 = new StringBuilder();
                        stringBuilder3.append("BufferInfo: ");
                        stringBuilder3.append(bufferInfo.offset);
                        stringBuilder3.append(",");
                        stringBuilder3.append(bufferInfo.size);
                        stringBuilder3.append(",");
                        stringBuilder3.append(bufferInfo.presentationTimeUs);
                        Log.d(str, stringBuilder3.toString());
                        try {
                            this.mediaMuxer.writeSampleData(this.mTrackIndex, encodedData, bufferInfo);
                        } catch (Exception e2) {
                            Log.i(TAG, "Too many frames");
                        }
                    }
                    this.mEncoder.releaseOutputBuffer(encoderStatus, false);
                    if ((bufferInfo.flags & 4) != 0) {
                        if (endOfStream) {
                            Log.i(TAG, "end of stream reached");
                            return;
                        } else {
                            Log.i(TAG, "reached end of stream unexpectedly");
                            return;
                        }
                    }
                } else {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("encoderOutputBuffer ");
                    stringBuilder.append(encoderStatus);
                    stringBuilder.append(" was null");
                    throw new RuntimeException(stringBuilder.toString());
                }
            }
        }
    }

    private void release() {
        if (this.mEncoder != null) {
            this.mEncoder.stop();
            this.mEncoder.release();
            this.mEncoder = null;
            Log.d(TAG, "RELEASE CODEC");
        }
        if (this.mediaMuxer != null) {
            this.mediaMuxer.stop();
            this.mediaMuxer.release();
            this.mediaMuxer = null;
            Log.d(TAG, "RELEASE MUXER");
        }
        if (this.mRefocusWaterMarkPainter != null) {
            this.mRefocusWaterMarkPainter.release();
        }
        this.mGLYUVShader.destroy();
        this.mGLTextureShader.destroy();
        for (int i = 0; i < this.mBufferSparseArray.size(); i++) {
            GLFBOManager glfboManager = (GLFBOManager) this.mBufferSparseArray.get(this.mBufferSparseArray.keyAt(i));
            if (glfboManager != null) {
                glfboManager.clear();
            }
        }
        this.mBufferSparseArray.clear();
        if (this.mInputWindowSurface != null) {
            this.mInputWindowSurface.release();
        }
    }

    private static ByteBuffer getInputBuffer(MediaCodec mediaCodec, int index) {
        if (VERSION.SDK_INT >= 21) {
            return mediaCodec.getInputBuffer(index);
        }
        return mediaCodec.getInputBuffers()[index];
    }

    private static ByteBuffer getOutputBuffer(MediaCodec mediaCodec, int index) {
        if (VERSION.SDK_INT >= 21) {
            return mediaCodec.getOutputBuffer(index);
        }
        return mediaCodec.getOutputBuffers()[index];
    }

    private static void generateTextureCood(float[] dst, int orientation, boolean mirror) {
        System.arraycopy(GLTextureShader.TEXTURE_NO_ROTATION, 0, dst, 0, dst.length);
        if (mirror) {
            GLDisplayParameter.textureCoodMirror(dst, orientation);
        }
    }

    private static long computePresentationTime(int frameIndex, int frameRate) {
        return (long) (132 + ((1000000 * frameIndex) / frameRate));
    }

    private static float getCurrentProgress(int currentFrame, int totalFrame) {
        return ((float) currentFrame) / ((float) totalFrame);
    }
}
