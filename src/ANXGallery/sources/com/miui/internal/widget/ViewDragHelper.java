package com.miui.internal.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.Arrays;

public class ViewDragHelper {
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final int vZ = 20;
    private static final int wa = 256;
    private static final int wb = 600;
    private static final Interpolator wu = new Interpolator() {
        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }
    };
    private int fE;
    private int qE = -1;
    private VelocityTracker qS;
    private int wc;
    private float[] wd;
    private float[] we;
    private float[] wf;
    private float[] wg;
    private int[] wh;
    private int[] wi;
    private int[] wj;
    private int wk;
    private float wl;
    private float wm;
    private int wn;
    private int wo;
    private Scroller wp;
    private final Callback wq;
    private View wr;
    private boolean ws;
    private final ViewGroup wt;
    private final Runnable wv = new Runnable() {
        public void run() {
            ViewDragHelper.this.A(0);
        }
    };

    public static abstract class Callback {
        public abstract boolean tryCaptureView(View view, int i);

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return 0;
        }
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    public static ViewDragHelper create(ViewGroup viewGroup, float f, Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.fE = (int) (((float) create.fE) * (1.0f / f));
        return create;
    }

    private ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (callback != null) {
            this.wt = viewGroup;
            this.wq = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.wn = (int) ((20.0f * context.getResources().getDisplayMetrics().density) + 0.5f);
            this.fE = viewConfiguration.getScaledTouchSlop();
            this.wl = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.wm = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.wp = new Scroller(context, wu);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    public void setMinVelocity(float f) {
        this.wm = f;
    }

    public float getMinVelocity() {
        return this.wm;
    }

    public int getViewDragState() {
        return this.wc;
    }

    public void setEdgeTrackingEnabled(int i) {
        this.wo = i;
    }

    public int getEdgeSize() {
        return this.wn;
    }

    public void captureChildView(View view, int i) {
        if (view.getParent() == this.wt) {
            this.wr = view;
            this.qE = i;
            this.wq.onViewCaptured(view, i);
            A(1);
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
        stringBuilder.append(this.wt);
        stringBuilder.append(")");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public View getCapturedView() {
        return this.wr;
    }

    public int getActivePointerId() {
        return this.qE;
    }

    public int getTouchSlop() {
        return this.fE;
    }

    public void cancel() {
        this.qE = -1;
        bV();
        if (this.qS != null) {
            this.qS.recycle();
            this.qS = null;
        }
    }

    public void abort() {
        cancel();
        if (this.wc == 2) {
            int currX = this.wp.getCurrX();
            int currY = this.wp.getCurrY();
            this.wp.abortAnimation();
            int currX2 = this.wp.getCurrX();
            int currY2 = this.wp.getCurrY();
            this.wq.onViewPositionChanged(this.wr, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        A(0);
    }

    public boolean smoothSlideViewTo(View view, int i, int i2) {
        this.wr = view;
        this.qE = -1;
        return b(i, i2, 0, 0);
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (this.ws) {
            return b(i, i2, (int) this.qS.getXVelocity(this.qE), (int) this.qS.getYVelocity(this.qE));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    private boolean b(int i, int i2, int i3, int i4) {
        int left = this.wr.getLeft();
        int top = this.wr.getTop();
        i -= left;
        i2 -= top;
        if (i == 0 && i2 == 0) {
            this.wp.abortAnimation();
            A(0);
            return false;
        }
        this.wp.startScroll(left, top, i, i2, a(this.wr, i, i2, i3, i4));
        A(2);
        return true;
    }

    private int a(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        i3 = b(i3, (int) this.wm, (int) this.wl);
        i4 = b(i4, (int) this.wm, (int) this.wl);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(i3);
        int abs4 = Math.abs(i4);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (i3 != 0) {
            f = ((float) abs3) / ((float) i5);
        } else {
            f = ((float) abs) / ((float) i6);
        }
        if (i4 != 0) {
            f2 = ((float) abs4) / ((float) i5);
        } else {
            f2 = ((float) abs2) / ((float) i6);
        }
        return (int) ((((float) a(i, i3, this.wq.getViewHorizontalDragRange(view))) * f) + (((float) a(i2, i4, this.wq.getViewVerticalDragRange(view))) * f2));
    }

    private int a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.wt.getWidth();
        float f = (float) (width / 2);
        f += a(Math.min(1.0f, ((float) Math.abs(i)) / ((float) width))) * f;
        i2 = Math.abs(i2);
        if (i2 > 0) {
            i = 4 * Math.round(1000.0f * Math.abs(f / ((float) i2)));
        } else {
            i = (int) (((((float) Math.abs(i)) / ((float) i3)) + 1.0f) * 256.0f);
        }
        return Math.min(i, wb);
    }

    private int b(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        if (abs <= i3) {
            return i;
        }
        if (i <= 0) {
            i3 = -i3;
        }
        return i3;
    }

    private float a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        if (abs <= f3) {
            return f;
        }
        if (f <= 0.0f) {
            f3 = -f3;
        }
        return f3;
    }

    private float a(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (this.ws) {
            this.wp.fling(this.wr.getLeft(), this.wr.getTop(), (int) this.qS.getXVelocity(this.qE), (int) this.qS.getYVelocity(this.qE), i, i3, i2, i4);
            A(2);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public boolean continueSettling(boolean z) {
        if (this.wc == 2) {
            boolean computeScrollOffset = this.wp.computeScrollOffset();
            int currX = this.wp.getCurrX();
            int currY = this.wp.getCurrY();
            int left = currX - this.wr.getLeft();
            int top = currY - this.wr.getTop();
            if (left != 0) {
                this.wr.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.wr.offsetTopAndBottom(top);
            }
            if (!(left == 0 && top == 0)) {
                this.wq.onViewPositionChanged(this.wr, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.wp.getFinalX() && currY == this.wp.getFinalY()) {
                this.wp.abortAnimation();
                computeScrollOffset = this.wp.isFinished();
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.wt.post(this.wv);
                } else {
                    A(0);
                }
            }
        }
        if (this.wc == 2) {
            return true;
        }
        return false;
    }

    private void a(float f, float f2) {
        this.ws = true;
        this.wq.onViewReleased(this.wr, f, f2);
        this.ws = false;
        if (this.wc == 1) {
            A(0);
        }
    }

    private void bV() {
        if (this.wd != null) {
            Arrays.fill(this.wd, 0.0f);
            Arrays.fill(this.we, 0.0f);
            Arrays.fill(this.wf, 0.0f);
            Arrays.fill(this.wg, 0.0f);
            Arrays.fill(this.wh, 0);
            Arrays.fill(this.wi, 0);
            Arrays.fill(this.wj, 0);
            this.wk = 0;
        }
    }

    private void y(int i) {
        if (this.wd != null && isPointerDown(i)) {
            this.wd[i] = 0.0f;
            this.we[i] = 0.0f;
            this.wf[i] = 0.0f;
            this.wg[i] = 0.0f;
            this.wh[i] = 0;
            this.wi[i] = 0;
            this.wj[i] = 0;
            this.wk = (~(1 << i)) & this.wk;
        }
    }

    private void z(int i) {
        if (this.wd == null || this.wd.length <= i) {
            i++;
            Object obj = new float[i];
            Object obj2 = new float[i];
            Object obj3 = new float[i];
            Object obj4 = new float[i];
            Object obj5 = new int[i];
            Object obj6 = new int[i];
            Object obj7 = new int[i];
            if (this.wd != null) {
                System.arraycopy(this.wd, 0, obj, 0, this.wd.length);
                System.arraycopy(this.we, 0, obj2, 0, this.we.length);
                System.arraycopy(this.wf, 0, obj3, 0, this.wf.length);
                System.arraycopy(this.wg, 0, obj4, 0, this.wg.length);
                System.arraycopy(this.wh, 0, obj5, 0, this.wh.length);
                System.arraycopy(this.wi, 0, obj6, 0, this.wi.length);
                System.arraycopy(this.wj, 0, obj7, 0, this.wj.length);
            }
            this.wd = obj;
            this.we = obj2;
            this.wf = obj3;
            this.wg = obj4;
            this.wh = obj5;
            this.wi = obj6;
            this.wj = obj7;
        }
    }

    private void a(float f, float f2, int i) {
        z(i);
        float[] fArr = this.wd;
        this.wf[i] = f;
        fArr[i] = f;
        fArr = this.we;
        this.wg[i] = f2;
        fArr[i] = f2;
        this.wh[i] = g((int) f, (int) f2);
        this.wk |= 1 << i;
    }

    private void b(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (B(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.wf[pointerId] = x;
                this.wg[pointerId] = y;
            }
        }
    }

    public boolean isPointerDown(int i) {
        return ((1 << i) & this.wk) != 0;
    }

    void A(int i) {
        if (this.wc != i) {
            this.wc = i;
            this.wq.onViewDragStateChanged(i);
            if (i == 0) {
                this.wr = null;
            }
        }
    }

    boolean b(View view, int i) {
        if (view == this.wr && this.qE == i) {
            return true;
        }
        if (view == null || !this.wq.tryCaptureView(view, i)) {
            return false;
        }
        this.qE = i;
        captureChildView(view, i);
        return true;
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3, int i4) {
        View view2 = view;
        boolean z2 = true;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view2.getScrollX();
            int scrollY = view2.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i3 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight()) {
                    int i6 = i4 + scrollY;
                    if (i6 >= childAt.getTop() && i6 < childAt.getBottom()) {
                        if (canScroll(childAt, true, i, i2, i5 - childAt.getLeft(), i6 - childAt.getTop())) {
                            return true;
                        }
                    }
                }
            }
        }
        if (!(z && (view2.canScrollHorizontally(-i) || view2.canScrollVertically(-i2)))) {
            z2 = false;
        }
        return z2;
    }

    public boolean shouldInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        }
        this.qS.addMovement(motionEvent);
        int pointerId;
        float x;
        switch (actionMasked) {
            case 0:
                float x2 = motionEvent.getX();
                float y = motionEvent.getY();
                pointerId = motionEvent.getPointerId(0);
                a(x2, y, pointerId);
                View findTopChildUnder = findTopChildUnder((int) x2, (int) y);
                if (findTopChildUnder == this.wr && this.wc == 2) {
                    b(findTopChildUnder, pointerId);
                }
                actionMasked = this.wh[pointerId];
                if ((this.wo & actionMasked) != 0) {
                    this.wq.onEdgeTouched(actionMasked & this.wo, pointerId);
                    break;
                }
                break;
            case 1:
            case 3:
                cancel();
                break;
            case 2:
                actionMasked = motionEvent.getPointerCount();
                for (actionIndex = 0; actionIndex < actionMasked; actionIndex++) {
                    int pointerId2 = motionEvent.getPointerId(actionIndex);
                    if (B(pointerId2)) {
                        x = motionEvent.getX(actionIndex);
                        float y2 = motionEvent.getY(actionIndex);
                        float f = x - this.wd[pointerId2];
                        float f2 = y2 - this.we[pointerId2];
                        b(f, f2, pointerId2);
                        if (this.wc != 1) {
                            View findTopChildUnder2 = findTopChildUnder((int) x, (int) y2);
                            if (findTopChildUnder2 != null && a(findTopChildUnder2, f, f2) && b(findTopChildUnder2, pointerId2)) {
                            }
                        }
                        b(motionEvent);
                        break;
                    }
                }
                b(motionEvent);
            case 5:
                actionMasked = motionEvent.getPointerId(actionIndex);
                x = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                a(x, y3, actionMasked);
                if (this.wc != 0) {
                    if (this.wc == 2) {
                        View findTopChildUnder3 = findTopChildUnder((int) x, (int) y3);
                        if (findTopChildUnder3 == this.wr) {
                            b(findTopChildUnder3, actionMasked);
                            break;
                        }
                    }
                }
                pointerId = this.wh[actionMasked];
                if ((this.wo & pointerId) != 0) {
                    this.wq.onEdgeTouched(pointerId & this.wo, actionMasked);
                    break;
                }
                break;
            case 6:
                y(motionEvent.getPointerId(actionIndex));
                break;
        }
        if (this.wc == 1) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0063  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void processTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        }
        this.qS.addMovement(motionEvent);
        int i = 0;
        float y;
        int pointerId;
        switch (actionMasked) {
            case 0:
                float x = motionEvent.getX();
                y = motionEvent.getY();
                pointerId = motionEvent.getPointerId(0);
                View findTopChildUnder = findTopChildUnder((int) x, (int) y);
                a(x, y, pointerId);
                b(findTopChildUnder, pointerId);
                actionMasked = this.wh[pointerId];
                if ((this.wo & actionMasked) != 0) {
                    this.wq.onEdgeTouched(actionMasked & this.wo, pointerId);
                    return;
                }
                return;
            case 1:
                if (this.wc == 1) {
                    bW();
                }
                cancel();
                return;
            case 2:
                if (this.wc != 1) {
                    actionMasked = motionEvent.getPointerCount();
                    while (i < actionMasked) {
                        actionIndex = motionEvent.getPointerId(i);
                        if (B(actionIndex)) {
                            float x2 = motionEvent.getX(i);
                            float y2 = motionEvent.getY(i);
                            float f = x2 - this.wd[actionIndex];
                            float f2 = y2 - this.we[actionIndex];
                            b(f, f2, actionIndex);
                            if (this.wc != 1) {
                                View findTopChildUnder2 = findTopChildUnder((int) x2, (int) y2);
                                if (a(findTopChildUnder2, f, f2) && b(findTopChildUnder2, actionIndex)) {
                                }
                            }
                            b(motionEvent);
                            return;
                        }
                        i++;
                    }
                    b(motionEvent);
                    return;
                } else if (B(this.qE)) {
                    actionMasked = motionEvent.findPointerIndex(this.qE);
                    if (actionMasked >= 0 && actionMasked < motionEvent.getPointerCount()) {
                        y = motionEvent.getX(actionMasked);
                        actionIndex = (int) (y - this.wf[this.qE]);
                        actionMasked = (int) (motionEvent.getY(actionMasked) - this.wg[this.qE]);
                        c(this.wr.getLeft() + actionIndex, this.wr.getTop() + actionMasked, actionIndex, actionMasked);
                        b(motionEvent);
                        return;
                    }
                    return;
                } else {
                    return;
                }
            case 3:
                if (this.wc == 1) {
                    a(0.0f, 0.0f);
                }
                cancel();
                return;
            case 5:
                actionMasked = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                a(x3, y3, actionMasked);
                if (this.wc == 0) {
                    b(findTopChildUnder((int) x3, (int) y3), actionMasked);
                    pointerId = this.wh[actionMasked];
                    if ((this.wo & pointerId) != 0) {
                        this.wq.onEdgeTouched(pointerId & this.wo, actionMasked);
                        return;
                    }
                    return;
                } else if (isCapturedViewUnder((int) x3, (int) y3)) {
                    b(this.wr, actionMasked);
                    return;
                } else {
                    return;
                }
            case 6:
                actionMasked = motionEvent.getPointerId(actionIndex);
                if (this.wc == 1 && actionMasked == this.qE) {
                    actionIndex = motionEvent.getPointerCount();
                    while (i < actionIndex) {
                        int pointerId2 = motionEvent.getPointerId(i);
                        if (pointerId2 != this.qE) {
                            if (findTopChildUnder((int) motionEvent.getX(i), (int) motionEvent.getY(i)) == this.wr && b(this.wr, pointerId2)) {
                                pointerId = this.qE;
                                if (pointerId == -1) {
                                    bW();
                                }
                            }
                        }
                        i++;
                    }
                    pointerId = -1;
                    if (pointerId == -1) {
                    }
                }
                y(actionMasked);
                return;
            default:
                return;
        }
    }

    private void b(float f, float f2, int i) {
        int i2 = 1;
        if (!a(f, f2, i, 1)) {
            i2 = 0;
        }
        if (a(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (a(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (a(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.wi;
            iArr[i] = iArr[i] | i2;
            this.wq.onEdgeDragStarted(i2, i);
        }
    }

    private boolean a(float f, float f2, int i, int i2) {
        f = Math.abs(f);
        f2 = Math.abs(f2);
        boolean z = false;
        if ((this.wh[i] & i2) != i2 || (this.wo & i2) == 0 || (this.wj[i] & i2) == i2 || (this.wi[i] & i2) == i2 || (f <= ((float) this.fE) && f2 <= ((float) this.fE))) {
            return false;
        }
        if (f >= f2 * 0.5f || !this.wq.onEdgeLock(i2)) {
            if ((this.wi[i] & i2) == 0 && f > ((float) this.fE)) {
                z = true;
            }
            return z;
        }
        int[] iArr = this.wj;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean a(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        boolean z2 = this.wq.getViewHorizontalDragRange(view) > 0;
        boolean z3 = this.wq.getViewVerticalDragRange(view) > 0;
        if (z2 && z3) {
            if ((f * f) + (f2 * f2) > ((float) (this.fE * this.fE))) {
                z = true;
            }
            return z;
        } else if (z2) {
            if (Math.abs(f2) < ((float) this.fE) && Math.abs(f) > ((float) this.fE)) {
                z = true;
            }
            return z;
        } else if (!z3) {
            return false;
        } else {
            if (Math.abs(f) < ((float) this.fE) && Math.abs(f2) > ((float) this.fE)) {
                z = true;
            }
            return z;
        }
    }

    public boolean checkTouchSlop(int i) {
        int length = this.wd.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i, int i2) {
        boolean z = false;
        if (!isPointerDown(i2)) {
            return false;
        }
        boolean z2 = (i & 1) == 1;
        boolean z3 = (i & 2) == 2;
        float f = this.wf[i2] - this.wd[i2];
        float f2 = this.wg[i2] - this.we[i2];
        if (z2 && z3) {
            if ((f * f) + (f2 * f2) > ((float) (this.fE * this.fE))) {
                z = true;
            }
            return z;
        } else if (z2) {
            if (Math.abs(f) > ((float) this.fE)) {
                z = true;
            }
            return z;
        } else if (!z3) {
            return false;
        } else {
            if (Math.abs(f2) > ((float) this.fE)) {
                z = true;
            }
            return z;
        }
    }

    public boolean isEdgeTouched(int i) {
        int length = this.wh.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (i & this.wh[i2]) != 0;
    }

    private void bW() {
        this.qS.computeCurrentVelocity(1000, this.wl);
        a(a(this.qS.getXVelocity(this.qE), this.wm, this.wl), a(this.qS.getYVelocity(this.qE), this.wm, this.wl));
    }

    private void c(int i, int i2, int i3, int i4) {
        int left = this.wr.getLeft();
        int top = this.wr.getTop();
        if (i3 != 0) {
            i = this.wq.clampViewPositionHorizontal(this.wr, i, i3);
            this.wr.offsetLeftAndRight(i - left);
        }
        int i5 = i;
        if (i4 != 0) {
            i2 = this.wq.clampViewPositionVertical(this.wr, i2, i4);
            this.wr.offsetTopAndBottom(i2 - top);
        }
        int i6 = i2;
        if (i3 != 0 || i4 != 0) {
            this.wq.onViewPositionChanged(this.wr, i5, i6, i5 - left, i6 - top);
        }
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.wr, i, i2);
    }

    public boolean isViewUnder(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public View findTopChildUnder(int i, int i2) {
        for (int childCount = this.wt.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.wt.getChildAt(this.wq.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int g(int i, int i2) {
        int i3;
        if (i < this.wt.getLeft() + this.wn) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        if (i2 < this.wt.getTop() + this.wn) {
            i3 |= 4;
        }
        if (i > this.wt.getRight() - this.wn) {
            i3 |= 2;
        }
        if (i2 > this.wt.getBottom() - this.wn) {
            return i3 | 8;
        }
        return i3;
    }

    private boolean B(int i) {
        if (isPointerDown(i)) {
            return true;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Ignoring pointerId=");
        stringBuilder.append(i);
        stringBuilder.append(" because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        Log.e(str, stringBuilder.toString());
        return false;
    }
}
