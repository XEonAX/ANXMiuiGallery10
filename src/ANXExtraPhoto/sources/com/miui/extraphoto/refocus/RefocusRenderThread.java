package com.miui.extraphoto.refocus;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;
import android.view.SurfaceHolder;
import com.miui.extraphoto.refocus.RefocusEffectManager.RefocusEffectConfig;
import com.miui.extraphoto.refocus.effect.RefocusEffect;
import com.miui.extraphoto.refocus.effect.RefocusEffectType;
import com.miui.extraphoto.refocus.effect.RelightingEffect;
import com.miui.extraphoto.refocus.gles.RenderThread;
import com.miui.extraphoto.refocus.gles.shader.GLDisplayParameter;
import com.miui.extraphoto.refocus.gles.shader.GLYUVShader;
import com.miui.gallery3d.exif.ExifInterface;
import com.miui.gallery3d.exif.ExifTag;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

class RefocusRenderThread extends RenderThread implements FrameCallback {
    public static final int MSG_ADJUST_STATIC = 101;
    public static final int MSG_CHANGE_EFFECT_TO_RELIGHTING = 108;
    public static final int MSG_CHANGE_EFFECT_TO_STATIC = 107;
    public static final int MSG_CHANGE_EFFECT_TO_VIDEO = 106;
    public static final int MSG_INIT = 100;
    public static final int MSG_MOTION_EVENT_SINGLE_TOUCH_UP = 110;
    public static final int MSG_PAUSE_VIDEO = 105;
    public static final int MSG_PLAY_VIDEO = 103;
    public static final int MSG_RELIGHTING_SOURCE = 111;
    public static final int MSG_SAVE_IMAGE = 112;
    public static final int MSG_SAVE_VIDEO = 113;
    public static final int MSG_SEND_REFRESH = 109;
    public static final int MSG_STOP_PLAY_VIDEO = 104;
    private static final String SAVE_TYPE_IMAGE = "image";
    private static final String SAVE_TYPE_RELIGHT = "relighting";
    private static final String SAVE_TYPE_VIDEO = "video";
    private static final String SAVE_TYPE_VIDEO_IMAGE = "video_to_image";
    private static final String TAG = "RefocusRenderThread";
    private int mBitmapHeight;
    private int mBitmapWidth;
    private Callback mCallback;
    private final Context mContext;
    private RefocusEffect mCurrentEffect;
    private int[] mFacePoint = new int[3];
    private float[] mFacePointOnView = new float[2];
    private GLDisplayParameter mGLDisplayParameter;
    private GLYUVShader mGLYUVShader;
    private Handler mHandler;
    private boolean mIsPlaying = false;
    private Handler mMainHandler;
    private Matrix mMatrix = new Matrix();
    private boolean mMirror;
    private int mOrientation;
    private String mPath;
    private final float[] mPoint = new float[2];
    private RefocusManager mRefocusManager;
    private long mStartTimeNanos;
    private boolean mSurfaceChanged = false;
    private boolean mSurfaceReady = false;

    interface Callback {
        void onDecodeError();

        void onInitFinish(Bitmap bitmap, int i, ImageExif imageExif);

        void onLoading();

        void onLoadingEnd();

        void onPreviewUpdate(Bitmap bitmap);

        void onRelightingEffect();

        void onSave(Bitmap bitmap, String str, boolean z, String str2, String str3);

        void onSaveCancel();

        void onSaveStatusChange(boolean z);

        void onSurfaceChanged();

        void onSurfaceReady();
    }

