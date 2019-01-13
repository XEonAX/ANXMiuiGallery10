package miui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Scroller;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_View_View_class;
import com.miui.internal.variable.Android_View_View_class.Factory;
import com.miui.internal.widget.ActionModeView;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.security.InvalidParameterException;

public class ScreenView extends ViewGroup {
    public static final int FLING_ALIGN = 4;
    public static final int FLING_CANCEL = 3;
    public static final int FLING_LEFT = 1;
    public static final int FLING_RIGHT = 2;
    private static final int INVALID_POINTER = -1;
    public static final int SCREEN_ALIGN_CENTER = 2;
    public static final int SCREEN_ALIGN_CUSTOMIZED = 0;
    public static final int SCREEN_ALIGN_LEFT = 1;
    public static final int SCREEN_ALIGN_RIGHT = 3;
    public static final int SCREEN_TRANSITION_TYPE_CLASSIC = 0;
    public static final int SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT = 1;
    public static final int SCREEN_TRANSITION_TYPE_CROSSFADE = 2;
    public static final int SCREEN_TRANSITION_TYPE_CUBE = 4;
    public static final int SCREEN_TRANSITION_TYPE_CUSTOM = 9;
    public static final int SCREEN_TRANSITION_TYPE_FALLDOWN = 3;
    public static final int SCREEN_TRANSITION_TYPE_LEFTPAGE = 5;
    public static final int SCREEN_TRANSITION_TYPE_RIGHTPAGE = 6;
    public static final int SCREEN_TRANSITION_TYPE_ROTATE = 8;
    public static final int SCREEN_TRANSITION_TYPE_STACK = 7;
    private static final String TAG = "ScreenView";
    protected static final int TOUCH_STATE_PINCHING = 4;
    protected static final int TOUCH_STATE_REST = 0;
    protected static final int TOUCH_STATE_SCROLLING = 1;
    protected static final int TOUCH_STATE_SLIDING = 3;
    private static final int Yh = -1;
    private static final int Yi = 48;
    private static final LayoutParams Yj = new LayoutParams(-1, -1, 1.0f);
    private static final int Yk = 1000;
    private static final int Yl = 500;
    private static final int Ym = 300;
    private static final float Yn = 1.0E9f;
    private static final float Yo = 0.75f;
    private static final float Yp = ((float) (0.016d / Math.log(0.75d)));
    private static final int Yq = 300;
    private static final float Yr = 2500.0f;
    private static final float Ys = 0.4f;
    private static final float Yt = 1.3f;
    private static final Android_View_View_class js = Factory.getInstance().get();
    private boolean Nt;
    private int YA;
    private ArrowIndicator YB;
    private ArrowIndicator YC;
    private SeekBarIndicator YD;
    private SlideBar YF;
    private boolean YG;
    private Runnable YH;
    private int YI;
    private int YJ;
    private int YK;
    private int YL;
    private int YM;
    private int YN;
    private int YO;
    private int YP;
    private int YQ;
    private int YR;
    private int YS;
    private float YT;
    private boolean YU;
    private float YV;
    private int YW;
    private ScaleGestureDetector YX;
    private int YY;
    private boolean YZ;
    private final float Yu;
    private int Yv;
    private int Yw;
    private int Yx;
    private int Yy;
    private int Yz;
    private boolean Za;
    private boolean Zb;
    private float Zc;
    private float Zd;
    private float Ze;
    private int Zf;
    private ScreenViewOvershootInterpolator Zg;
    private int Zh;
    private float Zi;
    private SnapScreenOnceNotification Zj;
    private GestureVelocityTracker Zk;
    private int fE;
    protected int mChildScreenWidth;
    protected int mCurrentScreen;
    protected float mLastMotionX;
    protected float mLastMotionY;
    protected int mScreenOffset;
    protected int mVisibleRange;
    private int qE;
    private int qJ;
    private Scroller wp;

    private interface Indicator {
        boolean aH(int i);
    }

    private class ArrowIndicator extends ImageView implements Indicator {
        public ArrowIndicator(Context context) {
            super(context);
        }

        public boolean aH(int i) {
            if (getLeft() == i) {
                return false;
            }
            ScreenView.js.setRightDirectly(this, (getRight() + i) - getLeft());
            ScreenView.js.setLeftDirectly(this, i);
            return true;
        }
    }

    private class GestureVelocityTracker {
        private static final float Zm = 3.0f;
        private int Zn;
        private float Zo;
        private float Zp;
        private VelocityTracker qS;

        private GestureVelocityTracker() {
            this.Zn = -1;
            this.Zo = -1.0f;
            this.Zp = -1.0f;
        }

        /* synthetic */ GestureVelocityTracker(ScreenView screenView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void recycle() {
            if (this.qS != null) {
                this.qS.recycle();
                this.qS = null;
            }
            reset();
        }

        public void addMovement(MotionEvent motionEvent) {
            if (this.qS == null) {
                this.qS = VelocityTracker.obtain();
            }
            this.qS.addMovement(motionEvent);
            float x = motionEvent.getX();
            if (this.Zn != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.Zn);
                if (findPointerIndex != -1) {
                    x = motionEvent.getX(findPointerIndex);
                } else {
                    this.Zn = -1;
                }
            }
            if (this.Zo < ScreenView.Yp) {
                this.Zo = x;
            } else if (this.Zp < ScreenView.Yp) {
                this.Zp = x;
            } else {
                this.Zp = x;
            }
        }

        private void reset() {
            this.Zn = -1;
            float f = (float) -1;
            this.Zo = f;
            this.Zp = f;
        }

        public void init(int i) {
            if (this.qS == null) {
                this.qS = VelocityTracker.obtain();
            } else {
                this.qS.clear();
            }
            reset();
            this.Zn = i;
        }

        public float j(int i, int i2, int i3) {
            this.qS.computeCurrentVelocity(i, (float) i2);
            return this.qS.getXVelocity(i3);
        }

