package com.miui.extraphoto.refocus;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.util.Log;
import com.miui.extraphoto.refocus.effect.RefocusEffect;
import com.miui.extraphoto.refocus.effect.RefocusEffectBasic;
import com.miui.gallery3d.exif.ExifTag;
import java.util.List;

public class RefocusManager {
    public static final int QUALITY_HEIGHT = 0;
    public static final int QUALITY_LOW = 1;
    private static final String TAG = "RefocusManager";
    private Context mContext;
    private final String mDataPath;
    private int[] mDataSeparation;
    private int mImageOrientation = -1;
    private boolean mMirror = false;
    private int mOriginBokehSize = 0;
    private List<ExifTag> mOriginExifTags;
    private int mOriginFocusX = -1;
    private int mOriginFocusY = -1;
    private int mOriginHeight;
    private int mOriginWidth;
    private int mProcessHeight;
    private int mProcessWidth;
    private long mRefocusNativeContext = 0;
    private boolean mSoftMode = false;
    private byte[] mUData;
    private int mUserFocusX = -1;
    private int mUserFocusY = -1;
    private float[] mUserRelightingSourceOnView = new float[2];
    private int mUserRelightingSourceX;
    private int mUserRelightingSourceY;
    private byte[] mVData;
    private Bitmap mWaterMark;
    private Bitmap mWaterMarkTime;
    private byte[] mYData;

    static class ImageExif {
        public int bokehSize = -1;
        public int filter = -1;
        public int focusX = -1;
        public int focusY = -1;
        public boolean isSoftBokeh;
        public boolean mirror = false;
        public int orientation = -1;
        public int relightingType;
        public Bitmap waterMark;
        public Bitmap waterMarkTime;

        ImageExif() {
        }
    }

    interface InitListener {
        void onDecodeError();

        void onPreviewDecode(Bitmap bitmap, int i, ImageExif imageExif);
    }

    RefocusManager(Context context, String dataPath) {
        this.mDataPath = dataPath;
        this.mContext = context;
    }

    public void init(InitListener initListener) {
        InitListener initListener2 = initListener;
        byte[] data = RefocusUtils.loadData(this.mDataPath);
        if (data == null || data.length == 0) {
            resolveInitError(initListener);
            return;
        }
        this.mDataSeparation = RefocusUtils.getDataSeparation(data);
        if (this.mDataSeparation == null || this.mDataSeparation.length != 2) {
            Log.e(TAG, "refocus decode error data separation");
            resolveInitError(initListener);
            return;
        }
        ImageExif imageExif = new ImageExif();
        try {
            Bitmap originSizeBitmap = RefocusUtils.decodeOriginBitmap(data, this.mDataSeparation, null);
            this.mOriginWidth = originSizeBitmap.getWidth();
            this.mOriginHeight = originSizeBitmap.getHeight();
            Log.d(TAG, String.format("origin bitmap width : %d height : %d", new Object[]{Integer.valueOf(this.mOriginWidth), Integer.valueOf(this.mOriginHeight)}));
            Options options = new Options();
            options.inSampleSize = 4;
            this.mOriginExifTags = RefocusUtils.getAllExifTag(data, this.mDataSeparation);
            RefocusUtils.getNecessaryExif(this.mOriginExifTags, imageExif);
            this.mImageOrientation = imageExif.orientation;
            this.mMirror = imageExif.mirror;
            this.mSoftMode = imageExif.isSoftBokeh;
            this.mWaterMark = imageExif.waterMark;
            this.mWaterMarkTime = imageExif.waterMarkTime;
            Bitmap originBitmap = RefocusUtils.decodeOriginBitmap(data, this.mDataSeparation, options);
            Bitmap displayBitmap = RefocusUtils.getBitmapForYUV(RefocusUtils.decodeUserDisplayBitmap(data, this.mDataSeparation, options));
            originBitmap = RefocusUtils.getBitmapForYUV(originBitmap);
            this.mProcessWidth = originBitmap.getWidth();
            this.mProcessHeight = originBitmap.getHeight();
            Log.d(TAG, String.format("process bitmap width : %d height : %d", new Object[]{Integer.valueOf(this.mProcessWidth), Integer.valueOf(this.mProcessHeight)}));
            byte[] deepData = RefocusUtils.getDeepData(data, this.mDataSeparation);
            boolean z = this.mSoftMode;
            int i = this.mOriginWidth;
            int i2 = this.mOriginHeight;
            int i3 = this.mProcessWidth;
            int i4 = this.mProcessHeight;
            int length = deepData.length;
            int i5 = length;
            int i6 = i4;
            int i7 = i3;
            byte[] bArr = deepData;
            this.mRefocusNativeContext = RefocusJni.initRefocusNativeContext(originSizeBitmap, originBitmap, displayBitmap, null, z, i, i2, i7, i6, bArr, i5, getDegreeByOrientation(this.mImageOrientation), this.mMirror, imageExif.filter);
            if (imageExif.focusX <= 0 || imageExif.focusY <= 0) {
                this.mOriginFocusX = this.mProcessWidth / 2;
                this.mOriginFocusY = this.mProcessHeight / 2;
            } else {
                this.mOriginFocusX = Math.round(((float) imageExif.focusX) / 4.0f);
                this.mOriginFocusY = Math.round(((float) imageExif.focusY) / 4.0f);
            }
            RefocusJni.configFocusPoint(this.mOriginFocusX, this.mOriginFocusY, this.mRefocusNativeContext);
            if (imageExif.bokehSize < 0) {
                imageExif.bokehSize = 50;
            }
            this.mOriginBokehSize = imageExif.bokehSize;
            RefocusJni.configOriginBokehSize(imageExif.bokehSize, this.mRefocusNativeContext);
            if (!this.mSoftMode) {
                RefocusJni.configBokehSize(Math.round(((float) this.mOriginBokehSize) / 4.0f), this.mRefocusNativeContext);
                RefocusJni.processImageByHolder(this.mRefocusNativeContext);
            }
            RefocusJni.configToBokeh(this.mRefocusNativeContext);
            RefocusJni.adjustToDisplay(this.mRefocusNativeContext);
            initBuffer();
            configSingleYUVByResult();
            if (initListener2 != null) {
                initListener2.onPreviewDecode(displayBitmap, this.mImageOrientation, imageExif);
            }
        } catch (Exception e) {
            Log.e(TAG, "refocus decode error", e);
            resolveInitError(initListener);
        }
    }

