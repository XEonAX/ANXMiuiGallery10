package miui.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.widget.ViewDragHelper;
import com.miui.internal.widget.ViewDragHelper.Callback;
import miui.R;
import miui.util.ViewUtils;

public class NavigationLayout extends ViewGroup {
    public static final int ABSOLUTE = 0;
    public static final int DRAWER_ENABLED_LANDSCAPE = 2;
    public static final int DRAWER_ENABLED_NONE = 0;
    public static final int DRAWER_ENABLED_PORTRAIT = 1;
    public static final int DRAWER_MODE_CONTENT_SQUEEZED = 2;
    public static final int DRAWER_MODE_OVERLAY = 0;
    public static final int DRAWER_MODE_PUSHED_AWAY = 1;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNLOCKED = 0;
    public static final int RELATIVE_TO_PARENT = 1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final int Uw = 400;
    private static final int Ux = -856295433;
    private static final int Uy = 150;
    private static final float Uz = 0.5f;
    private float Nj;
    private View Rn;
    private final ViewDragHelper UB;
    private int UC;
    private boolean UD;
    private int UE;
    private View UF;
    private WidthDescription UH;
    private WidthDescription UI;
    private Drawable UJ;
    private int UL;
    private Drawable UM;
    private float UN;
    private boolean UO;
    private int UP;
    private Paint UQ;
    private NavigationListener UR;
    private boolean US;
    private int UT;
    private Runnable UU;
    private float UV;
    private float UW;
    private ValueAnimator UX;
    private AnimatorUpdateListener Va;
    private View Vb;
    private boolean Vc;
    private Rect sY;

    protected static class LayoutParams extends MarginLayoutParams {
        float NM;
        boolean Ve;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public interface NavigationListener {
        void onDrawerClosed();

        void onDrawerDragStateChanged(int i);

        void onDrawerEnableStateChange(boolean z);

        void onDrawerOpened();

        void onDrawerSlide(float f);
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: j */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: ar */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        float NM;

        /* synthetic */ SavedState(Parcelable parcelable, AnonymousClass1 anonymousClass1) {
            this(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.NM = parcel.readFloat();
        }

        private SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.NM);
        }
    }

    private class ViewDragCallback extends Callback {
        private ViewDragCallback() {
        }

        /* synthetic */ ViewDragCallback(NavigationLayout navigationLayout, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean tryCaptureView(View view, int i) {
            return view == NavigationLayout.this.UF && NavigationLayout.this.getDrawerLockMode() == 0;
        }

        public int getViewHorizontalDragRange(View view) {
            return view == NavigationLayout.this.UF ? NavigationLayout.this.UF.getWidth() : 0;
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            if (view == NavigationLayout.this.UF) {
                int width = NavigationLayout.this.UF.getWidth();
                NavigationLayout.this.c(((float) (NavigationLayout.this.Vc ? NavigationLayout.this.getWidth() - i : i + width)) / ((float) width));
                NavigationLayout.this.invalidate();
            }
        }

        public void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).Ve = false;
        }

        public void onViewReleased(View view, float f, float f2) {
            int width;
            f2 = NavigationLayout.this.fa();
            int width2 = view.getWidth();
            Object obj = null;
            if (NavigationLayout.this.Vc) {
                width = NavigationLayout.this.getWidth() - width2;
            } else {
                width = 0;
            }
            width2 = NavigationLayout.this.Vc ? NavigationLayout.this.getWidth() : -width2;
            if (NavigationLayout.this.Vc ? f >= 0.0f : f <= 0.0f) {
                obj = 1;
            }
            if (obj != null || (f == 0.0f && f2 > NavigationLayout.Uz)) {
                width2 = width;
            }
            NavigationLayout.this.UB.settleCapturedViewAt(width2, view.getTop());
            NavigationLayout.this.invalidate();
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            i2 = NavigationLayout.this.Vc ? NavigationLayout.this.getWidth() - view.getWidth() : -view.getWidth();
            return Math.max(i2, Math.min(i, view.getWidth() + i2));
        }

        public void onEdgeTouched(int i, int i2) {
            NavigationLayout.this.postDelayed(NavigationLayout.this.UU, 150);
        }

        public void onEdgeDragStarted(int i, int i2) {
            if (NavigationLayout.this.getDrawerLockMode() == 0) {
                NavigationLayout.this.UB.captureChildView(NavigationLayout.this.UF, i2);
                NavigationLayout.this.removeCallbacks(NavigationLayout.this.UU);
            }
        }

