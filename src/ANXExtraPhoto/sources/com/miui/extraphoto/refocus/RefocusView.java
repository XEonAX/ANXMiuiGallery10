package com.miui.extraphoto.refocus;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

public class RefocusView extends SurfaceView implements android.view.SurfaceHolder.Callback {
    private static final String TAG = "RefocusVideoView";
    private Callback mCallback;
    private GestureDetector mGestureDetector;
    private boolean mInit;
    private Matrix mMatrix;
    private OnGestureListener mOnGestureListener;
    private float[] mPoint;
    private int[] mPosition;
    private boolean mPreventTouch;
    private RectF mRectF;
    private RefocusPopupWindow mRefocusPopupWindow;
    private RelightingPopupWindow mRelightingPopupWindow;
    private RefocusRenderThread mRenderThread;

    interface Callback {
        DisplayMode getDisplayMode();
    }

    public RefocusView(Context context) {
        super(context);
        this.mPosition = new int[2];
        this.mPoint = new float[2];
        this.mRectF = new RectF();
        this.mMatrix = new Matrix();
        this.mInit = false;
        this.mPreventTouch = false;
        this.mOnGestureListener = new OnGestureListener() {
            public boolean onDown(MotionEvent e) {
                return true;
            }

            public void onShowPress(MotionEvent e) {
            }

            public boolean onSingleTapUp(MotionEvent e) {
                int x = Math.round(e.getX());
                int y = Math.round(e.getY());
                if (RefocusView.this.mCallback.getDisplayMode() == DisplayMode.REFOCUS_STATIC) {
                    RefocusView.this.showPopupWindow(x, y);
                }
                RefocusView.this.mRenderThread.sendOnSingleTapUp(x, y);
                return true;
            }

            public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
                if (RefocusView.this.mRenderThread.isRelightingHasFace()) {
                    RefocusView.this.mRenderThread.getFacePoint(RefocusView.this.mPoint);
                    float centerX = RefocusView.this.mPoint[0];
                    float centerY = RefocusView.this.mPoint[1];
                    float[] currentLightingPoint = RefocusView.this.mRenderThread.getLightingPointOnView();
                    float currentX = currentLightingPoint[0] - distanceX;
                    float currentY = currentLightingPoint[1] - distanceY;
                    float radius = RefocusView.this.mRenderThread.getRelightingRadius();
                    if (((float) Math.hypot((double) (centerX - currentX), (double) (centerY - currentY))) > radius) {
                        double degree = Math.toDegrees(Math.atan2((double) (centerY - currentY), (double) (centerX - currentX)));
                        RefocusView.this.mPoint[0] = centerX - radius;
                        RefocusView.this.mPoint[1] = centerY;
                        RefocusView.this.mMatrix.reset();
                        RefocusView.this.mMatrix.postRotate((float) degree, centerX, centerY);
                        RefocusView.this.mMatrix.mapPoints(RefocusView.this.mPoint);
                        currentX = RefocusView.this.mPoint[0];
                        currentY = RefocusView.this.mPoint[1];
                    }
                    currentLightingPoint[0] = currentX;
                    currentLightingPoint[1] = currentY;
                    RefocusView.this.showRelightingWindow(centerX, centerY, currentLightingPoint[0], currentLightingPoint[1]);
                    RefocusView.this.mRenderThread.sendRelightingSource(Math.round(currentLightingPoint[0]), Math.round(currentLightingPoint[1]));
                }
                return true;
            }

            public void onLongPress(MotionEvent e) {
            }

            public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                return false;
            }
        };
        init();
    }

    public RefocusView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPosition = new int[2];
        this.mPoint = new float[2];
        this.mRectF = new RectF();
        this.mMatrix = new Matrix();
        this.mInit = false;
        this.mPreventTouch = false;
        this.mOnGestureListener = /* anonymous class already generated */;
        init();
    }

    public RefocusView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPosition = new int[2];
        this.mPoint = new float[2];
        this.mRectF = new RectF();
        this.mMatrix = new Matrix();
        this.mInit = false;
        this.mPreventTouch = false;
        this.mOnGestureListener = /* anonymous class already generated */;
        init();
    }

    private void init() {
        setZOrderOnTop(true);
        getHolder().setFormat(-2);
        getHolder().addCallback(this);
        this.mGestureDetector = new GestureDetector(getContext(), this.mOnGestureListener);
        this.mGestureDetector.setIsLongpressEnabled(false);
        this.mRefocusPopupWindow = new RefocusPopupWindow(getContext());
        this.mRelightingPopupWindow = new RelightingPopupWindow(getContext());
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (!this.mInit || this.mPreventTouch) {
            return true;
        }
        this.mGestureDetector.onTouchEvent(event);
        int action = event.getAction();
        if ((action == 1 || action == 3) && this.mRelightingPopupWindow != null) {
            this.mRelightingPopupWindow.dismiss();
        }
        return true;
    }

    private void showPopupWindow(int x, int y) {
        this.mRefocusPopupWindow.showAtLocation(this, 8388659, x + this.mPosition[0], y + this.mPosition[1]);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        getLocationInWindow(this.mPosition);
        this.mRelightingPopupWindow.setAvailableArea((float) this.mPosition[0], (float) this.mPosition[1], (float) getWidth(), (float) getHeight());
    }

    public int getCenterXInWindow() {
        return this.mPosition[0] + (getWidth() / 2);
    }

    public int getCenterYInWindow() {
        return this.mPosition[1] + (getHeight() / 2);
    }

    private void showRelightingWindow(float centerX, float centerY, float currentX, float currentY) {
        this.mRelightingPopupWindow.showAtLocation(this, 8388659, 0, 0);
        this.mRelightingPopupWindow.setPosition(((float) this.mPosition[0]) + centerX, ((float) this.mPosition[1]) + centerY, ((float) this.mPosition[0]) + currentX, ((float) this.mPosition[1]) + currentY);
    }

    public void showRelightingWindowByCurrentStatus() {
        this.mRenderThread.getFacePoint(this.mPoint);
        float[] currentLightingPoint = this.mRenderThread.getLightingPointOnView();
        this.mRelightingPopupWindow.showAtLocationDelay(this, 8388659, 0, 0);
        this.mRelightingPopupWindow.setPosition(this.mPoint[0] + ((float) this.mPosition[0]), this.mPoint[1] + ((float) this.mPosition[1]), currentLightingPoint[0] + ((float) this.mPosition[0]), currentLightingPoint[1] + ((float) this.mPosition[1]));
    }

    public void setPreventTouch(boolean preventTouch) {
        this.mPreventTouch = preventTouch;
    }

    public void surfaceCreated(SurfaceHolder holder) {
        this.mRenderThread.sendSurfaceCreated(holder);
        this.mInit = false;
    }

    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        this.mRenderThread.sendSurfaceChanged(width, height);
        if (!this.mInit) {
            this.mInit = true;
        }
    }

    public void surfaceDestroyed(SurfaceHolder holder) {
    }

    public void setRenderThread(RefocusRenderThread renderThread) {
        this.mRenderThread = renderThread;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }
}