    private void resolveInitError(InitListener initListener) {
        if (initListener != null) {
            initListener.onDecodeError();
        }
    }

    private void initBuffer() {
        int ySize = this.mProcessWidth * this.mProcessHeight;
        int uvSize = ySize / 4;
        this.mYData = new byte[ySize];
        this.mUData = new byte[uvSize];
        this.mVData = new byte[uvSize];
    }

    public Bitmap decodeOriginBitmap(Options options) {
        return decodeOriginBitmap(RefocusUtils.loadData(this.mDataPath), options);
    }

    public Bitmap decodeOriginBitmap(byte[] originBytes, Options options) {
        return RefocusUtils.decodeOriginBitmap(originBytes, this.mDataSeparation, options);
    }

    public Bitmap decodeBokehBitmap(byte[] originBytes, Options options) {
        return RefocusUtils.decodeUserDisplayBitmap(originBytes, this.mDataSeparation, options);
    }

    public byte[] readOriginBytes() {
        return RefocusUtils.loadData(this.mDataPath);
    }

    public int getYUVDataLength() {
        return RefocusJni.getYUVDataLength(this.mRefocusNativeContext);
    }

    public int getCurrentBokehSize() {
        return this.mRefocusNativeContext == 0 ? -1 : RefocusJni.getCurrentBokehSize(this.mRefocusNativeContext);
    }

    public long getRefocusNativeContext() {
        return this.mRefocusNativeContext;
    }

    public void adjustToNormal() {
        RefocusJni.adjustToBokeh(this.mRefocusNativeContext);
        configSingleYUVByResult();
    }

    public void adjustForDisplay(float progress, RefocusEffect refocusEffect) {
        refocusEffect.enableEffectByProgress(progress, this.mRefocusNativeContext);
        configSingleYUVByResult();
    }

    public void reprocess() {
        RefocusJni.processImageByHolder(this.mRefocusNativeContext);
    }

    public void refocus(int x, int y) {
        RefocusJni.refocus(x, y, this.mRefocusNativeContext);
        this.mUserFocusX = x;
        this.mUserFocusY = y;
        configSingleYUVByResult();
    }

    public void onPreviewVideo() {
        RefocusJni.configFocusPoint(this.mOriginFocusX, this.mOriginFocusY, this.mRefocusNativeContext);
    }

    public void onAdjustToStatic() {
        RefocusJni.configFocusPoint(this.mUserFocusX, this.mUserFocusY, this.mRefocusNativeContext);
    }

    public void initEffect(RefocusEffect refocusEffect) {
        if (refocusEffect != null) {
            refocusEffect.initEffect(this.mContext, this.mRefocusNativeContext);
        }
    }

    public void initForGenerateVideo(RefocusEffect refocusEffect) {
        if (refocusEffect != null) {
            refocusEffect.initForVideo(this.mRefocusNativeContext);
        }
    }

    public void destroyEffect(RefocusEffect refocusEffect) {
        if (refocusEffect != null) {
            refocusEffect.destroyEffect(this.mRefocusNativeContext);
        }
    }