    /* renamed from: com.miui.extraphoto.refocus.RefocusRenderThread$13 */
    static /* synthetic */ class AnonymousClass13 {
        static final /* synthetic */ int[] $SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType = new int[RefocusEffectType.values().length];

        static {
            try {
                $SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType[RefocusEffectType.BASIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    private static class StaticAdjust {
        public final boolean adjust;
        public final float progress;
        public final RefocusEffectConfig refocusEffectConfig;

        /* synthetic */ StaticAdjust(RefocusEffectConfig x0, float x1, boolean x2, AnonymousClass1 x3) {
            this(x0, x1, x2);
        }

        private StaticAdjust(RefocusEffectConfig refocusEffectConfig, float progress, boolean adjust) {
            this.refocusEffectConfig = refocusEffectConfig;
            this.progress = progress;
            this.adjust = adjust;
        }
    }

    RefocusRenderThread(String path, Context context, Callback callback) {
        this.mCallback = callback;
        this.mPath = path;
        this.mContext = context;
        this.mMainHandler = new Handler(Looper.getMainLooper());
        init();
    }

    private void init() {
        this.mRefocusManager = new RefocusManager(this.mContext, this.mPath);
        start();
        waitUntilReady();
        this.mHandler = getHandler();
    }

    public void handleMessage(Message msg) {
        switch (msg.what) {
            case MSG_INIT /*100*/:
                refocusInit();
                return;
            case MSG_ADJUST_STATIC /*101*/:
                stopPlayVideo();
                adjustStatic(((Float) msg.obj).floatValue());
                return;
            case MSG_PLAY_VIDEO /*103*/:
                playVideo();
                return;
            case MSG_STOP_PLAY_VIDEO /*104*/:
                stopPlayVideo();
                return;
            case MSG_PAUSE_VIDEO /*105*/:
                pauseVideo();
                return;
            case MSG_CHANGE_EFFECT_TO_VIDEO /*106*/:
                changeEffectToVideo((RefocusEffectConfig) msg.obj);
                return;
            case MSG_CHANGE_EFFECT_TO_STATIC /*107*/:
                changeEffectToStatic((StaticAdjust) msg.obj);
                return;
            case MSG_CHANGE_EFFECT_TO_RELIGHTING /*108*/:
                changeEffectToRelighting((RefocusEffectConfig) msg.obj);
                return;
            case MSG_SEND_REFRESH /*109*/:
                refreshDisplay();
                return;
            case MSG_MOTION_EVENT_SINGLE_TOUCH_UP /*110*/:
                onSingleTouchUp(msg.arg1, msg.arg2);
                return;
            case MSG_RELIGHTING_SOURCE /*111*/:
                setRelightingSource(msg.arg1, msg.arg2);
                return;
            case MSG_SAVE_IMAGE /*112*/:
                String str = (String) msg.obj;
                boolean z = true;
                if (msg.arg1 != 1) {
                    z = false;
                }
                saveImage(str, z);
                return;
            case MSG_SAVE_VIDEO /*113*/:
                saveVideo((String) msg.obj);
                return;
            default:
                return;
        }
    }

    protected void releaseGl() {
        super.releaseGl();
        onThreadExit();
    }

    protected void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        super.onSurfaceCreated(surfaceHolder);
        this.mSurfaceChanged = false;
    }

    protected void onSurfaceChanged(int width, int height) {
        super.onSurfaceChanged(width, height);
        if (!this.mSurfaceChanged) {
            this.mGLDisplayParameter = new GLDisplayParameter(this.mBitmapWidth, this.mBitmapHeight, width, height, this.mOrientation, this.mMirror);
            this.mGLYUVShader = new GLYUVShader(this.mBitmapWidth, this.mBitmapHeight);
            if (this.mSurfaceReady) {
                updateDisplay();
            }
            notifySurfaceChanged();
            this.mSurfaceChanged = true;
        }
    }

    private void refocusInit() {
        this.mRefocusManager.init(new InitListener() {
            public void onPreviewDecode(Bitmap bitmap, int orientation, ImageExif imageExif) {
                RefocusRenderThread.this.mBitmapWidth = bitmap.getWidth();
                RefocusRenderThread.this.mBitmapHeight = bitmap.getHeight();
                RefocusRenderThread.this.mOrientation = orientation;
                RefocusRenderThread.this.mMirror = imageExif.mirror;
                RefocusRenderThread.this.notifyInitFinish(bitmap, orientation, imageExif);
            }

            public void onDecodeError() {
                RefocusRenderThread.this.notifyDecodeError();
            }
        });
    }

    public void updateDisplay() {
        drawYUVData();
    }

    private void refreshDisplay() {
        if (isPlaying()) {
            playVideo();
        } else {
            drawYUVData();
        }
    }

    private void drawYUVData() {
        long a = System.currentTimeMillis();
        GLES20.glClear(16640);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        this.mGLYUVShader.configYUVData(this.mRefocusManager.getYData(), this.mRefocusManager.getUData(), this.mRefocusManager.getVData());
        long b = System.currentTimeMillis();
        Log.d(TAG, String.format("config yuv coast %d", new Object[]{Long.valueOf(b - a)}));
        this.mGLYUVShader.draw(this.mGLDisplayParameter.getGLPosition(), this.mGLDisplayParameter.getRotation());
        updateSurface();
        b = System.currentTimeMillis();
        Log.d(TAG, String.format("draw yuv coast %d", new Object[]{Long.valueOf(b - a)}));
        if (!this.mSurfaceReady) {
            notifySurfaceReady();
            this.mSurfaceReady = true;
        }
    }

    private void adjustStatic(float progress) {
        if (this.mCurrentEffect != null) {
            this.mRefocusManager.adjustForDisplay(progress, this.mCurrentEffect);
            drawYUVData();
        }
    }

    private void refocus(int x, int y) {
        stopPlayVideo();
        this.mRefocusManager.refocus(x, y);
        updateDisplay();
    }

    private void onSingleTouchUp(int x, int y) {
        this.mPoint[0] = (float) x;
        this.mPoint[1] = (float) y;
        this.mGLDisplayParameter.getPointOnBitmap(this.mPoint);
        if (this.mCurrentEffect != null && AnonymousClass13.$SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType[this.mCurrentEffect.type.ordinal()] == 1) {
            refocus(Math.round(this.mPoint[0]), Math.round(this.mPoint[1]));
        }
    }

    private void setRelightingSource(int x, int y) {
        this.mPoint[0] = (float) x;
        this.mPoint[1] = (float) y;
        this.mGLDisplayParameter.getPointOnBitmap(this.mPoint);
        if (isRelightingHasFace()) {
            this.mRefocusManager.setRelightingLightSource((float) Math.round(this.mPoint[0]), (float) Math.round(this.mPoint[1]));
            this.mRefocusManager.configSingleYUVByResult();
            updateDisplay();
        }
    }

    private void playVideo() {
        Choreographer.getInstance().removeFrameCallback(this);
        if (this.mCurrentEffect != null) {
            this.mStartTimeNanos = -1;
            this.mIsPlaying = true;
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    private void stopPlayVideo() {
        Choreographer.getInstance().removeFrameCallback(this);
        this.mIsPlaying = false;
    }

    private void pauseVideo() {
        Choreographer.getInstance().removeFrameCallback(this);
    }

    private void saveImage(String outPath, boolean adjustToSuggest) {
        String str = outPath;
        stopPlayVideo();
        notifyPreviewUpdate(getPreviewBitmap(getCurrentDisplayBitmap()));
        if (this.mCurrentEffect == null) {
            notifySaveCancel();
            return;
        }
        File outFile = new File(str);
        if (outFile.exists()) {
            outFile.delete();
        }
        if (adjustToSuggest) {
            Options options = new Options();
            options.inSampleSize = 2;
            options.inMutable = true;
            Bitmap bitmap = this.mRefocusManager.decodeOriginBitmap(options);
            if (bitmap == null) {
                notifySaveCancel();
                return;
            }
            Bitmap bitmap2 = RefocusUtils.getBitmapForYUV(bitmap);
            this.mRefocusManager.resetData(bitmap2, 2);
            this.mCurrentEffect.multiplyCoefficient(2);
            this.mRefocusManager.configProcessQuality(0);
            this.mRefocusManager.initEffect(this.mCurrentEffect);
            this.mRefocusManager.enableEffectByProgress(this.mCurrentEffect, this.mCurrentEffect.getSuggestImageProgress());
            this.mRefocusManager.configBitmapByResult(bitmap2);
            saveDisplayImageToFile(bitmap2, str);
            notifySaveFinish(getPreviewBitmap(bitmap2), str, false, SAVE_TYPE_VIDEO_IMAGE, this.mCurrentEffect.name);
        } else {
            byte[] data = this.mRefocusManager.readOriginBytes();
            Options options2 = new Options();
            options2.inMutable = true;
            Bitmap bitmap3 = this.mRefocusManager.decodeOriginBitmap(data, options2);
            if (bitmap3 == null) {
                notifySaveCancel();
                return;
            }
            Bitmap bitmap4 = RefocusUtils.getBitmapForYUV(bitmap3);
            if (this.mCurrentEffect.type != RefocusEffectType.RELIGHTING) {
                this.mRefocusManager.resetData(bitmap4, 4);
                this.mRefocusManager.reprocess();
            } else if (((RelightingEffect) this.mCurrentEffect).hasFace()) {
                this.mRefocusManager.resetData(bitmap4, 4);
                this.mRefocusManager.setRelightingLightSource((float) this.mRefocusManager.getUserRelightingSourceX(), (float) this.mRefocusManager.getUserRelightingSourceY(), true);
            } else {
                notifySaveCancel();
                return;
            }
            this.mRefocusManager.configBitmapByResult(bitmap4);
            saveDisplayImageToFile(bitmap4, str);
            int size = this.mRefocusManager.getCurrentBokehSize();
            if (this.mCurrentEffect.type == RefocusEffectType.RELIGHTING) {
                notifySaveFinish(getPreviewBitmap(bitmap4), str, false, SAVE_TYPE_RELIGHT, this.mCurrentEffect.name);
            } else {
                notifySaveFinish(getPreviewBitmap(bitmap4), str, false, SAVE_TYPE_IMAGE, String.valueOf(size));
            }
        }
    }

    private void saveDisplayImageToFile(Bitmap bitmap, String outPath) {
        Bitmap newBitmap;
        if (this.mMirror) {
            Matrix matrix = new Matrix();
            if (GLDisplayParameter.isVerticalMirror(this.mOrientation)) {
                matrix.preScale(1.0f, -1.0f);
            } else {
                matrix.preScale(-1.0f, 1.0f);
            }
            newBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } else {
            newBitmap = bitmap;
        }
        if (this.mRefocusManager.hasWaterMark()) {
            Log.d(TAG, "hasWaterMark");
            RefocusWaterMarkPainter refocusWaterMarkPainter = new RefocusWaterMarkPainter(this.mContext.getResources(), this.mRefocusManager.getWaterMark(), this.mRefocusManager.getWaterMarkTime(), newBitmap.getWidth(), newBitmap.getHeight(), this.mRefocusManager.getOriginWidth(), this.mRefocusManager.getOriginHeight(), this.mRefocusManager.getImageOrientation());
            refocusWaterMarkPainter.canvasDrawWaterMark(newBitmap);
            refocusWaterMarkPainter.release();
        }
        OutputStream fileOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(new File(outPath));
            ExifInterface exifInterface = new ExifInterface();
            List<ExifTag> exifTags = this.mRefocusManager.getOriginExifTags();
            if (exifTags != null) {
                for (ExifTag tag : exifTags) {
                    short tagId = tag.getTagId();
                    if (tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_IMAGE_WIDTH) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_IMAGE_LENGTH) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_XIAOMI_COMMENT) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_USER_COMMENT) || tagId == RefocusUtils.EXIF_FOCUS_POINT) {
                        Log.d(TAG, "skip user comment");
                    } else {
                        exifInterface.setTag(tag);
                    }
                }
            }
            fileOutputStream = exifInterface.getExifWriterStream(fileOutputStream);
            newBitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Throwable th) {
            RefocusIOUtils.close(TAG, null);
        }
        RefocusIOUtils.close(TAG, fileOutputStream);
    }

