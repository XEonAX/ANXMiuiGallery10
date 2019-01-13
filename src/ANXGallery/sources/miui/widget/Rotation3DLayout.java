package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.util.PackageConstants;

public class Rotation3DLayout extends FrameLayout {
    private static final int LAYOUT_DIRECTION_LTR = 0;
    private static final int LAYOUT_DIRECTION_RTL = 1;
    private static final int XK = 8388659;
    private static final int XL = 10;
    private static final float XM = d(10.0f);
    private static final int XN = 45;
    private static final int XQ = 300;
    private static final float[] XR = new float[]{1.0f, -0.5f, 0.25f, XM};
    private float XO;
    private float XP;
    private int XS;
    private float[] XT;
    private float[] XU;
    private float[] XV;
    private long XW;
    private boolean XX;
    private boolean XY;
    private boolean XZ;
    private boolean Ya;
    private float Yb;
    private float Yc;
    private Sensor Yd;
    private SensorManager Ye;
    private SensorEventListener Yf;
    private AnimatorSet ta;

    public static class LayoutParams extends android.widget.FrameLayout.LayoutParams {
        public int zdistance = 0;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Rotation3DLayout_Layout);
            this.zdistance = obtainStyledAttributes.getInt(R.styleable.Rotation3DLayout_Layout_layout_zdistance, this.zdistance);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        public LayoutParams(int i, int i2, int i3, int i4) {
            super(i, i2, i3);
            this.zdistance = i4;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(android.widget.FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public Rotation3DLayout(Context context) {
        this(context, null);
    }

    public Rotation3DLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Rotation3DLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.XO = 10.0f;
        this.XP = XM;
        this.XS = 300;
        this.XT = XR;
        this.XU = new float[XR.length];
        this.XV = new float[XR.length];
        this.XW = 0;
        this.XX = true;
        this.XY = false;
        this.XZ = false;
        this.Ya = false;
        this.Yf = new SensorEventListener() {
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[1];
                float f2 = sensorEvent.values[2];
                if (Math.abs(f) < 45.0f) {
                    Rotation3DLayout.this.Yb = (Rotation3DLayout.this.XO * f) / 45.0f;
                    Rotation3DLayout.this.setRotationX(Rotation3DLayout.this.Yb);
                }
                if (Math.abs(f2) < 45.0f) {
                    Rotation3DLayout.this.Yc = ((-Rotation3DLayout.this.XO) * f2) / 45.0f;
                    Rotation3DLayout.this.setRotationY(Rotation3DLayout.this.Yc);
                }
            }

            public void onAccuracyChanged(Sensor sensor, int i) {
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Rotation3DLayout, i, 0);
        setMaxRotationDegree(obtainStyledAttributes.getFloat(R.styleable.Rotation3DLayout_maxRotationDegree, this.XO));
        this.Ya = obtainStyledAttributes.getBoolean(R.styleable.Rotation3DLayout_autoGravityRotation, this.Ya);
        obtainStyledAttributes.recycle();
    }

    public void enableTouchRotation(boolean z) {
        this.XX = z;
    }

    public void enableAutoRotationByGravity(boolean z) {
        this.Ya = z;
        if (this.Ya) {
            startGravityDetection();
        } else {
            stopGravityDetection();
        }
    }

    public void startGravityDetection() {
        if (this.Ye == null) {
            this.Ye = (SensorManager) getContext().getSystemService("sensor");
        }
        if (this.Yd == null) {
            this.Yd = this.Ye.getDefaultSensor(3);
            this.Ye.registerListener(this.Yf, this.Yd, 1);
        }
    }

    public void stopGravityDetection() {
        if (this.Ye != null && this.Yd != null) {
            this.Ye.unregisterListener(this.Yf, this.Yd);
            this.Yd = null;
            this.Ye = null;
            resetRotation();
        }
    }

    protected void stopResetRotation() {
        if (this.ta != null) {
            this.ta.cancel();
        }
    }

    protected void resetRotation() {
        if (this.ta == null) {
            this.ta = new AnimatorSet();
            this.ta.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animator) {
                    Rotation3DLayout.this.XZ = true;
                }

                public void onAnimationEnd(Animator animator) {
                    Rotation3DLayout.this.XZ = false;
                }

                public void onAnimationCancel(Animator animator) {
                    Rotation3DLayout.this.XZ = false;
                }

                public void onAnimationRepeat(Animator animator) {
                }
            });
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setInterpolator(new DecelerateInterpolator(0.75f));
            valueAnimator.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Rotation3DLayout.this.a(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
                }
            });
            valueAnimator.setDuration((long) this.XS);
            ValueAnimator valueAnimator2 = new ValueAnimator();
            valueAnimator2.setInterpolator(new DecelerateInterpolator(0.75f));
            valueAnimator2.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Rotation3DLayout.this.b(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
                }
            });
            valueAnimator2.setDuration((long) this.XS);
            this.ta.playTogether(new Animator[]{valueAnimator, valueAnimator2});
        }
        this.ta.cancel();
        float rotationX = getRotationX();
        float rotationY = getRotationY();
        for (int i = 0; i < this.XT.length; i++) {
            this.XU[i] = this.Yb + (this.XT[i] * rotationX);
            this.XV[i] = this.Yc + (this.XT[i] * rotationY);
        }
        ((ValueAnimator) this.ta.getChildAnimations().get(0)).setFloatValues(this.XU);
        ((ValueAnimator) this.ta.getChildAnimations().get(1)).setFloatValues(this.XV);
        this.ta.start();
    }

    public void setResetAnimDuration(int i) {
        this.XS = i;
    }

    public void setResetBouncePatterns(float[] fArr) {
        if (fArr != null && fArr.length > 1) {
            this.XT = fArr;
            this.XU = new float[fArr.length];
            this.XV = new float[fArr.length];
        }
    }

    public void setMaxRotationDegree(float f) {
        this.XO = f;
        this.XP = d(f);
    }

    public float getMaxRotationDegree() {
        return this.XO;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.XX) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.XX) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                break;
            case 1:
            case 3:
                resetRotation();
                this.XY = false;
                break;
            case 2:
                if (SystemClock.elapsedRealtime() - this.XW > ((long) ViewConfiguration.getTapTimeout())) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
        }
        if (motionEvent.getAction() == 0) {
            this.XW = SystemClock.elapsedRealtime();
        }
        float min = Math.min(Math.max(XM, motionEvent.getX()), (float) getWidth());
        float min2 = Math.min(Math.max(XM, motionEvent.getY()), (float) getHeight());
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        if (this.ta != null) {
            this.ta.cancel();
        }
        a((((float) height) - min2) * this.XP, true);
        b((min - ((float) width)) * this.XP, true);
        this.XY = true;
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setRotationX(float f) {
        a(f, false);
    }

    public void setRotationY(float f) {
        b(f, false);
    }

    private void a(float f, boolean z) {
        if (Math.abs(f) > this.XO) {
            f = f > XM ? this.XO : -this.XO;
        }
        if (f != getRotationX()) {
            if (z || !(this.XY || this.XZ)) {
                super.setRotationX(f);
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
            }
        }
    }

    private void b(float f, boolean z) {
        if (Math.abs(f) > this.XO) {
            f = f > XM ? this.XO : -this.XO;
        }
        if (f != getRotationY()) {
            if (z || !(this.XY || this.XZ)) {
                super.setRotationY(f);
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
            }
        }
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            stopGravityDetection();
        } else if (this.Ya) {
            startGravityDetection();
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        stopGravityDetection();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = layoutParams.gravity;
                if (i6 == -1) {
                    i6 = XK;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i6, 0);
                i6 &= BaiduSceneResult.STREET_VIEW;
                absoluteGravity &= 7;
                if (absoluteGravity == 1) {
                    absoluteGravity = (((((paddingRight - paddingLeft) - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                } else if (absoluteGravity == 3) {
                    absoluteGravity = layoutParams.leftMargin + paddingLeft;
                } else if (absoluteGravity != 5) {
                    absoluteGravity = layoutParams.leftMargin + paddingLeft;
                } else {
                    absoluteGravity = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                }
                if (i6 == 16) {
                    i6 = (((((paddingBottom - paddingTop) - measuredHeight) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                } else if (i6 == 48) {
                    i6 = layoutParams.topMargin + paddingTop;
                } else if (i6 != 80) {
                    i6 = layoutParams.topMargin + paddingTop;
                } else {
                    i6 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                }
                absoluteGravity += a(layoutParams.zdistance, getRotationY());
                i6 -= a(layoutParams.zdistance, getRotationX());
                if (z || absoluteGravity != childAt.getLeft() || i6 != childAt.getTop()) {
                    childAt.layout(absoluteGravity, i6, measuredWidth + absoluteGravity, measuredHeight + i6);
                }
            }
        }
    }

    private int a(int i, float f) {
        return (int) (Math.sin(Math.toRadians((double) f)) * ((double) i));
    }

    private static float d(float f) {
        return f / (((float) PackageConstants.getCurrentApplication().getResources().getDisplayMetrics().widthPixels) / 2.0f);
    }

    protected android.widget.FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public android.widget.FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
