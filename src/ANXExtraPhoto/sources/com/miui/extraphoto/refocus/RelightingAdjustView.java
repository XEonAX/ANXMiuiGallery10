package com.miui.extraphoto.refocus;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.miui.extraphoto.R;

public class RelightingAdjustView extends View {
    private static final String TAG = "RelightingAdjustView";
    private float mAngle;
    private RectF mAvailableRect;
    private float mCenterX;
    private float mCenterY;
    private RectF mOvalRectF = new RectF();
    private Paint mPaint = new Paint(1);
    private float mRadius;
    private float mSphereRadius;
    private Paint mStrokePaint = new Paint(1);

    public RelightingAdjustView(Context context) {
        super(context);
        init();
    }

    public RelightingAdjustView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public RelightingAdjustView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        this.mStrokePaint.setColor(getResources().getColor(R.color.relighting_adjust_stroke));
        this.mStrokePaint.setStyle(Style.STROKE);
        this.mStrokePaint.setStrokeWidth(3.0f);
        this.mPaint.setColor(getResources().getColor(R.color.relighting_adjust_solid));
        this.mPaint.setStyle(Style.FILL);
        this.mRadius = (float) getResources().getDimensionPixelSize(R.dimen.relighting_adjust_radius);
        this.mSphereRadius = (float) getResources().getDimensionPixelSize(R.dimen.relighting_adjust_sphere_radius);
        this.mAvailableRect = new RectF();
    }

    protected void onDraw(Canvas canvas) {
        if (!this.mAvailableRect.isEmpty()) {
            canvas.save();
            canvas.clipRect(this.mAvailableRect);
            canvas.rotate(this.mAngle, this.mOvalRectF.centerX(), this.mOvalRectF.centerY());
            canvas.drawOval(this.mOvalRectF, this.mPaint);
            canvas.drawOval(this.mOvalRectF, this.mStrokePaint);
            canvas.restore();
        }
    }

    public void setPosition(float centerX, float centerY, float currentX, float currentY) {
        this.mCenterX = centerX;
        this.mCenterY = centerY;
        float distance = getDistance(centerX, centerY, currentX, currentY);
        this.mAngle = getAngle(centerX, centerY, currentX, currentY);
        float width = this.mRadius - (this.mRadius * (distance / this.mSphereRadius));
        float height = this.mRadius;
        if (width < 0.0f) {
            width = 0.0f;
        }
        this.mOvalRectF.set(currentX - width, currentY - height, currentX + width, currentY + height);
        invalidate();
    }

    public void setAvailableArea(float left, float top, float width, float height) {
        this.mAvailableRect.set(left, top, left + width, top + height);
    }

    public static float getDistance(float centerX, float centerY, float currentX, float currentY) {
        return (float) Math.hypot((double) (centerX - currentX), (double) (centerY - currentY));
    }

    public static float getAngle(float centerX, float centerY, float currentX, float currentY) {
        return (float) ((Math.toDegrees(Math.atan2((double) (centerY - currentY), (double) (centerX - currentX))) + 360.0d) % 360.0d);
    }

    public float getRadius() {
        return this.mRadius;
    }
}