    public void enableEffectByProgress(RefocusEffect refocusEffect, float progress) {
        refocusEffect.enableEffectByProgress(progress, this.mRefocusNativeContext);
    }

    public void enableEffectByProgress(RefocusEffectBasic refocusEffect, int size) {
        refocusEffect.enableEffectByBokehSize(size, this.mRefocusNativeContext);
    }

    public void configYUVByResult(byte[] dst) {
        RefocusJni.configYUVDataByResult(dst, this.mRefocusNativeContext);
    }

    public void setRelightingLightSource(float x, float y) {
        setRelightingLightSource(x, y, false);
    }

    public void getRelightingLightSource(float[] point) {
        RefocusJni.configRelightingLightSource(point, this.mRefocusNativeContext);
        point[0] = point[0] / 4.0f;
        point[1] = point[1] / 4.0f;
    }

    public boolean isSoftMode() {
        return this.mSoftMode;
    }

    public void setRelightingLightSource(float x, float y, boolean origin) {
        this.mUserRelightingSourceX = Math.round(x);
        this.mUserRelightingSourceY = Math.round(y);
        if (this.mUserRelightingSourceX > this.mProcessWidth) {
            this.mUserRelightingSourceX = this.mProcessWidth;
        }
        if (this.mUserRelightingSourceX < 0) {
            this.mUserRelightingSourceX = 0;
        }
        if (this.mUserRelightingSourceY > this.mProcessHeight) {
            this.mUserRelightingSourceY = this.mProcessHeight;
        }
        if (this.mUserRelightingSourceY < 0) {
            this.mUserRelightingSourceY = 0;
        }
        RefocusJni.setRelightingLightSource(this.mUserRelightingSourceX, this.mUserRelightingSourceY, origin, this.mRefocusNativeContext);
    }

    public void configBitmapByResult(Bitmap bitmap) {
        RefocusJni.configBitmapByResult(bitmap, this.mRefocusNativeContext);
    }

    public void resetData(Bitmap bitmap, int scaleSize) {
        RefocusJni.resetData(bitmap, bitmap.getWidth(), bitmap.getHeight(), scaleSize, this.mRefocusNativeContext);
    }

    public void configProcessQuality(int quality) {
        RefocusJni.configProcessQuality(quality, this.mRefocusNativeContext);
    }

    public void configSingleYUVByResult() {
        long a = System.currentTimeMillis();
        RefocusJni.configYUVSingleDataByResult(this.mYData, this.mUData, this.mVData, this.mRefocusNativeContext);
        long b = System.currentTimeMillis();
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("copy yuv coast : ");
        stringBuilder.append(b - a);
        Log.d(str, stringBuilder.toString());
    }

    public void configSingleYUVByResult(byte[] y, byte[] u, byte[] v) {
        RefocusJni.configYUVSingleDataByResult(y, u, v, this.mRefocusNativeContext);
    }

    public int getUserRelightingSourceX() {
        return this.mUserRelightingSourceX;
    }

    public int getUserRelightingSourceY() {
        return this.mUserRelightingSourceY;
    }

    public byte[] getYData() {
        return this.mYData;
    }

    public byte[] getUData() {
        return this.mUData;
    }

    public byte[] getVData() {
        return this.mVData;
    }

    public Bitmap getWaterMark() {
        return this.mWaterMark;
    }

    public Bitmap getWaterMarkTime() {
        return this.mWaterMarkTime;
    }

    public boolean hasWaterMark() {
        return (this.mWaterMark == null && this.mWaterMarkTime == null) ? false : true;
    }

    public void releaseAll() {
        RefocusJni.releaseNativeContext(this.mRefocusNativeContext);
        this.mRefocusNativeContext = 0;
        this.mYData = null;
        this.mUData = null;
        this.mVData = null;
    }

    public int getProcessWidth() {
        return this.mProcessWidth;
    }

    public int getProcessHeight() {
        return this.mProcessHeight;
    }

    public int getOriginWidth() {
        return this.mOriginWidth;
    }

    public int getOriginHeight() {
        return this.mOriginHeight;
    }

    public void setUserRelightingSourceOnView(float x, float y) {
        this.mUserRelightingSourceOnView[0] = x;
        this.mUserRelightingSourceOnView[1] = y;
    }

    public float[] getUserRelightingSourceOnView() {
        return this.mUserRelightingSourceOnView;
    }

    public int getImageOrientation() {
        return this.mImageOrientation;
    }

    public boolean isMirror() {
        return this.mMirror;
    }

    public List<ExifTag> getOriginExifTags() {
        return this.mOriginExifTags;
    }

    public static int getDegreeByOrientation(int orientation) {
        if (orientation == 3) {
            return 180;
        }
        if (orientation == 6) {
            return 90;
        }
        if (orientation != 8) {
            return 0;
        }
        return 270;
    }
}