        public int e(float f) {
            if (f <= 300.0f) {
                return 4;
            }
            int i = Math.abs(this.Zp - this.Zo) > ((float) ScreenView.this.fE) ? this.Zp > this.Zo ? 1 : 2 : 3;
            return i;
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: k */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: aI */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int Zq;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.Zq = -1;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.Zq = -1;
            this.Zq = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.Zq);
        }
    }

    private class ScaleDetectorListener implements OnScaleGestureListener {
        private static final float Zr = 200.0f;
        private static final float Zs = 0.95f;
        private static final float Zt = 0.8f;
        private static final float Zu = 1.2f;

        private ScaleDetectorListener() {
        }

        /* synthetic */ ScaleDetectorListener(ScreenView screenView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return ScreenView.this.YY == 0;
        }

        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            ScreenView.this.finishCurrentGesture();
        }

        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (ScreenView.this.YY == 0 && (((float) scaleGestureDetector.getTimeDelta()) > Zr || scaleFactor < Zs || scaleFactor > 1.0526316f)) {
                ScreenView.this.a(null, 4);
            }
            if (scaleFactor < Zt) {
                ScreenView.this.onPinchIn(scaleGestureDetector);
                return true;
            } else if (scaleFactor <= Zu) {
                return false;
            } else {
                ScreenView.this.onPinchOut(scaleGestureDetector);
                return true;
            }
        }
    }

    private class ScreenViewOvershootInterpolator implements Interpolator {
        private float Zv;

        public ScreenViewOvershootInterpolator() {
            this.Zv = ScreenView.this.Zi;
        }

        public void q(int i, int i2) {
            float d;
            if (i > 0) {
                d = ScreenView.this.Zi / ((float) i);
            } else {
                d = ScreenView.this.Zi;
            }
            this.Zv = d;
        }

        public void fH() {
            this.Zv = ScreenView.Yp;
        }

        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((f * f) * (((this.Zv + 1.0f) * f) + this.Zv)) + 1.0f;
        }
    }

    private class SeekBarIndicator extends LinearLayout implements Indicator {
        public SeekBarIndicator(Context context) {
            super(context);
        }

        public boolean aH(int i) {
            if (getLeft() == i) {
                return false;
            }
            ScreenView.js.setRightDirectly(this, (getRight() + i) - getLeft());
            ScreenView.js.setLeftDirectly(this, i);
            return true;
        }
    }

    private class SlideBar extends FrameLayout implements Indicator {
        private Bitmap Zw;
        private NinePatch Zx;
        private Rect Zy = new Rect();
        private Rect ef = new Rect();

        public SlideBar(Context context, int i, int i2) {
            super(context);
            this.Zw = BitmapFactory.decodeResource(getResources(), i);
            if (this.Zw != null) {
                byte[] ninePatchChunk = this.Zw.getNinePatchChunk();
                if (ninePatchChunk != null) {
                    this.Zx = new NinePatch(this.Zw, ninePatchChunk, null);
                    View frameLayout = new FrameLayout(getContext());
                    frameLayout.setBackgroundResource(i2);
                    addView(frameLayout, new FrameLayout.LayoutParams(-1, -2, 80));
                    this.ef.left = frameLayout.getPaddingLeft();
                    this.ef.top = frameLayout.getPaddingTop();
                    this.ef.right = frameLayout.getPaddingRight();
                    this.ef.bottom = frameLayout.getPaddingBottom();
                    this.Zy.top = this.ef.top;
                    this.Zy.bottom = this.Zy.top + this.Zw.getHeight();
                }
            }
        }

        protected int getSuggestedMinimumHeight() {
            return Math.max(this.Zw.getHeight(), super.getSuggestedMinimumHeight());
        }

        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.Zx != null) {
                this.Zx.draw(canvas, this.Zy);
            }
        }

        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.Zx != null) {
                this.Zy.bottom = (i4 - i2) - this.ef.bottom;
                this.Zy.top = this.Zy.bottom - this.Zx.getHeight();
            }
        }

        public void setPosition(int i, int i2) {
            this.Zy.left = i + this.ef.left;
            this.Zy.right = i2 + this.ef.left;
        }

        public int fI() {
            return (getMeasuredWidth() - this.ef.left) - this.ef.right;
        }

        public boolean aH(int i) {
            if (getLeft() == i) {
                return false;
            }
            ScreenView.js.setRightDirectly(this, (getRight() + i) - getLeft());
            ScreenView.js.setLeftDirectly(this, i);
            return true;
        }
    }

    private class SliderTouchListener implements OnTouchListener {
        private SliderTouchListener() {
        }

        /* synthetic */ SliderTouchListener(ScreenView screenView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            int width = view.getWidth();
            float max = Math.max(ScreenView.Yp, Math.min(motionEvent.getX(), (float) (width - 1)));
            int screenCount = ScreenView.this.getScreenCount();
            float f = (float) width;
            int floor = (int) Math.floor((double) ((((float) screenCount) * max) / f));
            switch (motionEvent.getAction()) {
                case 0:
                    if (!ScreenView.this.wp.isFinished()) {
                        ScreenView.this.wp.abortAnimation();
                    }
                    ScreenView.this.a(motionEvent, 3);
                    break;
                case 1:
                case 3:
                    ScreenView.this.snapToScreen(floor);
                    ScreenView.this.p(ScreenView.this.mCurrentScreen, ScreenView.this.YQ);
                    break;
                case 2:
                    ScreenView.this.aG(floor);
                    ScreenView.this.scrollTo((int) (((((float) (screenCount * ScreenView.this.mChildScreenWidth)) * max) / f) - ((float) (ScreenView.this.mChildScreenWidth / 2))), 0);
                    break;
            }
            return true;
        }
    }

    public interface SnapScreenOnceNotification {
        void onSnapCancelled(ScreenView screenView);

        void onSnapEnd(ScreenView screenView);
    }

    public ScreenView(Context context) {
        super(context);
        this.Yu = Resources.getSystem().getDisplayMetrics().density * 1280.0f;
        this.Nt = true;
        this.Yw = R.drawable.screen_view_arrow_left;
        this.Yx = R.drawable.screen_view_arrow_left_gray;
        this.Yy = R.drawable.screen_view_arrow_right;
        this.Yz = R.drawable.screen_view_arrow_right_gray;
        this.YA = R.drawable.screen_view_seek_point_selector;
        this.YH = new Runnable() {
            public void run() {
                ScreenView.this.fC();
            }
        };
        this.mVisibleRange = 1;
        this.YM = 0;
        this.YN = 0;
        this.YQ = -1;
        this.YT = 0.33333334f;
        this.YV = 0.5f;
        this.YW = 0;
        this.YY = 0;
        this.Zb = true;
        this.qE = -1;
        this.Ze = 0.5f;
        this.Zf = ActionModeView.ANIMATION_DURATION;
        this.Zh = 0;
        this.Zi = Yt;
        this.Zk = new GestureVelocityTracker(this, null);
        fz();
    }

    public ScreenView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScreenView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Yu = Resources.getSystem().getDisplayMetrics().density * 1280.0f;
        this.Nt = true;
        this.Yw = R.drawable.screen_view_arrow_left;
        this.Yx = R.drawable.screen_view_arrow_left_gray;
        this.Yy = R.drawable.screen_view_arrow_right;
        this.Yz = R.drawable.screen_view_arrow_right_gray;
        this.YA = R.drawable.screen_view_seek_point_selector;
        this.YH = /* anonymous class already generated */;
        this.mVisibleRange = 1;
        this.YM = 0;
        this.YN = 0;
        this.YQ = -1;
        this.YT = 0.33333334f;
        this.YV = 0.5f;
        this.YW = 0;
        this.YY = 0;
        this.Zb = true;
        this.qE = -1;
        this.Ze = 0.5f;
        this.Zf = ActionModeView.ANIMATION_DURATION;
        this.Zh = 0;
        this.Zi = Yt;
        this.Zk = new GestureVelocityTracker(this, null);
        fz();
    }

    public void setOvershootTension(float f) {
        this.Zi = f;
        if (this.Zg != null) {
            this.Zg.Zv = f;
        }
    }

    public void setTouchSlop(int i) {
        this.fE = i;
    }

    public void setConfirmHorizontalScrollRatio(float f) {
        this.Ze = f;
    }

    public void setScreenSnapDuration(int i) {
        this.Zf = i;
    }

    public void setMaximumSnapVelocity(int i) {
        this.qJ = i;
    }

    public void setScrollWholeScreen(boolean z) {
        this.YU = z;
    }

    private void fz() {
        setAlwaysDrawnWithCacheEnabled(true);
        setClipToPadding(true);
        this.Zg = new ScreenViewOvershootInterpolator();
        this.wp = new Scroller(getContext(), this.Zg);
        aG(0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.fE = viewConfiguration.getScaledTouchSlop();
        setMaximumSnapVelocity(viewConfiguration.getScaledMaximumFlingVelocity());
        this.YX = new ScaleGestureDetector(getContext(), new ScaleDetectorListener(this, null));
    }

    public void setArrowIndicatorMarginRect(Rect rect) {
        if (rect != null) {
            FrameLayout.LayoutParams layoutParams;
            FrameLayout.LayoutParams layoutParams2;
            if (this.YB == null) {
                layoutParams = new FrameLayout.LayoutParams(-2, -2, 19);
                this.YB = new ArrowIndicator(getContext());
                this.YB.setImageResource(this.Yw);
                addIndicator(this.YB, layoutParams);
                layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 21);
                this.YC = new ArrowIndicator(getContext());
                this.YC.setImageResource(this.Yy);
                addIndicator(this.YC, layoutParams2);
            } else {
                layoutParams = (FrameLayout.LayoutParams) this.YB.getLayoutParams();
                layoutParams2 = (FrameLayout.LayoutParams) this.YC.getLayoutParams();
            }
            layoutParams.setMargins(rect.left, rect.top, 0, rect.bottom);
            layoutParams2.setMargins(0, rect.top, rect.right, rect.bottom);
        } else if (this.YB != null) {
            removeIndicator(this.YB);
            removeIndicator(this.YC);
            this.YB = null;
            this.YC = null;
        }
    }

    private boolean fA() {
        return getResources().getConfiguration().getLayoutDirection() == 1;
    }

    public void setArrowIndicatorResource(int i, int i2, int i3, int i4) {
        this.Yw = i;
        this.Yx = i2;
        this.Yy = i3;
        this.Yz = i4;
    }

    public void setSeekPointResource(int i) {
        this.YA = i;
    }

    public void setSeekBarPosition(FrameLayout.LayoutParams layoutParams) {
        if (layoutParams != null) {
            if (this.YD == null) {
                this.YD = new SeekBarIndicator(getContext());
                int i = 0;
                this.YD.setLayoutDirection(0);
                this.YD.setGravity(16);
                this.YD.setAnimationCacheEnabled(false);
                while (i < getChildCount()) {
                    this.YD.addView(fF(), Yj);
                    i++;
                }
                addIndicator(this.YD, layoutParams);
            } else if (this.YD.getParent() != null) {
                this.YD.setLayoutParams(layoutParams);
            } else {
                addIndicator(this.YD, layoutParams);
            }
        } else if (this.YD != null) {
            removeIndicator(this.YD);
            this.YD = null;
        }
    }

    public void setSlideBarPosition(FrameLayout.LayoutParams layoutParams) {
        setSlideBarPosition(layoutParams, R.drawable.screen_view_slide_bar, R.drawable.screen_view_slide_bar_bg, false);
    }

    public void setSlideBarPosition(FrameLayout.LayoutParams layoutParams, int i, int i2, boolean z) {
        this.YG = z;
        if (layoutParams != null) {
            if (this.YF == null) {
                this.YF = new SlideBar(getContext(), i, i2);
                this.YF.setOnTouchListener(new SliderTouchListener(this, null));
                this.YF.setAnimationCacheEnabled(false);
                addIndicator(this.YF, layoutParams);
                return;
            }
            this.YF.setLayoutParams(layoutParams);
        } else if (this.YF != null) {
            removeIndicator(this.YF);
            this.YF = null;
        }
    }

    private void fB() {
        if (this.YF != null && this.YG) {
            removeCallbacks(this.YH);
            this.YF.animate().cancel();
            this.YF.setAlpha(1.0f);
            this.YF.setVisibility(0);
            if (this.YY == 0) {
                postDelayed(this.YH, 1000);
            }
        }
    }

    private void fC() {
        if (this.YG) {
            this.YF.animate().setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 500 : 0).alpha(Yp).setListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    ScreenView.this.YF.setVisibility(4);
                }
            });
        }
    }

    public void setIndicatorBarVisibility(int i) {
        setSeekBarVisibility(i);
        setSlideBarVisibility(i);
    }

    public void setSeekBarVisibility(int i) {
        if (this.YD != null) {
            this.YD.setVisibility(i);
        }
    }

    public void setSlideBarVisibility(int i) {
        if (this.YF != null) {
            this.YF.setVisibility(i);
        }
    }

    public void setScreenPadding(Rect rect) {
        if (rect != null) {
            this.YI = rect.top;
            this.YJ = rect.bottom;
            setPadding(rect.left, 0, rect.right, 0);
            return;
        }
        throw new InvalidParameterException("The padding parameter can not be null.");
    }

    public void setScreenAlignment(int i) {
        this.YK = i;
    }

    public void setScreenOffset(int i) {
        this.mScreenOffset = i;
        this.YK = 0;
        requestLayout();
    }

    private void fD() {
        switch (this.YK) {
            case 0:
                this.YL = this.mScreenOffset;
                break;
            case 1:
                this.YL = 0;
                break;
            case 2:
                this.YL = (this.YN - this.mChildScreenWidth) / 2;
                break;
            case 3:
                this.YL = this.YN - this.mChildScreenWidth;
                break;
        }
        this.YL += getPaddingLeft();
    }

    private void j(int i, boolean z) {
        if (getWidth() > 0) {
            int screenCount = getScreenCount();
            int width = getWidth();
            int height = getHeight();
            for (int i2 = 0; i2 < this.Yv; i2++) {
                int absoluteGravity;
                int i3;
                View childAt = getChildAt(i2 + screenCount);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.gravity;
                if (i4 != -1) {
                    absoluteGravity = Gravity.getAbsoluteGravity(i4, getLayoutDirection()) & 7;
                    i4 &= BaiduSceneResult.STREET_VIEW;
                    if (absoluteGravity == 1) {
                        absoluteGravity = (((width - measuredWidth) / 2) + layoutParams.leftMargin) - layoutParams.rightMargin;
                    } else if (absoluteGravity == 3) {
                        absoluteGravity = layoutParams.leftMargin;
                    } else if (absoluteGravity != 5) {
                        absoluteGravity = layoutParams.leftMargin;
                    } else {
                        absoluteGravity = (width - measuredWidth) - layoutParams.rightMargin;
                    }
                    if (i4 == 16) {
                        i3 = (((height - measuredHeight) / 2) + layoutParams.topMargin) - layoutParams.bottomMargin;
                    } else if (i4 == 48) {
                        i3 = layoutParams.topMargin;
                    } else if (i4 != 80) {
                        i3 = layoutParams.topMargin;
                    } else {
                        i3 = (height - measuredHeight) - layoutParams.bottomMargin;
                    }
                } else {
                    i3 = 0;
                    absoluteGravity = i3;
                }
                if (z || childAt.getHeight() <= 0 || childAt.getWidth() <= 0) {
                    childAt.layout(absoluteGravity, i3, measuredWidth + absoluteGravity, measuredHeight + i3);
                } else {
                    childAt.setTranslationX((float) i);
                }
            }
        }
    }

    private void aB(int i) {
        int screenCount = getScreenCount();
        if (this.YF != null && screenCount > 0) {
            int fI = this.YF.fI();
            int max = Math.max((fI / screenCount) * this.mVisibleRange, 48);
            int i2 = this.mChildScreenWidth * screenCount;
            if (i2 <= fI) {
                i = 0;
            } else {
                i = ((fI - max) * i) / (i2 - fI);
            }
            this.YF.setPosition(i, max + i);
            if (isHardwareAccelerated()) {
                this.YF.invalidate();
            }
        }
    }

    private void aC(int i) {
        if (this.YB != null) {
            int i2;
            ArrowIndicator arrowIndicator = this.YB;
            if (i <= 0) {
                i2 = this.Yx;
            } else {
                i2 = this.Yw;
            }
            arrowIndicator.setImageResource(i2);
            arrowIndicator = this.YC;
            if (i >= ((getScreenCount() * this.mChildScreenWidth) - this.YN) - this.YL) {
                i = this.Yz;
            } else {
                i = this.Yy;
            }
            arrowIndicator.setImageResource(i);
        }
    }

    public void setOverScrollRatio(float f) {
        this.YT = f;
        fE();
    }

    public void setVisibleExtentionRatio(float f) {
        this.YV = f;
    }

    private void fE() {
        this.YS = ((int) (((float) (-this.mChildScreenWidth)) * this.YT)) - this.YL;
        if (this.YU) {
            this.YR = (int) (((float) (((getScreenCount() - 1) / this.mVisibleRange) * this.YN)) + (((float) this.mChildScreenWidth) * this.YT));
        } else {
            this.YR = ((int) ((((float) this.mChildScreenWidth) * (((float) getScreenCount()) + this.YT)) - ((float) this.YN))) + this.YL;
        }
    }

    public void scrollToScreen(int i) {
        k(i, false);
    }

    private void k(int i, boolean z) {
        i = l(i, z);
        if (this.YU) {
            i -= i % this.mVisibleRange;
        }
        measure(this.YO, this.YP);
        scrollTo((this.mChildScreenWidth * i) - this.YL, 0);
    }

    public void scrollTo(int i, int i2) {
        this.Zd = (float) Math.max(this.YS, Math.min(i, this.YR));
        this.Zc = ((float) System.nanoTime()) / Yn;
        super.scrollTo((int) this.Zd, i2);
    }

    public void computeScroll() {
        if (this.wp.computeScrollOffset()) {
            this.Zd = (float) this.wp.getCurrX();
            js.setScrollXDirectly(this, (int) this.Zd);
            this.Zc = ((float) System.nanoTime()) / Yn;
            js.setScrollYDirectly(this, this.wp.getCurrY());
            postInvalidateOnAnimation();
        } else if (this.YQ != -1) {
            aG(Math.max(0, Math.min(this.YQ, getScreenCount() - 1)));
            this.YQ = -1;
            if (this.Zj != null) {
                this.Zj.onSnapEnd(this);
                this.Zj = null;
            }
        } else if (this.YY == 1) {
            float nanoTime = ((float) System.nanoTime()) / Yn;
            float scrollX = this.Zd - ((float) getScrollX());
            js.setScrollXDirectly(this, (int) (((float) getScrollX()) + (((float) Math.exp((double) ((nanoTime - this.Zc) / Yp))) * scrollX)));
            this.Zc = nanoTime;
            if (scrollX > 1.0f || scrollX < -1.0f) {
                postInvalidate();
            }
        }
        j(getScrollX(), false);
        aB(getScrollX());
        aC(getScrollX());
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        computeScroll();
        fB();
    }

    public void setVisibility(int i) {
        if (i == 0) {
            fB();
        }
        super.setVisibility(i);
    }

    protected void onMeasure(int i, int i2) {
        this.YO = i;
        this.YP = i2;
        int screenCount = getScreenCount();
        int i3 = 0;
        int i4 = i3;
        int i5 = i4;
        while (i3 < this.Yv) {
            View childAt = getChildAt(i3 + screenCount);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), layoutParams.width), getChildMeasureSpec(i2, ((getPaddingTop() + this.YI) + getPaddingBottom()) + this.YJ, layoutParams.height));
            i4 = Math.max(i4, childAt.getMeasuredWidth());
            i5 = Math.max(i5, childAt.getMeasuredHeight());
            i3++;
        }
        i3 = 0;
        int i6 = i3;
        int i7 = i6;
        while (i3 < screenCount) {
            View childAt2 = getChildAt(i3);
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            childAt2.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), layoutParams2.width), getChildMeasureSpec(i2, ((getPaddingTop() + this.YI) + getPaddingBottom()) + this.YJ, layoutParams2.height));
            i6 = Math.max(i6, childAt2.getMeasuredWidth());
            i7 = Math.max(i7, childAt2.getMeasuredHeight());
            i3++;
        }
        i3 = Math.max(i6, i4);
        setMeasuredDimension(resolveSize(i3 + (getPaddingLeft() + getPaddingRight()), i), resolveSize(Math.max(i7, i5) + (((getPaddingTop() + this.YI) + getPaddingBottom()) + this.YJ), i2));
        if (screenCount > 0) {
            this.mChildScreenWidth = i6;
            this.YN = (MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
            fD();
            if (this.mChildScreenWidth > 0) {
                this.mVisibleRange = Math.max(1, (this.YN + ((int) (((float) this.mChildScreenWidth) * this.YV))) / this.mChildScreenWidth);
            }
            setOverScrollRatio(this.YT);
        }
        if (this.Nt && this.mVisibleRange > 0) {
            this.Nt = false;
            setHorizontalScrollBarEnabled(false);
            setCurrentScreen(this.mCurrentScreen);
            setHorizontalScrollBarEnabled(true);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        j(getScrollX(), true);
        int screenCount = getScreenCount();
        i2 = 0;
        i3 = 0;
        while (i2 < screenCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                childAt.layout(i3, getPaddingTop() + this.YI, childAt.getMeasuredWidth() + i3, (getPaddingTop() + this.YI) + childAt.getMeasuredHeight());
                i3 += childAt.getMeasuredWidth();
            }
            i2++;
        }
        if (this.YU && this.mCurrentScreen % this.mVisibleRange > 0) {
            m(this.mCurrentScreen - (this.mCurrentScreen % this.mVisibleRange), true);
        } else if (this.YM > 0 && this.YM != this.YN) {
            m(this.mCurrentScreen, true);
        }
        this.YM = this.YN;
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        r(view);
        return super.drawChild(canvas, view, j);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= getScreenCount()) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        if (indexOfChild == this.mCurrentScreen && this.wp.isFinished()) {
            return false;
        }
        snapToScreen(indexOfChild);
        return true;
    }

    public boolean dispatchUnhandledMove(View view, int i) {
        if (i == 17) {
            if (this.mCurrentScreen > 0) {
                snapToScreen(this.mCurrentScreen - 1, 0, false);
                return true;
            }
        } else if (i == 66 && this.mCurrentScreen < getScreenCount() - 1) {
            snapToScreen(this.mCurrentScreen + 1, 0, false);
            return true;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    protected int getTouchState() {
        return this.YY;
    }

    private void a(MotionEvent motionEvent, int i) {
        this.YY = i;
        getParent().requestDisallowInterceptTouchEvent(this.YY != 0);
        if (this.YY == 0) {
            this.qE = -1;
            this.Zb = false;
            this.Zk.recycle();
        } else {
            if (motionEvent != null) {
                this.qE = motionEvent.getPointerId(0);
                this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.qE));
            }
            if (this.Zb) {
                this.Zb = false;
                View childAt = getChildAt(this.mCurrentScreen);
                if (childAt != null) {
                    childAt.cancelLongPress();
                }
            }
            if (this.YY == 1) {
                this.Zd = (float) getScrollX();
                this.Zc = ((float) System.nanoTime()) / Yn;
            }
        }
        fB();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                motionEvent.setAction(3);
                this.YX.onTouchEvent(motionEvent);
                motionEvent.setAction(0);
                this.Za = false;
                this.YZ = false;
                this.mLastMotionX = motionEvent.getX();
                this.mLastMotionY = motionEvent.getY();
                if (!this.wp.isFinished()) {
                    this.wp.abortAnimation();
                    a(motionEvent, 1);
                    break;
                }
                this.Zb = true;
                break;
            case 1:
            case 3:
                a(motionEvent, 0);
                break;
            case 2:
                e(motionEvent);
                if (this.YY == 0 && d(motionEvent)) {
                    a(motionEvent, 1);
                    break;
                }
        }
        if (2 != (motionEvent.getAction() & 255)) {
            e(motionEvent);
        }
        if (this.Za) {
            return true;
        }
        if (this.YY == 0 || this.YY == 3) {
            return false;
        }
        return true;
    }

    private boolean d(MotionEvent motionEvent) {
        float abs = Math.abs(motionEvent.getX(0) - this.mLastMotionX);
        if (abs <= Math.abs(motionEvent.getY(0) - this.mLastMotionY) * this.Ze || abs <= ((float) (this.fE * motionEvent.getPointerCount()))) {
            return false;
        }
        return true;
    }

    private void e(MotionEvent motionEvent) {
        this.Zk.addMovement(motionEvent);
        if (this.YY == 0 || 4 == this.YY) {
            this.YX.onTouchEvent(motionEvent);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.Za) {
            return true;
        }
        if (this.YZ) {
            e(motionEvent);
        }
        int action = motionEvent.getAction() & 255;
        int i = 0;
        if (action != 6) {
            switch (action) {
                case 1:
                case 3:
                    if (this.YY == 1) {
                        aD(this.qE);
                    }
                    a(motionEvent, 0);
                    break;
                case 2:
                    if (this.YY == 0 && d(motionEvent)) {
                        a(motionEvent, 1);
                    }
                    if (this.YY == 1) {
                        action = motionEvent.findPointerIndex(this.qE);
                        if (action == -1) {
                            a(motionEvent, 1);
                            action = motionEvent.findPointerIndex(this.qE);
                        }
                        float x = motionEvent.getX(action);
                        float f = this.mLastMotionX - x;
                        this.mLastMotionX = x;
                        if (f == Yp) {
                            awakenScrollBars();
                            break;
                        }
                        scrollTo(Math.round(this.Zd + f), 0);
                        break;
                    }
                    break;
            }
        }
        action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.qE) {
            if (action == 0) {
                i = 1;
            }
            this.mLastMotionX = motionEvent.getX(i);
            this.qE = motionEvent.getPointerId(i);
            this.Zk.init(this.qE);
        }
        this.YZ = true;
        return true;
    }

    private void aD(int i) {
        if (this.mChildScreenWidth > 0 && getCurrentScreen() != null) {
            i = (int) this.Zk.j(Yk, this.qJ, i);
            snapByVelocity(i, this.Zk.e((float) Math.abs(i)));
        }
    }

    protected void snapByVelocity(int i, int i2) {
        if (i2 == 1 && this.mCurrentScreen > 0) {
            snapToScreen(this.mCurrentScreen - this.mVisibleRange, i, true);
        } else if (i2 == 2 && this.mCurrentScreen < getScreenCount() - 1) {
            snapToScreen(this.mCurrentScreen + this.mVisibleRange, i, true);
        } else if (i2 == 3) {
            snapToScreen(this.mCurrentScreen, i, true);
        } else {
            snapToScreen((getScrollX() + ((this.mChildScreenWidth * (this.YU ? this.mVisibleRange : 1)) >> 1)) / this.mChildScreenWidth, 0, true);
        }
    }

    public void snapToScreen(int i) {
        snapToScreen(l(i, false), 0, false);
    }

    public void snapToScreen(int i, SnapScreenOnceNotification snapScreenOnceNotification) {
        snapToScreen(l(i, false), 0, false, snapScreenOnceNotification);
    }

    protected void snapToScreen(int i, int i2, boolean z, SnapScreenOnceNotification snapScreenOnceNotification) {
        if (this.YN > 0) {
            if (this.YU) {
                this.YQ = Math.max(0, Math.min(i, getScreenCount() - 1));
                this.YQ -= this.YQ % this.mVisibleRange;
            } else {
                this.YQ = Math.max(0, Math.min(i, getScreenCount() - this.mVisibleRange));
            }
            i = Math.max(1, Math.abs(this.YQ - this.mCurrentScreen));
            if (!this.wp.isFinished()) {
                if (this.Zj != null) {
                    this.Zj.onSnapCancelled(this);
                }
                this.wp.abortAnimation();
            }
            this.Zj = snapScreenOnceNotification;
            i2 = Math.abs(i2);
            if (z) {
                this.Zg.q(i, i2);
            } else {
                this.Zg.fH();
            }
            int scrollX = ((this.YQ * this.mChildScreenWidth) - this.YL) - getScrollX();
            if (scrollX != 0) {
                int min;
                int abs = (Math.abs(scrollX) * this.Zf) / this.YN;
                if (i2 > 0) {
                    abs += (int) ((((float) abs) / (((float) i2) / Yr)) * Ys);
                }
                i2 = Math.max(this.Zf, abs);
                if (i <= 1) {
                    min = Math.min(i2, this.Zf * 2);
                } else {
                    min = i2;
                }
                this.wp.startScroll(getScrollX(), 0, scrollX, 0, min);
                invalidate();
            }
        }
    }

    protected void snapToScreen(int i, int i2, boolean z) {
        snapToScreen(i, i2, z, null);
    }

    public final int getScreenCount() {
        return this.YW;
    }

    public int getCurrentScreenIndex() {
        int i;
        if (this.YQ != -1) {
            i = this.YQ;
        } else {
            i = this.mCurrentScreen;
        }
        return aE(i);
    }

    public View getCurrentScreen() {
        return n(this.mCurrentScreen, true);
    }

    public void setCurrentScreen(int i) {
        m(i, false);
    }

    private int l(int i, boolean z) {
        return (z || !fA()) ? i : aF(i);
    }

    private int aE(int i) {
        return fA() ? aF(i) : i;
    }

    private int aF(int i) {
        return (getScreenCount() - 1) - i;
    }

    private void m(int i, boolean z) {
        if (this.YU) {
            i = Math.max(0, Math.min(i, getScreenCount() - 1));
            i -= i % this.mVisibleRange;
        } else {
            i = Math.max(0, Math.min(i, getScreenCount() - this.mVisibleRange));
        }
        aG(l(i, z));
        if (!this.Nt) {
            if (!this.wp.isFinished()) {
                this.wp.abortAnimation();
            }
            k(this.mCurrentScreen, true);
            invalidate();
        }
    }

    private void aG(int i) {
        p(this.mCurrentScreen, i);
        this.mCurrentScreen = i;
        this.YQ = -1;
    }

    public View getScreen(int i) {
        return n(i, false);
    }

    private View n(int i, boolean z) {
        if (i < 0 || i >= getScreenCount()) {
            return null;
        }
        return getChildAt(l(i, z));
    }

    public int getVisibleRange() {
        return this.mVisibleRange;
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        int screenCount = getScreenCount();
        boolean fA = fA();
        int i2 = 0;
        if (i >= 0) {
            if (fA) {
                i2 = screenCount - i;
            }
            screenCount = Math.min(i, screenCount);
        } else if (fA) {
        }
        if (fA) {
            screenCount = i2;
        }
        if (this.YD != null) {
            this.YD.addView(fF(), screenCount, Yj);
        }
        this.YW++;
        fE();
        super.addView(view, screenCount, layoutParams);
    }

    public void removeView(View view) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViewInLayout(View view) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViewsInLayout(int i, int i2) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViewAt(int i) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViews(int i, int i2) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeAllViewsInLayout() {
        this.Yv = 0;
        this.YW = 0;
        super.removeAllViewsInLayout();
    }

    protected void addIndicator(View view, FrameLayout.LayoutParams layoutParams) {
        this.Yv++;
        super.addView(view, -1, layoutParams);
    }

    protected void addIndicatorAt(View view, FrameLayout.LayoutParams layoutParams, int i) {
        i = Math.max(-1, Math.min(i, this.Yv));
        if (i >= 0) {
            i += getScreenCount();
        }
        this.Yv++;
        super.addView(view, i, layoutParams);
    }

    protected void removeIndicator(View view) {
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= getScreenCount()) {
            this.Yv--;
            super.removeViewAt(indexOfChild);
            return;
        }
        throw new InvalidParameterException("The view passed through the parameter must be indicator.");
    }

    public void removeScreen(int i) {
        if (i < getScreenCount()) {
            int l = l(i, false);
            if (l == this.mCurrentScreen) {
                if (!this.YU) {
                    m(Math.max(0, -1), true);
                } else if (i != 0 && i == getScreenCount() - 1) {
                    snapToScreen(i - 1);
                }
            }
            if (this.YD != null) {
                this.YD.removeViewAt(l);
            }
            this.YW--;
            super.removeViewAt(l);
            return;
        }
        throw new InvalidParameterException("The view specified by the index must be a screen.");
    }

    public void removeAllScreens() {
        removeScreensInLayout(0, getScreenCount());
        requestLayout();
        invalidate();
    }

    public void removeScreensInLayout(int i, int i2) {
        if (fA()) {
            i = (l(i, false) - i2) + 1;
        }
        if (i >= 0 && i < getScreenCount()) {
            i2 = Math.min(i2, getScreenCount() - i);
            if (this.YD != null) {
                this.YD.removeViewsInLayout(i, i2);
            }
            this.YW = 0;
            super.removeViewsInLayout(i, i2);
        }
    }

    public boolean allowLongPress() {
        return this.Zb;
    }

    public void setAllowLongPress(boolean z) {
        this.Zb = z;
    }

    public void setOnLongClickListener(OnLongClickListener onLongClickListener) {
        int screenCount = getScreenCount();
        for (int i = 0; i < screenCount; i++) {
            getChildAt(i).setOnLongClickListener(onLongClickListener);
        }
    }

    public ImageView getSeekPointView(int i) {
        return (ImageView) this.YD.getChildAt(l(i, false));
    }

    private ImageView fF() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ScaleType.CENTER);
        imageView.setImageResource(this.YA);
        return imageView;
    }

    private void p(int i, int i2) {
        if (this.YD != null) {
            int screenCount = getScreenCount();
            int i3 = 0;
            if (i >= 0) {
                for (int i4 = 0; i4 < this.mVisibleRange; i4++) {
                    int i5 = i + i4;
                    if (i5 >= screenCount) {
                        break;
                    }
                    this.YD.getChildAt(i5).setSelected(false);
                }
            }
            while (i3 < this.mVisibleRange) {
                i = i2 + i3;
                if (i < screenCount) {
                    this.YD.getChildAt(i).setSelected(true);
                    i3++;
                } else {
                    return;
                }
            }
        }
    }

    public void onResume() {
    }

    public void onPause() {
        if (!this.wp.isFinished()) {
            m((int) Math.floor((double) ((this.wp.getCurrX() + (this.mChildScreenWidth / 2)) / this.mChildScreenWidth)), true);
            this.wp.abortAnimation();
        }
    }

    public int getScreenTransitionType() {
        return this.Zh;
    }

    public void setScreenTransitionType(int i) {
        if (i != this.Zh) {
            this.Zh = i;
            switch (this.Zh) {
                case 0:
                    setOvershootTension(Yt);
                    setScreenSnapDuration(ActionModeView.ANIMATION_DURATION);
                    return;
                case 1:
                case 2:
                    setOvershootTension(Yp);
                    setScreenSnapDuration(nexClip.kClip_Rotate_270);
                    return;
                case 3:
                    setOvershootTension(Yt);
                    setScreenSnapDuration(ActionModeView.ANIMATION_DURATION);
                    return;
                case 4:
                    setOvershootTension(Yp);
                    setScreenSnapDuration(330);
                    return;
                case 5:
                    setOvershootTension(Yp);
                    setScreenSnapDuration(330);
                    return;
                case 7:
                    setOvershootTension(Yp);
                    setScreenSnapDuration(nexClip.kClip_Rotate_270);
                    return;
                case 8:
                    setOvershootTension(Yt);
                    setScreenSnapDuration(330);
                    return;
                default:
                    return;
            }
        }
    }

    protected void resetTransformation(View view) {
        view.setAlpha(1.0f);
        view.setTranslationX(Yp);
        view.setTranslationY(Yp);
        view.setPivotX(Yp);
        view.setPivotY(Yp);
        view.setRotation(Yp);
        view.setRotationX(Yp);
        view.setRotationY(Yp);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        a(view, this.Yu);
    }

    private void r(View view) {
        if (!(view instanceof Indicator)) {
            float measuredWidth = (float) view.getMeasuredWidth();
            float measuredHeight = (float) view.getMeasuredHeight();
            float f = measuredWidth / 2.0f;
            float f2 = measuredHeight / 2.0f;
            float scrollX = (((((float) getScrollX()) + (((float) getMeasuredWidth()) / 2.0f)) - ((float) view.getLeft())) - f) / measuredWidth;
            float f3;
            switch (this.Zh) {
                case 0:
                    resetTransformation(view);
                    break;
                case 1:
                    resetTransformation(view);
                    break;
                case 2:
                    if (scrollX != Yp && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(((1.0f - Math.abs(scrollX)) * 0.7f) + 0.3f);
                        view.setTranslationX(Yp);
                        view.setTranslationY(Yp);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setPivotX(Yp);
                        view.setPivotY(Yp);
                        view.setRotation(Yp);
                        view.setRotationX(Yp);
                        view.setRotationY(Yp);
                        a(view, this.Yu);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 3:
                    if (scrollX != Yp && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f);
                        view.setTranslationX(Yp);
                        view.setTranslationY(Yp);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setPivotX(f);
                        view.setPivotY(measuredHeight);
                        view.setRotation((-scrollX) * 30.0f);
                        view.setRotationX(Yp);
                        view.setRotationY(Yp);
                        a(view, this.Yu);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 4:
                    if (scrollX != Yp && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f);
                        view.setTranslationX(Yp);
                        view.setTranslationY(Yp);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        if (scrollX < Yp) {
                            measuredWidth = Yp;
                        }
                        view.setPivotX(measuredWidth);
                        view.setPivotY(f2);
                        view.setRotation(Yp);
                        view.setRotationX(Yp);
                        view.setRotationY(-90.0f * scrollX);
                        a(view, 5000.0f);
                        break;
                    }
                    resetTransformation(view);
                    break;
                case 5:
                    if (scrollX != Yp && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f - Math.abs(scrollX));
                        view.setTranslationY(Yp);
                        view.setTranslationX((measuredWidth * scrollX) - ((measuredWidth * Math.abs(scrollX)) * 0.3f));
                        f3 = 1.0f + (0.3f * scrollX);
                        view.setScaleX(f3);
                        view.setScaleY(f3);
                        view.setPivotX(Yp);
                        view.setPivotY(f2);
                        view.setRotation(Yp);
                        view.setRotationX(Yp);
                        view.setRotationY(45.0f * (-scrollX));
                        a(view, 5000.0f);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 7:
                    if (scrollX > Yp) {
                        float f4 = 1.0f - scrollX;
                        view.setAlpha(f4);
                        f2 = 0.6f + (Ys * f4);
                        f3 = 1.0f - f2;
                        view.setTranslationX((measuredWidth * f3) * 3.0f);
                        view.setTranslationY((measuredHeight * f3) * 0.5f);
                        view.setScaleX(f2);
                        view.setScaleY(f2);
                        view.setPivotX(Yp);
                        view.setPivotY(Yp);
                        view.setRotation(Yp);
                        view.setRotationX(Yp);
                        view.setRotationY(Yp);
                        a(view, this.Yu);
                        break;
                    }
                    resetTransformation(view);
                    break;
                case 8:
                    if (scrollX != Yp && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f - Math.abs(scrollX));
                        view.setTranslationX(measuredWidth * scrollX);
                        view.setTranslationY(Yp);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setPivotX(f);
                        view.setPivotY(f2);
                        view.setRotation(Yp);
                        view.setRotationX(Yp);
                        view.setRotationY(90.0f * (-scrollX));
                        a(view, 5000.0f);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 9:
                    updateChildStaticTransformationByScreen(view, scrollX);
                    break;
            }
        }
    }

    protected void updateChildStaticTransformationByScreen(View view, float f) {
    }

    protected void onPinchIn(ScaleGestureDetector scaleGestureDetector) {
    }

    protected void onPinchOut(ScaleGestureDetector scaleGestureDetector) {
    }

    protected void finishCurrentGesture() {
        this.Za = true;
        a(null, 0);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.Zq = this.mCurrentScreen;
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.Zq != -1) {
            m(savedState.Zq, true);
        }
    }

    private void a(View view, float f) {
        if (view.getCameraDistance() != f) {
            view.setCameraDistance(f);
        }
    }
}