    private Bitmap getCurrentDisplayBitmap() {
        Bitmap bitmap = Bitmap.createBitmap(this.mRefocusManager.getProcessWidth(), this.mRefocusManager.getProcessHeight(), Config.ARGB_8888);
        this.mRefocusManager.configBitmapByResult(bitmap);
        return bitmap;
    }

    private Bitmap getPreviewBitmap(Bitmap bitmap) {
        int processWidth = this.mRefocusManager.getProcessWidth();
        int processHeight = this.mRefocusManager.getProcessHeight();
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight()), new RectF(0.0f, 0.0f, (float) processWidth, (float) processHeight), ScaleToFit.FILL);
        matrix.postRotate((float) RefocusManager.getDegreeByOrientation(this.mRefocusManager.getImageOrientation()));
        if (this.mMirror) {
            matrix.postScale(-1.0f, 1.0f);
        }
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private void saveVideo(String outPath) {
        stopPlayVideo();
        notifyPreviewUpdate(getPreviewBitmap(getCurrentDisplayBitmap()));
        if (this.mCurrentEffect == null) {
            notifySaveCancel();
            return;
        }
        Options options = new Options();
        options.inSampleSize = 2;
        Bitmap bitmap = this.mRefocusManager.decodeOriginBitmap(options);
        if (bitmap == null) {
            notifySaveCancel();
            return;
        }
        this.mRefocusManager.onPreviewVideo();
        this.mRefocusManager.resetData(bitmap, 2);
        this.mCurrentEffect.multiplyCoefficient(2);
        this.mRefocusManager.initEffect(this.mCurrentEffect);
        this.mRefocusManager.enableEffectByProgress(this.mCurrentEffect, 0.0f);
        Bitmap preview = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        this.mRefocusManager.configBitmapByResult(preview);
        RefocusVideoGenerator refocusVideoGenerator = new RefocusVideoGenerator(this.mContext.getResources(), getEglCore(), this.mCurrentEffect, this.mRefocusManager, bitmap.getWidth(), bitmap.getHeight());
        bitmap.recycle();
        File origin = new File(outPath);
        File temp = RefocusUtils.getTempPath(origin);
        refocusVideoGenerator.generateVideo(temp.getAbsolutePath());
        makeCurrent();
        temp.renameTo(origin);
        notifySaveFinish(getPreviewBitmap(preview), outPath, true, SAVE_TYPE_VIDEO, this.mCurrentEffect.name);
    }

    private void changeEffectToRelighting(RefocusEffectConfig refocusEffectConfig) {
        stopPlayVideo();
        this.mRefocusManager.onPreviewVideo();
        changeEffect(refocusEffectConfig);
        boolean needToast = false;
        if (this.mCurrentEffect instanceof RelightingEffect) {
            if (((RelightingEffect) this.mCurrentEffect).hasFace()) {
                ((RelightingEffect) this.mCurrentEffect).getFacePoint(this.mFacePoint);
                this.mFacePointOnView[0] = (float) this.mFacePoint[0];
                this.mFacePointOnView[1] = (float) this.mFacePoint[1];
                this.mGLDisplayParameter.getPointOnView(this.mFacePointOnView);
                this.mRefocusManager.getRelightingLightSource(this.mPoint);
                this.mGLDisplayParameter.getPointOnView(this.mPoint);
                this.mRefocusManager.setUserRelightingSourceOnView(this.mPoint[0], this.mPoint[1]);
                notifySaveStatusChange(true);
                needToast = true;
            } else {
                notifySaveStatusChange(false);
                ((RelightingEffect) this.mCurrentEffect).makeErrorToast(this.mContext);
            }
        }
        this.mRefocusManager.configSingleYUVByResult();
        updateDisplay();
        if (needToast) {
            notifyRelightingEffect();
        }
    }

    private void changeEffectToVideo(RefocusEffectConfig refocusEffectConfig) {
        this.mRefocusManager.onPreviewVideo();
        changeEffect(refocusEffectConfig);
        playVideo();
    }

    private void changeEffectToStatic(StaticAdjust staticAdjust) {
        stopPlayVideo();
        changeEffect(staticAdjust.refocusEffectConfig);
        if (staticAdjust.adjust) {
            this.mRefocusManager.onAdjustToStatic();
            adjustStatic(staticAdjust.progress);
        }
    }

    private void changeEffect(RefocusEffectConfig refocusEffectConfig) {
        this.mRefocusManager.destroyEffect(this.mCurrentEffect);
        this.mCurrentEffect = refocusEffectConfig.generateEffect();
        if (this.mCurrentEffect != null) {
            if (this.mCurrentEffect instanceof RelightingEffect) {
                notifyLoading();
            }
            this.mRefocusManager.initEffect(this.mCurrentEffect);
            if (this.mCurrentEffect instanceof RelightingEffect) {
                notifyLoadingEnd();
                return;
            }
            return;
        }
        this.mRefocusManager.adjustToNormal();
        updateDisplay();
    }

    public void sendInitMsg() {
        this.mHandler.sendEmptyMessage(100);
    }

    public void sendAdjustStatic(float progress) {
        this.mHandler.removeMessages(MSG_ADJUST_STATIC);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_ADJUST_STATIC, Float.valueOf(progress)));
    }

    public void sendPlayVideo() {
        this.mHandler.removeMessages(MSG_ADJUST_STATIC);
        this.mHandler.removeMessages(MSG_PLAY_VIDEO);
        this.mHandler.sendEmptyMessage(MSG_PLAY_VIDEO);
    }

    public void sendSaveImage(String outPath, boolean adjustToSuggest) {
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_SAVE_IMAGE, adjustToSuggest, 0, outPath));
    }

    public void sendSaveVideo(String outPath) {
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_SAVE_VIDEO, outPath));
    }

    public void sendVideoEffectConfig(RefocusEffectConfig refocusEffectConfig) {
        this.mHandler.removeMessages(MSG_CHANGE_EFFECT_TO_VIDEO);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_CHANGE_EFFECT_TO_VIDEO, refocusEffectConfig));
    }

    public void sendRelightingEffectConfig(RefocusEffectConfig refocusEffectConfig) {
        this.mHandler.removeMessages(MSG_CHANGE_EFFECT_TO_RELIGHTING);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_CHANGE_EFFECT_TO_RELIGHTING, refocusEffectConfig));
    }

    public void sendStaticEffect(RefocusEffectConfig refocusEffectConfig, float progress, boolean adjust) {
        this.mHandler.removeMessages(MSG_CHANGE_EFFECT_TO_STATIC);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_CHANGE_EFFECT_TO_STATIC, new StaticAdjust(refocusEffectConfig, progress, adjust, null)));
    }

    public void sendStopPlayVideo() {
        this.mHandler.sendEmptyMessage(MSG_STOP_PLAY_VIDEO);
    }

    public void sendPauseVideo() {
        this.mHandler.sendEmptyMessage(MSG_PAUSE_VIDEO);
    }

    public void sendRefresh() {
        this.mHandler.sendEmptyMessage(MSG_SEND_REFRESH);
    }

    public void sendOnSingleTapUp(int x, int y) {
        this.mHandler.removeMessages(MSG_MOTION_EVENT_SINGLE_TOUCH_UP);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_MOTION_EVENT_SINGLE_TOUCH_UP, x, y));
    }

    public void sendRelightingSource(int x, int y) {
        this.mHandler.removeMessages(MSG_RELIGHTING_SOURCE);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(MSG_RELIGHTING_SOURCE, x, y));
    }

    public int getCurrentBokehSize() {
        return this.mRefocusManager.getCurrentBokehSize();
    }

    public void getFacePoint(float[] point) {
        point[0] = this.mFacePointOnView[0];
        point[1] = this.mFacePointOnView[1];
    }

    public float[] getLightingPointOnView() {
        return this.mRefocusManager.getUserRelightingSourceOnView();
    }

    public void getImageDisplayRect(RectF dst) {
        this.mGLDisplayParameter.getImageDisplayRect(dst);
    }

    public float getRelightingRadius() {
        return this.mGLDisplayParameter.getRelightingRadius();
    }

    public void doFrame(long frameTimeNanos) {
        float progress;
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("doFrame ");
        stringBuilder.append(frameTimeNanos);
        stringBuilder.append(" ");
        stringBuilder.append(Thread.currentThread().getName());
        Log.d(str, stringBuilder.toString());
        if (this.mStartTimeNanos == -1) {
            progress = 0.0f;
            this.mStartTimeNanos = frameTimeNanos;
        } else {
            progress = ((float) (frameTimeNanos - this.mStartTimeNanos)) / (((float) this.mCurrentEffect.totalSecond) * 1000000.0f);
        }
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("progress ");
        stringBuilder2.append(progress);
        Log.d(str2, stringBuilder2.toString());
        if (progress > 1.0f) {
            this.mStartTimeNanos = -1;
            adjustStatic(1.0f);
            pauseVideo();
            return;
        }
        adjustStatic(progress);
        Choreographer.getInstance().postFrameCallback(this);
    }

    private void notifyInitFinish(final Bitmap bitmap, final int orientation, final ImageExif imageExif) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("notifyInitFinish ");
        stringBuilder.append(this.mCallback);
        Log.d(str, stringBuilder.toString());
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onInitFinish(bitmap, orientation, imageExif);
                    }
                }
            });
        }
    }

    private void notifySurfaceChanged() {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onSurfaceChanged();
                    }
                }
            });
        }
    }

    private void notifySurfaceReady() {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onSurfaceReady();
                    }
                }
            });
        }
    }

    private void notifyDecodeError() {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onDecodeError();
                    }
                }
            });
        }
    }

    private void notifySaveFinish(Bitmap preview, String path, boolean video, String type, String explain) {
        if (this.mCallback != null) {
            final Bitmap bitmap = preview;
            final String str = path;
            final boolean z = video;
            final String str2 = type;
            final String str3 = explain;
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onSave(bitmap, str, z, str2, str3);
                    }
                }
            });
        }
    }

    private void notifySaveCancel() {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onSaveCancel();
                    }
                }
            });
        }
    }

    private void notifyPreviewUpdate(final Bitmap preview) {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onPreviewUpdate(preview);
                    }
                }
            });
        }
    }

    private void notifyLoading() {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onLoading();
                    }
                }
            });
        }
    }

    private void notifyLoadingEnd() {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onLoadingEnd();
                    }
                }
            });
        }
    }

    private void notifySaveStatusChange(final boolean enable) {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onSaveStatusChange(enable);
                    }
                }
            });
        }
    }

    private void notifyRelightingEffect() {
        if (this.mCallback != null) {
            this.mMainHandler.post(new Runnable() {
                public void run() {
                    if (RefocusRenderThread.this.mCallback != null) {
                        RefocusRenderThread.this.mCallback.onRelightingEffect();
                    }
                }
            });
        }
    }

    public boolean isPlaying() {
        return this.mIsPlaying;
    }

    public boolean isRelightingMode() {
        return this.mCurrentEffect != null && this.mCurrentEffect.type == RefocusEffectType.RELIGHTING;
    }

    public boolean isRelightingHasFace() {
        return isRelightingMode() && ((RelightingEffect) this.mCurrentEffect).hasFace();
    }

    private void onThreadExit() {
        Log.d(TAG, "render thread exit");
        if (this.mCurrentEffect != null) {
            this.mRefocusManager.destroyEffect(this.mCurrentEffect);
        }
        this.mRefocusManager.releaseAll();
        if (this.mGLYUVShader != null) {
            this.mGLYUVShader.destroy();
        }
    }
}
