package com.miui.extraphoto.refocus.gles.shader;

import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import com.miui.extraphoto.refocus.RefocusManager;

public class GLDisplayParameter {
    private static final float RELIGHTING_ADJUST_RATIO = 0.7f;
    private float[] mGLPosition = new float[8];
    private RectF mImageDisplayOriginRect = new RectF();
    private RectF mImageDisplayRect = new RectF();
    private final int mImageHeight;
    private Matrix mImageMatrix = new Matrix();
    private Matrix mImageMirrorMatrix = new Matrix();
    private Matrix mImageMirrorMatrixInvert = new Matrix();
    private RectF mImageRect = new RectF();
    private Matrix mImageToViewMatrix = new Matrix();
    private final int mImageWidth;
    private final boolean mMirror;
    private final int mOrientation;
    private Matrix mRotationMatrix = new Matrix();
    private Matrix mRotationMatrixInvert = new Matrix();
    private float[] mTextureCood = new float[8];
    private final int mViewHeight;
    private RectF mViewRect = new RectF();
    private Matrix mViewToImageMatrix = new Matrix();
    private Matrix mViewToImageMatrixInvert = new Matrix();
    private final int mViewWidth;

    public GLDisplayParameter(int imageWidth, int imageHeight, int viewWidth, int viewHeight, int orientation, boolean mirror) {
        this.mImageWidth = imageWidth;
        this.mImageHeight = imageHeight;
        this.mViewWidth = viewWidth;
        this.mViewHeight = viewHeight;
        this.mOrientation = orientation;
        this.mMirror = mirror;
        refreshPosition();
    }

    private void refreshPosition() {
        this.mViewRect.set(0.0f, 0.0f, (float) this.mViewWidth, (float) this.mViewHeight);
        this.mImageRect.set(0.0f, 0.0f, (float) this.mImageWidth, (float) this.mImageHeight);
        this.mImageMatrix.reset();
        configImageMatrixByOrientation(this.mImageRect, this.mImageMatrix, this.mOrientation);
        this.mImageMatrix.mapRect(this.mImageDisplayRect, this.mImageRect);
        this.mImageDisplayOriginRect.set(this.mImageDisplayRect);
        this.mImageToViewMatrix.reset();
        this.mImageToViewMatrix.setRectToRect(this.mImageDisplayRect, this.mViewRect, ScaleToFit.CENTER);
        this.mImageToViewMatrix.mapRect(this.mImageDisplayRect);
        this.mViewToImageMatrix.reset();
        this.mViewToImageMatrix.setRectToRect(this.mImageDisplayRect, this.mImageDisplayOriginRect, ScaleToFit.FILL);
        if (this.mMirror) {
            this.mImageMirrorMatrix.postScale(-1.0f, 1.0f, this.mImageDisplayOriginRect.centerX(), this.mImageDisplayOriginRect.centerY());
        }
        RectF rectForRotation = new RectF();
        Matrix matrixForRotation = new Matrix();
        this.mRotationMatrix.reset();
        this.mRotationMatrix.postRotate((float) (360 - RefocusManager.getDegreeByOrientation(this.mOrientation)));
        this.mRotationMatrix.mapRect(rectForRotation, this.mImageDisplayOriginRect);
        matrixForRotation.setRectToRect(rectForRotation, this.mImageRect, ScaleToFit.FILL);
        this.mRotationMatrix.postConcat(matrixForRotation);
        configGLPositionByRect(this.mGLPosition, this.mImageDisplayRect, this.mViewRect);
        this.mViewToImageMatrix.invert(this.mViewToImageMatrixInvert);
        this.mImageMirrorMatrix.invert(this.mImageMirrorMatrixInvert);
        this.mRotationMatrix.invert(this.mRotationMatrixInvert);
    }

    public void getPointOnBitmap(float[] point) {
        this.mViewToImageMatrix.mapPoints(point);
        this.mImageMirrorMatrix.mapPoints(point);
        this.mRotationMatrix.mapPoints(point);
    }

    public void getPointOnView(float[] point) {
        this.mRotationMatrixInvert.mapPoints(point);
        this.mImageMirrorMatrixInvert.mapPoints(point);
        this.mViewToImageMatrixInvert.mapPoints(point);
    }

    public float[] getGLPosition() {
        return this.mGLPosition;
    }

    public float[] getRotation() {
        float[] standardCood;
        int i = this.mOrientation;
        if (i == 3) {
            standardCood = GLTextureShader.TEXTURE_180_ROTATION;
        } else if (i == 6) {
            standardCood = GLTextureShader.TEXTURE_90_ROTATION;
        } else if (i != 8) {
            standardCood = GLTextureShader.TEXTURE_NO_ROTATION;
        } else {
            standardCood = GLTextureShader.TEXTURE_270_ROTATION;
        }
        System.arraycopy(standardCood, 0, this.mTextureCood, 0, this.mTextureCood.length);
        if (this.mMirror) {
            textureCoodMirror(this.mTextureCood, this.mOrientation);
        }
        return this.mTextureCood;
    }

    public static void configGLPositionByRect(float[] glPosition, RectF display, RectF viewPort) {
        glPosition[0] = display.left;
        glPosition[1] = display.bottom;
        glPosition[2] = display.right;
        glPosition[3] = display.bottom;
        glPosition[4] = display.left;
        glPosition[5] = display.top;
        glPosition[6] = display.right;
        glPosition[7] = display.top;
        convertPoint(glPosition, viewPort);
    }

    public void getImageDisplayRect(RectF dst) {
        dst.set(this.mImageDisplayRect);
    }

    public float getRelightingRadius() {
        return (Math.min(this.mImageDisplayRect.width(), this.mImageDisplayRect.height()) * RELIGHTING_ADJUST_RATIO) / 2.0f;
    }

    private static void convertPoint(float[] points, RectF rect) {
        for (int i = 0; i < points.length; i += 2) {
            points[i] = convertX(points[i], rect);
            points[i + 1] = convertY(points[i + 1], rect);
        }
    }

    private static float convertX(float x, RectF rect) {
        return (2.0f * (x - rect.centerX())) / rect.width();
    }

    private static float convertY(float y, RectF rect) {
        return ((-(y - rect.centerY())) * 2.0f) / rect.height();
    }

    public static void configImageMatrixByOrientation(RectF imageRect, Matrix dst, int orientation) {
        dst.reset();
        if (orientation == 1) {
            return;
        }
        if (orientation == 3) {
            dst.postRotate(180.0f, imageRect.centerX(), imageRect.centerY());
        } else if (orientation == 6) {
            dst.postRotate(90.0f, imageRect.centerX(), imageRect.centerY());
        } else if (orientation == 8) {
            dst.postRotate(-90.0f, imageRect.centerX(), imageRect.centerY());
        }
    }

    public static void textureCoodMirror(float[] textureCood, int orientation) {
        boolean isVertical = isVerticalMirror(orientation);
        for (int i = 0; i < textureCood.length; i += 2) {
            if (isVertical) {
                textureCood[i + 1] = 1.0f - textureCood[i + 1];
            } else {
                textureCood[i] = 1.0f - textureCood[i];
            }
        }
    }

    public static boolean isVerticalMirror(int orientation) {
        if (orientation == 6 || orientation == 8) {
            return true;
        }
        return false;
    }
}
