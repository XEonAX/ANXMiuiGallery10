package com.miui.extraphoto.refocus;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.util.Log;
import android.util.TypedValue;
import com.miui.extraphoto.R;
import com.miui.extraphoto.refocus.gles.OpenGlUtils;
import com.miui.extraphoto.refocus.gles.shader.GLDisplayParameter;
import com.miui.extraphoto.refocus.gles.shader.GLTextureShader;

public class RefocusWaterMarkPainter {
    private static final String TAG = "RefocusWaterMarkPainter";
    private static final float TEXT_WATER_MARK_RATIO = 0.87f;
    private float mDualCameraWaterMarkPaddingXRatio;
    private float mDualCameraWaterMarkPaddingYRatio;
    private float mDualCameraWaterMarkSizeRatio;
    private int mHeight;
    private int mOrientation;
    private int mOriginHeight;
    private int mOriginWidth;
    private Bitmap mWaterMarkBitmap;
    private final float[] mWaterMarkPositions = new float[8];
    private final RectF mWaterMarkRect = new RectF();
    private int mWaterMarkTextureId = -1;
    private Bitmap mWaterMarkTimeBitmap;
    private final float[] mWaterMarkTimePositions = new float[8];
    private final RectF mWaterMarkTimeRect = new RectF();
    private int mWaterMarkTimeTextureId = -1;
    private int mWidth;

    public RefocusWaterMarkPainter(Resources resources, Bitmap waterMarkBitmap, Bitmap waterMarkTimeBitmap, int width, int height, int originWidth, int originHeight, int orientation) {
        this.mWaterMarkBitmap = waterMarkBitmap;
        this.mWaterMarkTimeBitmap = waterMarkTimeBitmap;
        this.mWidth = width;
        this.mHeight = height;
        this.mOriginWidth = originWidth;
        this.mOriginHeight = originHeight;
        this.mOrientation = orientation;
        this.mDualCameraWaterMarkSizeRatio = getResourceFloat(resources, R.dimen.dualcamera_watermark_size_ratio, 0.0f);
        this.mDualCameraWaterMarkPaddingXRatio = getResourceFloat(resources, R.dimen.dualcamera_watermark_padding_x_ratio, 0.0f);
        this.mDualCameraWaterMarkPaddingYRatio = getResourceFloat(resources, R.dimen.dualcamera_watermark_padding_y_ratio, 0.0f);
        generatePositions();
    }

    public void generateWaterMarkTexture() {
        if (this.mWaterMarkBitmap != null) {
            this.mWaterMarkTextureId = OpenGlUtils.loadTexture(this.mWaterMarkBitmap, -1, false);
        }
        if (this.mWaterMarkTimeBitmap != null) {
            this.mWaterMarkTimeTextureId = OpenGlUtils.loadTexture(this.mWaterMarkTimeBitmap, -1, false);
        }
    }

