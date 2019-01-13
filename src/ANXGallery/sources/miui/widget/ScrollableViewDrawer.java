package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import miui.R;
import miui.util.AttributeResolver;

public class ScrollableViewDrawer extends FrameLayout {
    private static final String LOG_TAG = "ScrollableViewDrawer";
    private static final int STATE_DRAGGING = 1;
    private static final int ZB = 2;
    private static final boolean ZC = false;
    private static final int Zz = 0;
    private boolean NB;
    private int Vi;
    private int ZD;
    private int ZE;
    private View ZF;
    private IScrollableView ZG;
    private int ZH;
    private Drawable ZI;
    private int ZJ;
    private DrawerListener ZK;
    private int ZL;
    private boolean ZN;
    private boolean ZO;
    private boolean ZP;
    private float ZQ;
    private float ZR;
    private int ZS;
    private int fE;
    private View mContentView;
    private float mLastMotionY;
    private int qH;
    private VelocityTracker qS;
    private Scroller wp;

    public interface IScrollableView {
        boolean canScroll();
    }

    private static class AdapterViewWrapper implements IScrollableView {
        private AdapterView<?> ZT;

        public AdapterViewWrapper(AdapterView<?> adapterView) {
            this.ZT = adapterView;
        }

        public boolean canScroll() {
            int firstVisiblePosition = this.ZT.getFirstVisiblePosition();
            if (firstVisiblePosition > 0) {
                String str = ScrollableViewDrawer.LOG_TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("canScrollDown true first visible ");
                stringBuilder.append(firstVisiblePosition);
                Log.d(str, stringBuilder.toString());
                return true;
            }
            firstVisiblePosition = this.ZT.getPaddingTop();
            int childCount = this.ZT.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (this.ZT.getChildAt(i).getTop() < firstVisiblePosition) {
                    String str2 = ScrollableViewDrawer.LOG_TAG;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("canScrollDown true ");
                    stringBuilder2.append(i);
                    Log.d(str2, stringBuilder2.toString());
                    return true;
                }
            }
            return false;
        }
    }

    public interface DrawerListener {
        void onDrawerClosed(ScrollableViewDrawer scrollableViewDrawer);

        void onDrawerOpened(ScrollableViewDrawer scrollableViewDrawer);

        void onDrawerSlide(ScrollableViewDrawer scrollableViewDrawer, float f);
    }

    private static class ScrollViewWrapper implements IScrollableView {
        private ScrollView ZU;

        public ScrollViewWrapper(ScrollView scrollView) {
            this.ZU = scrollView;
        }

        public boolean canScroll() {
            return this.ZU.getScrollY() > 0;
        }
    }

    public ScrollableViewDrawer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrollableViewDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ZL = -1;
        this.fE = ViewConfiguration.get(context).getScaledTouchSlop();
        this.wp = new Scroller(context);
        this.qS = VelocityTracker.obtain();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollableViewDrawer, i, 0);
        this.ZD = obtainStyledAttributes.getResourceId(R.styleable.ScrollableViewDrawer_contentView, 0);
        if (this.ZD != 0) {
            this.ZE = obtainStyledAttributes.getResourceId(R.styleable.ScrollableViewDrawer_targetView, 0);
            if (this.ZE != 0) {
                this.Vi = obtainStyledAttributes.getResourceId(R.styleable.ScrollableViewDrawer_scrollableView, 0);
                if (this.Vi != 0) {
                    this.ZI = obtainStyledAttributes.getDrawable(R.styleable.ScrollableViewDrawer_scrollDivider);
                    if (this.ZI == null) {
                        this.ZI = AttributeResolver.resolveDrawable(context, R.attr.scrollDivider);
                    }
                    if (this.ZI != null) {
                        this.ZJ = this.ZI.getIntrinsicHeight();
                    }
                    this.NB = obtainStyledAttributes.getBoolean(R.styleable.ScrollableViewDrawer_dragEnabled, true);
                    obtainStyledAttributes.recycle();
                    return;
                }
                throw new IllegalArgumentException("The scrollableView attribute is required and must refer to a valid child.");
            }
            throw new IllegalArgumentException("The targetView attribute is required and must refer to a valid child.");
        }
        throw new IllegalArgumentException("The contentView attribute is required and must refer to a valid child.");
    }

    protected void onFinishInflate() {
        this.mContentView = findViewById(this.ZD);
        if (this.mContentView == null) {
            throw new IllegalArgumentException("The contentView attribute is must refer to an existing child.");
        } else if (this.mContentView.getParent() == this) {
            this.ZF = findViewById(this.ZE);
            if (this.ZF != null) {
                View findViewById = this.ZF.findViewById(this.Vi);
                if (findViewById == null) {
                    throw new IllegalArgumentException("The scrollableView attribute is must refer to an existing child of targetView.");
                } else if (findViewById instanceof IScrollableView) {
                    this.ZG = (IScrollableView) findViewById;
                    return;
                } else if (findViewById instanceof ScrollView) {
                    this.ZG = new ScrollViewWrapper((ScrollView) findViewById);
                    return;
                } else if (findViewById instanceof AdapterView) {
                    this.ZG = new AdapterViewWrapper((AdapterView) findViewById);
                    return;
                } else {
                    throw new IllegalArgumentException("The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper.");
                }
            }
            throw new IllegalArgumentException("The targetView attribute is must refer to an existing child.");
        } else {
            throw new IllegalArgumentException("The contentView attribute is must be a direct child of ScrollableViewDrawer.");
        }
    }

    private int fJ() {
        if (this.ZH == 0) {
            this.ZH = this.mContentView.getMeasuredHeight();
        }
        return this.ZH;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.NB) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        float y;
        if (actionMasked != 6) {
            switch (actionMasked) {
                case 0:
                    this.ZL = motionEvent.getPointerId(0);
                    this.ZN = false;
                    this.qS.clear();
                    this.qS.addMovement(motionEvent);
                    this.ZQ = motionEvent.getX(0);
                    y = motionEvent.getY(0);
                    this.ZR = y;
                    this.mLastMotionY = y;
                    this.ZS = (int) this.ZF.getTranslationY();
                    break;
                case 1:
                case 3:
                    if (!this.ZN) {
                        this.qS.clear();
                    }
                    this.ZN = false;
                    this.ZP = false;
                    this.ZO = false;
                    break;
                case 2:
                    actionMasked = motionEvent.findPointerIndex(this.ZL);
                    if (actionMasked == -1) {
                        this.ZL = motionEvent.getPointerId(0);
                        actionMasked = 0;
                    }
                    float x = motionEvent.getX(actionMasked) - this.ZQ;
                    float y2 = motionEvent.getY(actionMasked) - this.ZR;
                    if (!(this.ZN || this.ZP)) {
                        if (this.ZS == fJ() && y2 < 0.0f) {
                            this.ZN = true;
                        } else if (y2 > ((float) this.fE)) {
                            this.ZN = fK();
                        }
                        if (this.ZN) {
                            Log.d(LOG_TAG, "determine drag");
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                        if (Math.abs(y2) > ((float) this.fE) && !this.ZP) {
                            this.ZO = true;
                        }
                        if (Math.abs(x) > ((float) this.fE) && !this.ZO) {
                            this.ZP = true;
                        }
                    }
                    if (!this.ZN) {
                        this.qS.addMovement(motionEvent);
                        this.mLastMotionY = motionEvent.getY(actionMasked);
                        break;
                    }
                    break;
            }
        }
        actionMasked = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionMasked) == this.ZL) {
            actionMasked = actionMasked == 0 ? 1 : 0;
            this.ZL = motionEvent.getPointerId(actionMasked);
            this.ZQ = motionEvent.getX(actionMasked);
            y = motionEvent.getY(actionMasked);
            this.ZR = y;
            this.mLastMotionY = y;
        }
        if (!(super.dispatchTouchEvent(motionEvent) || this.ZN)) {
            z = false;
        }
        return z;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 1:
                this.qS.addMovement(motionEvent);
                this.qS.computeCurrentVelocity(1000);
                if (this.ZS == 0 || this.ZS == fJ()) {
                    fL();
                } else {
                    if (this.qS.getYVelocity() > 5.0f) {
                        this.wp.startScroll(0, this.ZS, 0, fJ() - this.ZS);
                    } else {
                        this.wp.startScroll(0, this.ZS, 0, -this.ZS);
                    }
                    invalidate();
                }
                this.qS.clear();
                break;
            case 2:
                this.qS.addMovement(motionEvent);
                int findPointerIndex = motionEvent.findPointerIndex(this.ZL);
                if (findPointerIndex == -1) {
                    this.ZL = motionEvent.getPointerId(0);
                    findPointerIndex = 0;
                }
                float y = motionEvent.getY(findPointerIndex);
                this.ZS = Math.max(0, Math.min(((int) (y - this.mLastMotionY)) + this.ZS, fJ()));
                this.mLastMotionY = y;
                fN();
                invalidate();
                break;
            case 3:
                if (this.ZS == 0 || this.ZS == fJ()) {
                    fL();
                } else {
                    this.wp.startScroll(0, this.ZS, 0, -this.ZS);
                    invalidate();
                }
                this.qS.clear();
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.NB && this.ZN;
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.mContentView) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int top = view.getTop();
            int i = this.ZS + top;
            if (this.ZJ > 0) {
                this.ZI.setBounds(paddingLeft, i - this.ZJ, width, i);
                this.ZI.draw(canvas);
                i -= this.ZJ;
            }
            canvas.save();
            canvas.clipRect(paddingLeft, top, width, i);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        if (view == this.mContentView) {
            canvas.restore();
        }
        return drawChild;
    }

    private boolean fK() {
        return (this.ZF == null || this.ZS != 0 || this.ZG.canScroll()) ? false : true;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.ZF != null && this.wp.computeScrollOffset()) {
            this.ZS = this.wp.getCurrY();
            fN();
            postInvalidateOnAnimation();
        }
    }

    public void setDragEnabled(boolean z) {
        this.NB = z;
    }

    public void setDrawerListener(DrawerListener drawerListener) {
        this.ZK = drawerListener;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001f  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001f  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void fL() {
        int i;
        if (this.ZS == 0) {
            if (!this.ZN) {
                i = 0;
                if (this.qH != i) {
                    this.qH = i;
                    fM();
                    return;
                } else if (this.qH == 1) {
                    fM();
                    return;
                } else {
                    return;
                }
            }
        } else if (this.ZS == fJ() && !this.ZN) {
            i = 2;
            if (this.qH != i) {
            }
        }
        i = 1;
        if (this.qH != i) {
        }
    }

    private void fM() {
        if (this.ZK != null) {
            switch (this.qH) {
                case 0:
                    this.ZK.onDrawerClosed(this);
                    return;
                case 1:
                    this.ZK.onDrawerSlide(this, ((float) this.ZS) / ((float) fJ()));
                    return;
                case 2:
                    this.ZK.onDrawerOpened(this);
                    return;
                default:
                    return;
            }
        }
    }

    public void resetState() {
        closeDrawer();
    }

    public void openDrawer() {
        openDrawer(false);
    }

    public void openDrawer(boolean z) {
        if (z) {
            this.wp.startScroll(0, this.ZS, 0, fJ() - this.ZS);
        } else {
            this.ZS = fJ();
            fN();
        }
        invalidate();
    }

    public void closeDrawer() {
        closeDrawer(false);
    }

    public void closeDrawer(boolean z) {
        if (z) {
            this.wp.startScroll(0, this.ZS, 0, -this.ZS);
        } else {
            this.ZS = 0;
            fN();
        }
        invalidate();
    }

    private void fN() {
        if (this.NB && this.ZF != null) {
            this.ZF.setTranslationY((float) this.ZS);
            fL();
        }
    }
}