        public void onViewDragStateChanged(int i) {
            if (NavigationLayout.this.UR != null) {
                if (i == 0) {
                    if (NavigationLayout.this.isNavigationDrawerOpen()) {
                        NavigationLayout.this.UR.onDrawerOpened();
                    } else {
                        NavigationLayout.this.UR.onDrawerClosed();
                    }
                }
                NavigationLayout.this.UR.onDrawerDragStateChanged(i);
            }
        }
    }

    private static class WidthDescription {
        public int type;
        public float value;

        private WidthDescription() {
        }

        static WidthDescription a(TypedValue typedValue, Resources resources) {
            WidthDescription widthDescription = new WidthDescription();
            if (typedValue == null) {
                widthDescription.type = 1;
                widthDescription.value = 0.3f;
            } else if (typedValue.type == 6) {
                widthDescription.type = 1;
                widthDescription.value = TypedValue.complexToFloat(typedValue.data);
                return widthDescription;
            } else if (typedValue.type == 4) {
                widthDescription.type = 1;
                widthDescription.value = typedValue.getFloat();
                return widthDescription;
            } else if (typedValue.type == 5) {
                widthDescription.type = 0;
                widthDescription.value = (float) TypedValue.complexToDimensionPixelSize(typedValue.data, resources.getDisplayMetrics());
                return widthDescription;
            }
            widthDescription.type = 1;
            widthDescription.value = 0.3f;
            return widthDescription;
        }
    }

    public NavigationLayout(Context context) {
        this(context, null);
    }

    public NavigationLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationLayoutStyle);
    }

    public NavigationLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.sY = new Rect();
        this.UP = Ux;
        this.UQ = new Paint();
        this.US = true;
        this.UT = 0;
        this.UU = new Runnable() {
            public void run() {
                View a = NavigationLayout.this.UF;
                int edgeSize = NavigationLayout.this.UB.getEdgeSize();
                int i = 0;
                if (NavigationLayout.this.Vc) {
                    if (a != null) {
                        i = NavigationLayout.this.getWidth();
                    }
                    i -= edgeSize;
                } else {
                    if (a != null) {
                        i = -a.getWidth();
                    }
                    i += edgeSize;
                }
                if (a != null && a.getLeft() < i && NavigationLayout.this.getDrawerLockMode() == 0) {
                    LayoutParams layoutParams = (LayoutParams) a.getLayoutParams();
                    NavigationLayout.this.UB.smoothSlideViewTo(a, i, a.getTop());
                    layoutParams.Ve = true;
                    NavigationLayout.this.invalidate();
                    NavigationLayout.this.eY();
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NavigationLayout, i, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.NavigationLayout_navigationDivider);
        if (drawable != null) {
            setDivider(drawable);
        }
        drawable = obtainStyledAttributes.getDrawable(R.styleable.NavigationLayout_navigationShadow);
        if (drawable != null) {
            setNavigationShadow(drawable);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationLayout_navigationDividerWidth, 0);
        if (dimensionPixelSize != 0) {
            setDividerWidth(dimensionPixelSize);
        }
        this.UP = obtainStyledAttributes.getColor(R.styleable.NavigationLayout_navigationScrimColor, Ux);
        this.UC = obtainStyledAttributes.getInt(R.styleable.NavigationLayout_drawerEnabledOrientation, 0);
        this.UH = WidthDescription.a(obtainStyledAttributes.peekValue(R.styleable.NavigationLayout_portraitNavigationWidth), getResources());
        this.UI = WidthDescription.a(obtainStyledAttributes.peekValue(R.styleable.NavigationLayout_landscapeNavigationWidth), getResources());
        this.UE = obtainStyledAttributes.getInt(R.styleable.NavigationLayout_drawerMode, 0);
        obtainStyledAttributes.recycle();
        this.UB = ViewDragHelper.create(this, Uz, new ViewDragCallback(this, null));
        this.UB.setMinVelocity(400.0f * getResources().getDisplayMetrics().density);
        setFocusableInTouchMode(true);
    }

    public void onRtlPropertiesChanged(int i) {
        int i2 = 1;
        this.Vc = i == 1;
        ViewDragHelper viewDragHelper = this.UB;
        if (this.Vc) {
            i2 = 2;
        }
        viewDragHelper.setEdgeTrackingEnabled(i2);
    }

    public void setNavigationListener(NavigationListener navigationListener) {
        this.UR = navigationListener;
    }

    public int getDrawerEnabledOrientation() {
        return this.UC;
    }

    public void setDrawerEnabledOrientation(int i) {
        this.UC = i;
        requestLayout();
    }

    public void setNavigationShadow(Drawable drawable) {
        this.UM = drawable;
        invalidate();
    }

    public void setNavigationShadow(int i) {
        setNavigationShadow(getResources().getDrawable(i));
    }

    public void setDivider(Drawable drawable) {
        if (drawable != null) {
            this.UL = drawable.getIntrinsicHeight();
        } else {
            this.UL = 0;
        }
        this.UJ = drawable;
        requestLayout();
        invalidate();
    }

    public int getDividerWidth() {
        return this.UL;
    }

    public void setDividerWidth(int i) {
        this.UL = i;
        requestLayout();
        invalidate();
    }

    private void a(View view, boolean z) {
        if (view.isEnabled() != z) {
            if (this.Vb == null || this.Vb == view || this.Vb.isEnabled() || z) {
                view.setEnabled(z);
                float f = 0.0f;
                if (this.UX != null) {
                    this.UX.cancel();
                    ValueAnimator valueAnimator = this.UX;
                    float[] fArr = new float[2];
                    fArr[0] = z ? 1.0f : 0.0f;
                    fArr[1] = z ? 0.0f : 1.0f;
                    valueAnimator.setFloatValues(fArr);
                } else {
                    float[] fArr2 = new float[2];
                    fArr2[0] = z ? 1.0f : 0.0f;
                    fArr2[1] = z ? 0.0f : 1.0f;
                    this.UX = ValueAnimator.ofFloat(fArr2);
                }
                this.Vb = view;
                this.UX.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 500 : 0);
                this.UX.addUpdateListener(eX());
                if (z) {
                    f = 1.0f;
                }
                this.UW = f;
                this.UX.start();
            }
        }
    }

    public void setNavigationEanbled(boolean z) {
        a(this.UF, z);
    }

    public void setContentEnabled(boolean z) {
        a(this.Rn, z);
    }

    public void setDrawerMode(int i) {
        this.UE = i;
        requestLayout();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!(this.Vb == null || this.Vb.isEnabled())) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int left = this.Vb.getLeft();
            int right = this.Vb.getRight();
            int top = this.Vb.getTop();
            int bottom = this.Vb.getBottom();
            if (left < x && x < right && top < y && y < bottom) {
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private AnimatorUpdateListener eX() {
        if (this.Va == null) {
            this.Va = new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (NavigationLayout.this.Vb != null) {
                        NavigationLayout.this.UW = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        NavigationLayout.this.postInvalidateOnAnimation(NavigationLayout.this.Vb.getLeft(), NavigationLayout.this.Vb.getTop(), NavigationLayout.this.Vb.getRight(), NavigationLayout.this.Vb.getBottom());
                    }
                }
            };
        }
        return this.Va;
    }

    private void bj() {
        if (this.Rn == null) {
            this.Rn = findViewById(R.id.content);
            this.UF = findViewById(R.id.navigation);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        bj();
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00b8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z = false;
        this.US = false;
        bj();
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        int i4 = getResources().getConfiguration().orientation == 2 ? 1 : false;
        WidthDescription widthDescription = i4 != 0 ? this.UI : this.UH;
        switch (widthDescription.type) {
            case 0:
                size = (int) widthDescription.value;
                break;
            case 1:
                size = (int) (widthDescription.value * ((float) size));
                break;
            default:
                size = 0;
                break;
        }
        measureChild(this.UF, MeasureSpec.makeMeasureSpec(size, 1073741824), MeasureSpec.makeMeasureSpec(size2, 1073741824));
        if (this.UE == 2) {
            LayoutParams layoutParams = (LayoutParams) this.UF.getLayoutParams();
            if (layoutParams.NM > Uz) {
                size2 = this.UF.getMeasuredWidth();
            } else {
                size2 = 0;
            }
            this.Rn.setAlpha(Math.abs(layoutParams.NM - Uz) / Uz);
            i3 = size2;
        } else {
            i3 = false;
        }
        if ((this.UC & 2) != 0 && i4 != 0) {
            measureChildWithMargins(this.Rn, i, i3, i2, 0);
        } else if ((this.UC & 1) == 0 || i4 != 0) {
            measureChildWithMargins(this.Rn, i, this.UF.getMeasuredWidth() + this.UL, i2, 0);
            if (this.UD == z) {
                this.UD = z;
                if (this.UR != null) {
                    this.UR.onDrawerEnableStateChange(z);
                    return;
                }
                return;
            }
            return;
        } else {
            measureChildWithMargins(this.Rn, i, i3, i2, 0);
        }
        z = true;
        if (this.UD == z) {
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i;
        int i6;
        if (this.UD) {
            int i7;
            int measuredWidth = this.UF.getMeasuredWidth();
            LayoutParams layoutParams = (LayoutParams) this.UF.getLayoutParams();
            float f = (float) (-measuredWidth);
            float f2 = (float) measuredWidth;
            i6 = (int) ((layoutParams.NM * f2) + f);
            ViewUtils.layoutChildView(this, this.UF, i6, i2, i6 + measuredWidth, i2 + this.UF.getMeasuredHeight());
            measuredWidth = this.Rn.getMeasuredWidth() + i5;
            if (this.UE == 1) {
                int i8 = (int) (f * layoutParams.NM);
                View view = this.Rn;
                if (this.Vc) {
                    i8 = 0 - i8;
                }
                view.setScrollX(i8);
            } else if (this.UE == 0) {
                this.Rn.setScrollX(0);
            } else if (this.UE == 2) {
                i7 = i3;
                i6 = (int) (((float) i5) + (f2 * layoutParams.NM));
                ViewUtils.layoutChildView(this, this.Rn, i6, i2, i7, i2 + this.Rn.getMeasuredHeight());
                return;
            }
            i7 = measuredWidth;
            i6 = i5;
            ViewUtils.layoutChildView(this, this.Rn, i6, i2, i7, i2 + this.Rn.getMeasuredHeight());
            return;
        }
        int i9 = i2;
        ViewUtils.layoutChildView(this, this.UF, i5, i9, i5 + this.UF.getMeasuredWidth(), i2 + this.UF.getMeasuredHeight());
        i6 = (this.UF.getMeasuredWidth() + i5) + this.UL;
        ViewUtils.layoutChildView(this, this.Rn, i6, i9, i6 + this.Rn.getMeasuredWidth(), i2 + this.Rn.getMeasuredHeight());
        this.Rn.setScrollX(0);
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.UD) {
            c(canvas);
            e(canvas);
            return;
        }
        f(canvas);
        d(canvas);
    }

    public void setScrimColor(int i) {
        this.UP = i;
    }

    private void c(Canvas canvas) {
        if (this.UV > 0.0f) {
            this.UQ.setColor((((int) (((float) ((this.UP & -16777216) >>> 24)) * this.UV)) << 24) | (this.UP & 16777215));
            canvas.drawRect((float) (this.Vc ? 0 : this.UF.getRight()), 0.0f, (float) (this.Vc ? this.UF.getLeft() : getWidth()), (float) getHeight(), this.UQ);
        }
    }

    private void d(Canvas canvas) {
        if (this.UW > 0.0f && this.Vb != null) {
            this.UQ.setColor((((int) (((float) ((this.UP & -16777216) >>> 24)) * this.UW)) << 24) | (this.UP & 16777215));
            canvas.drawRect((float) this.Vb.getLeft(), (float) this.Vb.getTop(), (float) this.Vb.getRight(), (float) this.Vb.getBottom(), this.UQ);
        }
    }

    private void e(Canvas canvas) {
        if (this.UM != null) {
            int intrinsicWidth = this.UM.getIntrinsicWidth();
            int left = this.Vc ? this.UF.getLeft() - intrinsicWidth : this.UF.getRight();
            this.UM.setBounds(left, this.UF.getTop(), intrinsicWidth + left, this.UF.getBottom());
            this.UM.draw(canvas);
        }
    }

    private void f(Canvas canvas) {
        Rect rect = this.sY;
        int measuredWidth = this.UF.getMeasuredWidth();
        if (this.Vc) {
            measuredWidth = (getWidth() - measuredWidth) - this.UL;
        }
        rect.set(measuredWidth, getPaddingTop(), this.UL + measuredWidth, getBottom() - getPaddingBottom());
        Drawable drawable = this.UJ;
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean shouldInterceptTouchEvent = this.UB.shouldInterceptTouchEvent(motionEvent);
        if (!this.UD || this.UT != 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        boolean z;
        boolean z2 = true;
        switch (motionEvent.getActionMasked()) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.Nj = x;
                this.UN = y;
                z = fa() > 0.0f && this.UB.findTopChildUnder((int) x, (int) y) == this.Rn;
                this.UO = false;
                break;
            case 1:
            case 3:
                removeCallbacks(this.UU);
                fb();
                this.UO = false;
                break;
            case 2:
                if (this.UB.checkTouchSlop(3)) {
                    removeCallbacks(this.UU);
                    break;
                }
                break;
        }
        z = false;
        if (!(shouldInterceptTouchEvent || z || eZ() || this.UO)) {
            z2 = false;
        }
        return z2;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.UB.processTouchEvent(motionEvent);
        if (!this.UD || this.UT != 0) {
            return super.onTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z = false;
        if (actionMasked != 3) {
            switch (actionMasked) {
                case 0:
                    this.Nj = x;
                    this.UN = y;
                    this.UO = false;
                    break;
                case 1:
                    float f = x - this.Nj;
                    float f2 = y - this.UN;
                    int touchSlop = this.UB.getTouchSlop();
                    View findTopChildUnder = this.UB.findTopChildUnder((int) x, (int) y);
                    if (findTopChildUnder == null || findTopChildUnder != this.Rn || (f * f) + (f2 * f2) >= ((float) (touchSlop * touchSlop)) || !isNavigationDrawerOpen()) {
                        z = true;
                    }
                    removeCallbacks(this.UU);
                    if (!z) {
                        if (this.UT == 0) {
                            closeNavigationDrawer(true);
                            break;
                        }
                    }
                    fb();
                    break;
                    break;
            }
        }
        fb();
        this.UO = false;
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        int i;
        ViewDragHelper viewDragHelper = this.UB;
        if (this.Vc) {
            i = 2;
        } else {
            i = 1;
        }
        if (!viewDragHelper.isEdgeTouched(i)) {
            super.requestDisallowInterceptTouchEvent(z);
        }
        if (z) {
            fb();
        }
    }

    private void eY() {
        if (!this.UO) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.UO = true;
        }
    }

    private boolean eZ() {
        return ((LayoutParams) this.UF.getLayoutParams()).Ve;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.UE == 2) {
            this.UV = 0.0f;
        } else {
            this.UV = fa();
        }
        if (this.UB.continueSettling(true)) {
            postInvalidateOnAnimation();
        }
    }

    private float fa() {
        return ((LayoutParams) this.UF.getLayoutParams()).NM;
    }

    private void c(float f) {
        LayoutParams layoutParams = (LayoutParams) this.UF.getLayoutParams();
        if (f != layoutParams.NM) {
            layoutParams.NM = f;
            if (this.UR != null) {
                this.UR.onDrawerSlide(f);
            }
            if (this.UE == 0) {
                this.Rn.setScrollX(0);
            } else if (this.UE == 1) {
                int width = this.UF.getWidth();
                View view = this.Rn;
                if (!this.Vc) {
                    width = -width;
                }
                view.setScrollX((int) (((float) width) * layoutParams.NM));
            } else {
                requestLayout();
            }
        }
    }

    public void setDrawerLockMode(int i) {
        if (this.UT != i) {
            this.UT = i;
            if (i != 0) {
                this.UB.cancel();
            }
            switch (i) {
                case 1:
                    closeNavigationDrawer(false);
                    break;
                case 2:
                    openNavigationDrawer(false);
                    break;
            }
        }
    }

    public int getDrawerLockMode() {
        return this.UT;
    }

    public void openNavigationDrawer(boolean z) {
        if (this.US) {
            z = false;
        }
        if (!z) {
            c(1.0f);
            if (this.UR != null) {
                this.UR.onDrawerOpened();
            }
        } else if (this.UD) {
            this.UB.smoothSlideViewTo(this.UF, 0, this.UF.getTop());
        } else {
            return;
        }
        invalidate();
    }

    private void fb() {
        LayoutParams layoutParams = (LayoutParams) this.UF.getLayoutParams();
        if (layoutParams.Ve) {
            layoutParams.Ve = false;
            closeNavigationDrawer(true);
        }
    }

    public void closeNavigationDrawer(boolean z) {
        if (this.US) {
            z = false;
        }
        if (!z) {
            c(0.0f);
            if (this.UR != null) {
                this.UR.onDrawerClosed();
            }
        } else if (this.UD) {
            this.UB.smoothSlideViewTo(this.UF, this.Vc ? getWidth() : -this.UF.getWidth(), this.UF.getTop());
        } else {
            return;
        }
        invalidate();
        removeCallbacks(this.UU);
    }

    public boolean isNavigationDrawerOpen() {
        return ((LayoutParams) this.UF.getLayoutParams()).NM == 1.0f;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (getDrawerLockMode() != 0 || !this.UD || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        boolean isNavigationDrawerOpen = isNavigationDrawerOpen();
        closeNavigationDrawer(true);
        return isNavigationDrawerOpen;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState(), null);
        savedState.NM = fa();
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        c(savedState.NM);
        if (savedState.NM >= Uz) {
            openNavigationDrawer(false);
        } else {
            closeNavigationDrawer(false);
        }
    }
}