    private void generatePositions() {
        int waterMarkHeight;
        int paddingY;
        RectF targetRect = new RectF(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
        float customScale = ((float) this.mHeight) / ((float) this.mOriginHeight);
        float ratio = ((float) Math.min(this.mWidth, this.mHeight)) / 1080.0f;
        if (this.mWaterMarkBitmap != null) {
            waterMarkHeight = Math.round(this.mDualCameraWaterMarkSizeRatio * ratio) & -2;
            paddingY = Math.round(this.mDualCameraWaterMarkPaddingYRatio * ratio) & -2;
            RectF rectF = targetRect;
            getWaterMarkRect(this.mWaterMarkRect, rectF, (float) (((this.mWaterMarkBitmap.getWidth() * waterMarkHeight) / this.mWaterMarkBitmap.getHeight()) & -2), (float) waterMarkHeight, (float) (Math.round(this.mDualCameraWaterMarkPaddingXRatio * ratio) & -2), (float) paddingY, this.mOrientation, 1);
            GLDisplayParameter.configGLPositionByRect(this.mWaterMarkPositions, this.mWaterMarkRect, targetRect);
        }
        if (this.mWaterMarkTimeBitmap != null) {
            waterMarkHeight = Math.round(((float) this.mWaterMarkTimeBitmap.getWidth()) * customScale);
            int waterMarkHeight2 = Math.round(((float) this.mWaterMarkTimeBitmap.getHeight()) * customScale);
            int padding = (int) Math.round(43.687002653d * ((double) ratio));
            paddingY = (int) ((((float) waterMarkHeight2) * 0.13f) / 2.0f);
            int paddingX = padding & -2;
            int paddingY2 = (padding - paddingY) & -2;
            float f = (float) paddingY2;
            int customScale2 = paddingY;
            getWaterMarkRect(this.mWaterMarkTimeRect, targetRect, (float) waterMarkHeight, (float) waterMarkHeight2, (float) paddingX, f, this.mOrientation, 0);
            GLDisplayParameter.configGLPositionByRect(this.mWaterMarkTimePositions, this.mWaterMarkTimeRect, targetRect);
            return;
        }
    }

    public void glDrawWaterMark(GLTextureShader glTextureShader) {
        GLES20.glEnable(3042);
        GLES20.glBlendFuncSeparate(1, 771, 0, 1);
        if (this.mWaterMarkTextureId != -1) {
            glTextureShader.draw(this.mWaterMarkTextureId, this.mWaterMarkPositions, getWaterMarkCood(this.mOrientation));
        }
        if (this.mWaterMarkTimeTextureId != -1) {
            glTextureShader.draw(this.mWaterMarkTimeTextureId, this.mWaterMarkTimePositions, getWaterMarkCood(this.mOrientation));
        }
        GLES20.glDisable(3042);
    }

    public void canvasDrawWaterMark(Bitmap bitmap) {
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(3);
        Matrix matrixRotation = new Matrix();
        Matrix matrixTranslate = new Matrix();
        Matrix matrix = new Matrix();
        matrixRotation.postRotate((float) (360 - RefocusManager.getDegreeByOrientation(this.mOrientation)));
        RectF waterMarkRect = new RectF();
        if (this.mWaterMarkBitmap != null) {
            waterMarkRect.set(0.0f, 0.0f, (float) this.mWaterMarkBitmap.getWidth(), (float) this.mWaterMarkBitmap.getHeight());
            matrixRotation.mapRect(waterMarkRect);
            matrixTranslate.setRectToRect(waterMarkRect, this.mWaterMarkRect, ScaleToFit.FILL);
            matrix.postConcat(matrixRotation);
            matrix.postConcat(matrixTranslate);
            canvas.drawBitmap(this.mWaterMarkBitmap, matrix, paint);
        }
        if (this.mWaterMarkTimeBitmap != null) {
            waterMarkRect.set(0.0f, 0.0f, (float) this.mWaterMarkTimeBitmap.getWidth(), (float) this.mWaterMarkTimeBitmap.getHeight());
            matrixRotation.mapRect(waterMarkRect);
            matrixTranslate.reset();
            matrixTranslate.setRectToRect(waterMarkRect, this.mWaterMarkTimeRect, ScaleToFit.FILL);
            matrix.reset();
            matrix.postConcat(matrixRotation);
            matrix.postConcat(matrixTranslate);
            canvas.drawBitmap(this.mWaterMarkTimeBitmap, matrix, paint);
        }
    }

    public void release() {
        GLES20.glDeleteTextures(2, new int[]{this.mWaterMarkTextureId, this.mWaterMarkTimeTextureId}, 0);
    }

    private static void getWaterMarkRect(RectF dst, RectF viewPort, float waterMarkWidth, float waterMarkHeight, float paddingX, float paddingY, int orientation, boolean left) {
        RectF newViewPort = new RectF();
        Matrix matrix = new Matrix();
        Matrix matrixInvert = new Matrix();
        GLDisplayParameter.configImageMatrixByOrientation(viewPort, matrix, orientation);
        matrix.mapRect(newViewPort, viewPort);
        matrix.postTranslate(-newViewPort.left, -newViewPort.top);
        matrix.mapRect(newViewPort, viewPort);
        if (left) {
            dst.left = paddingX;
            dst.bottom = newViewPort.bottom - paddingY;
            dst.right = dst.left + waterMarkWidth;
            dst.top = dst.bottom - waterMarkHeight;
        } else {
            dst.right = newViewPort.right - paddingX;
            dst.bottom = newViewPort.bottom - paddingY;
            dst.left = dst.right - waterMarkWidth;
            dst.top = dst.bottom - waterMarkHeight;
        }
        matrix.invert(matrixInvert);
        matrixInvert.mapRect(dst);
    }

    private static float[] getWaterMarkCood(int orientation) {
        if (orientation == 3) {
            return GLTextureShader.TEXTURE_180_ROTATION;
        }
        if (orientation == 6) {
            return GLTextureShader.TEXTURE_270_ROTATION;
        }
        if (orientation != 8) {
            return GLTextureShader.TEXTURE_NO_ROTATION;
        }
        return GLTextureShader.TEXTURE_90_ROTATION;
    }

    private static float getResourceFloat(Resources resources, int resId, float defaultValue) {
        TypedValue value = new TypedValue();
        try {
            resources.getValue(resId, value, true);
            return value.getFloat();
        } catch (Exception e) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Missing resource ");
            stringBuilder.append(Integer.toHexString(resId));
            Log.e(str, stringBuilder.toString());
            return defaultValue;
        }
    }
}
