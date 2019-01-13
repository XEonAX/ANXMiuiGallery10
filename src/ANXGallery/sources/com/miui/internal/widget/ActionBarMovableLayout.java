package com.miui.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.widget.OverScroller;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import miui.app.ActionBar.OnScrollListener;

public class ActionBarMovableLayout extends ActionBarOverlayLayout {
    public static final int DEFAULT_SPRING_BACK_DURATION = 800;
    public static final int STATE_DOWN = 1;
    public static final int STATE_UNKNOWN = -1;
    public static final int STATE_UP = 0;
    private static final String TAG = ActionBarMovableLayout.class.getSimpleName();
    private static final boolean hz = false;
    private final int fE;
    private float mLastMotionX;
    private float mLastMotionY;
    private View qC;
    private OverScroller qD;
    private int qE;
    private boolean qF;
    private int qG;
    private int qH = -1;
    private final int qI;
    private final int qJ;
    private int qK = -1;
    private int qL;
    private int qM = -1;
    private int qN;
    private int qO = 8;
    private boolean qP;
    private boolean qQ = true;
    private boolean qR;
    private VelocityTracker qS;
    private OnScrollListener qT;

    public ActionBarMovableLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarMovableLayout, R.attr.actionBarMovableLayoutStyle, 0);
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            this.qL = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBarMovableLayout_overScrollRange, 0);
        }
        this.qK = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBarMovableLayout_scrollRange, -1);
        this.qM = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBarMovableLayout_scrollStart, -1);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.fE = viewConfiguration.getScaledTouchSlop();
        this.qD = new OverScroller(context);
        this.qI = viewConfiguration.getScaledMinimumFlingVelocity();
        this.qJ = viewConfiguration.getScaledMaximumFlingVelocity();
        setOverScrollMode(0);
        obtainStyledAttributes.recycle();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View findViewById = findViewById(R.id.content_mask);
        if (findViewById != null && findViewById.getVisibility() == 0) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 2 && this.qF) {
            return true;
        }
        action &= 255;
        if (action != 6) {
            switch (action) {
                case 0:
                    this.mLastMotionY = motionEvent.getY();
                    this.mLastMotionX = motionEvent.getX();
                    this.qE = motionEvent.getPointerId(0);
                    bd();
                    this.qS.addMovement(motionEvent);
                    this.qD.forceFinished(true);
                    break;
                case 1:
                case 3:
                    this.qF = false;
                    this.qE = -1;
                    bf();
                    onScrollEnd();
                    break;
                case 2:
                    if (shouldStartScroll(motionEvent)) {
                        this.qF = true;
                        be();
                        this.qS.addMovement(motionEvent);
                        onScrollBegin();
                        break;
                    }
                    break;
            }
        }
        a(motionEvent);
        return this.qF;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        be();
        this.qS.addMovement(motionEvent2);
        int computeVerticalVelocity;
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mLastMotionY = motionEvent.getY();
                this.qE = motionEvent2.getPointerId(0);
                break;
            case 1:
            case 3:
                if (this.qF) {
                    this.qF = false;
                    this.qE = -1;
                    computeVerticalVelocity = computeVerticalVelocity();
                    if (Math.abs(computeVerticalVelocity) <= this.qI) {
                        if (!this.qD.springBack(0, this.qG, 0, 0, 0, getScrollRange())) {
                            springBack();
                            break;
                        }
                        invalidate();
                        break;
                    }
                    fling(computeVerticalVelocity);
                    break;
                }
                break;
            case 2:
                if (!this.qF) {
                    if (shouldStartScroll(motionEvent)) {
                        this.qF = true;
                        be();
                        this.qS.addMovement(motionEvent2);
                        onScrollBegin();
                        break;
                    }
                }
                computeVerticalVelocity = motionEvent2.findPointerIndex(this.qE);
                if (computeVerticalVelocity != -1) {
                    float y = motionEvent2.getY(computeVerticalVelocity);
                    boolean overScrollBy = overScrollBy(0, (int) (y - this.mLastMotionY), 0, this.qG, 0, getScrollRange(), 0, getOverScrollDistance(), true);
                    this.mLastMotionY = y;
                    if (overScrollBy) {
                        if (this.qG == 0) {
                            this.qF = false;
                            this.qE = -1;
                            motionEvent2.setAction(0);
                            dispatchTouchEvent(motionEvent);
                        }
                        this.qS.clear();
                        break;
                    }
                }
                return false;
                break;
            case 5:
                computeVerticalVelocity = motionEvent.getActionIndex();
                this.mLastMotionY = (float) ((int) motionEvent2.getY(computeVerticalVelocity));
                this.qE = motionEvent2.getPointerId(computeVerticalVelocity);
                break;
            case 6:
                a(motionEvent);
                this.mLastMotionY = (float) ((int) motionEvent2.getY(motionEvent2.findPointerIndex(this.qE)));
                break;
        }
        return true;
    }

    public void computeScroll() {
        if (this.qD.computeScrollOffset()) {
            int i = this.qG;
            int currY = this.qD.getCurrY();
            if (i != currY) {
                overScrollBy(0, currY - i, 0, this.qG, 0, getScrollRange(), 0, getOverScrollDistance(), true);
            }
            postInvalidateOnAnimation();
        } else if (this.qR) {
            springBack();
            this.qR = false;
        }
    }

    protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        i = getOverScrollMode();
        boolean z2 = true;
        boolean z3 = i == 0 || (i == 1 && (computeVerticalScrollRange() > computeVerticalScrollExtent()));
        i2 += i4;
        if (!z3) {
            i8 = 0;
        }
        i = i8 + i6;
        if (i2 <= i) {
            if (i2 < 0) {
                i = 0;
            } else {
                i = i2;
                z2 = false;
            }
        }
        onOverScrolled(0, i, false, z2);
        return z2;
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        onScroll((float) i2);
        this.qG = i2;
        if (this.qG == 0 && z2) {
            i = computeVerticalVelocity();
            if (Math.abs(i) > this.qI * 2 && this.qT != null) {
                this.qT.onFling(((float) (-i)) * 0.2f, 500);
            }
        }
    }

    public void setInitialMotionY(int i) {
        this.qM = i;
    }

    public void setOverScrollDistance(int i) {
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            this.qL = i;
        }
    }

    public int getOverScrollDistance() {
        return DeviceHelper.FEATURE_WHOLE_ANIM ? this.qL : 0;
    }

    public void setScrollRange(int i) {
        this.qK = i;
    }

    public int getScrollRange() {
        return this.qK;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.qT = onScrollListener;
    }

    public void setScrollStart(int i) {
        this.qN = i;
    }

    public int getScrollStart() {
        return this.qN;
    }

    public void setSpringBackEnabled(boolean z) {
        this.qQ = z;
    }

    private boolean b(View view, int i, int i2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        int y = (int) view.getY();
        int x = (int) view.getX();
        int y2 = (int) (view.getY() + ((float) view.getHeight()));
        int x2 = (int) (view.getX() + ((float) view.getWidth()));
        if (view == this.qC) {
            int top = this.mActionBarTop.getTop();
            y += top;
            y2 += top;
        }
        if (i2 >= y && i2 < y2 && i >= x && i < x2) {
            z = true;
        }
        return z;
    }

    private void bd() {
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        } else {
            this.qS.clear();
        }
    }

    private void be() {
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        }
    }

    private void bf() {
        if (this.qS != null) {
            this.qS.recycle();
            this.qS = null;
        }
    }

    void bg() {
        this.qC = this.mActionBarTop.getTabContainer();
    }

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (view != this.mContentView) {
            super.measureChildWithMargins(view, i, i2, i3, i4);
            return;
        }
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, (((getPaddingLeft() + getPaddingRight()) + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin) + i2, marginLayoutParams.width), getChildMeasureSpec(i3, ((((((getPaddingTop() + getPaddingBottom()) + marginLayoutParams.bottomMargin) + this.mActionBarView.getMeasuredHeight()) + ((MarginLayoutParams) this.mActionBarView.getLayoutParams()).topMargin) - getScrollRange()) - getOverScrollDistance()) - this.qN, marginLayoutParams.height));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.qP || bh()) {
            z = true;
        } else {
            z = false;
        }
        if (!this.qP) {
            if (this.qM < 0) {
                this.qM = this.qK;
            }
            this.qG = this.qM;
            this.qP = true;
        }
        if (z) {
            applyTranslationY((float) this.qG);
        }
    }

    protected int computeVerticalScrollExtent() {
        return 0;
    }

    protected int computeVerticalScrollRange() {
        return getScrollRange();
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
    }

    protected int computeVerticalVelocity() {
        VelocityTracker velocityTracker = this.qS;
        velocityTracker.computeCurrentVelocity(1000, (float) this.qJ);
        return (int) velocityTracker.getYVelocity(this.qE);
    }

    protected void fling(int i) {
        int overScrollDistance = getOverScrollDistance();
        this.qD.fling(0, this.qG, 0, i, 0, 0, 0, getScrollRange(), 0, overScrollDistance);
        this.qR = true;
        postInvalidate();
    }

    protected boolean shouldStartScroll(MotionEvent motionEvent) {
        int i = this.qE;
        int i2 = 0;
        if (i == -1) {
            return false;
        }
        i = motionEvent.findPointerIndex(i);
        if (i == -1) {
            Log.w(TAG, "invalid pointer index");
            return false;
        }
        float x = motionEvent.getX(i);
        float y = motionEvent.getY(i);
        i = (int) (y - this.mLastMotionY);
        int abs = Math.abs(i);
        int abs2 = (int) Math.abs(x - this.mLastMotionX);
        int i3 = (int) x;
        int i4 = (int) y;
        int i5 = (b(this.mContentView, i3, i4) || b(this.qC, i3, i4)) ? true : 0;
        boolean z = i5 != 0 && abs > this.fE && abs > abs2 && (this.qG != 0 ? i <= 0 || this.qG < getOverScrollDistance() || this.qT == null || !this.qT.onContentScrolled() : i >= 0 && (this.qT == null || !this.qT.onContentScrolled()));
        if (z) {
            this.mLastMotionY = y;
            this.mLastMotionX = x;
            if (i > 0) {
                i2 = 1;
            }
            this.qH = i2;
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
        return z;
    }

    protected void onScrollBegin() {
        if (this.qT != null) {
            this.qT.onStartScroll();
        }
    }

    protected void onScroll(float f) {
        applyTranslationY(f);
        if (this.qT != null) {
            this.qT.onScroll(this.qH, f / ((float) this.qK));
        }
    }

    protected void onScrollEnd() {
        this.qH = -1;
        if (this.qT != null) {
            this.qT.onStopScroll();
        }
    }

    protected float motionToTranslation(float f) {
        float f2 = ((((float) (-this.qL)) + f) - ((float) this.qK)) - ((float) this.qN);
        bg();
        if (this.qC == null || this.qC.getVisibility() != 0) {
            return f2;
        }
        return f2 - ((float) this.qC.getHeight());
    }

    protected void applyTranslationY(float f) {
        f = motionToTranslation(f);
        this.mContentView.setTranslationY(f);
        bg();
        if (this.qC != null) {
            this.qC.setTranslationY(f);
        }
    }

    protected void springBack() {
        if (this.qQ) {
            int scrollRange = getScrollRange();
            this.qD.startScroll(0, this.qG, 0, this.qG > scrollRange / 2 ? scrollRange - this.qG : -this.qG, DEFAULT_SPRING_BACK_DURATION);
            postInvalidateOnAnimation();
        }
    }

    private void a(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.qE) {
            action = action == 0 ? 1 : 0;
            this.mLastMotionY = (float) ((int) motionEvent.getY(action));
            this.qE = motionEvent.getPointerId(action);
            if (this.qS != null) {
                this.qS.clear();
            }
        }
    }

    private boolean bh() {
        bg();
        if (this.qC != null) {
            int visibility = this.qC.getVisibility();
            if (visibility != this.qO) {
                this.qO = visibility;
                return true;
            }
        }
        return false;
    }

    public void setMotionY(int i) {
        this.qG = i;
        onScroll((float) i);
    }
}
