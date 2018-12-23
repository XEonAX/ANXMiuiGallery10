package com.miui.extraphoto.refocus.widget;

import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

public class RefocusGestureView extends View {
    private static final int COLOR = -855638017;
    private float mBigCircleSize;
    private float mBigCircleTargetSize;
    private float mCenterX;
    private float mCenterY;
    private int mHeight;
    private Paint mPaintInside;
    private Paint mPaintOutSide;
    private float mProgress = 0.0f;
    private float mSmallCircleSize;
    private ValueAnimator mValueAnimator;
    private int mWidth;

    public RefocusGestureView(Context context) {
        super(context);
        init();
    }

    public RefocusGestureView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public RefocusGestureView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        this.mValueAnimator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.mValueAnimator.setDuration(400);
        this.mValueAnimator.setInterpolator(new DecelerateInterpolator());
        this.mValueAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                RefocusGestureView.this.mProgress = ((Float) animation.getAnimatedValue()).floatValue();
                RefocusGestureView.this.invalidate();
            }
        });
        this.mPaintOutSide = new Paint(1);
        this.mPaintOutSide.setStyle(Style.STROKE);
        this.mPaintOutSide.setColor(COLOR);
        this.mPaintOutSide.setStrokeWidth(3.0f);
        this.mPaintInside = new Paint(1);
        this.mPaintInside.setStyle(Style.STROKE);
        this.mPaintInside.setColor(COLOR);
        this.mPaintInside.setStrokeWidth(4.0f);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mWidth = w;
        this.mHeight = h;
        this.mBigCircleSize = ((float) this.mWidth) * 0.9f;
        this.mBigCircleTargetSize = ((float) this.mWidth) * 0.8f;
        this.mSmallCircleSize = ((float) this.mWidth) * 0.1f;
        this.mCenterX = ((float) this.mWidth) / 2.0f;
        this.mCenterY = ((float) this.mHeight) / 2.0f;
    }

    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(this.mCenterX, this.mCenterY, valueByProgress(progressInRange(this.mProgress, 0.0f, 0.5f), this.mBigCircleSize, this.mBigCircleTargetSize) / 2.0f, this.mPaintOutSide);
        canvas.drawCircle(this.mCenterX, this.mCenterY, this.mSmallCircleSize / 2.0f, this.mPaintInside);
    }

    public void start() {
        this.mValueAnimator.cancel();
        this.mValueAnimator.start();
    }

    public void cancel() {
        this.mValueAnimator.cancel();
    }

    public void setAnimatorListener(AnimatorListener listener) {
        this.mValueAnimator.addListener(listener);
    }

    private static float valueByProgress(float progress, float min, float max) {
        return ((max - min) * progress) + min;
    }

    private static float progressInRange(float progress, float rangeStart, float rangeEnd) {
        if (progress <= rangeStart) {
            return 0.0f;
        }
        if (progress >= rangeEnd) {
            return 1.0f;
        }
        return (progress - rangeStart) / (rangeEnd - rangeStart);
    }
}
