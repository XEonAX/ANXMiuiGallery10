package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AdapterView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import miui.R;

public class TriggerViewDrawer extends RelativeLayout {
    private static final String LOG_TAG = "TriggerViewDrawer";
    private static final boolean ZC = false;
    private static final int aaI = 0;
    private static final int aaJ = 1;
    private static final int aaK = 2;
    private static final int aaL = 0;
    private static final int aaM = 1;
    private static final int aaN = 2;
    private static final float aaO = 2.0f;
    private boolean NB;
    private int Vi;
    private int ZD;
    private int ZE;
    private View ZF;
    private Drawable ZI;
    private int ZJ;
    private int ZL;
    private float ZQ;
    private float ZR;
    private int aaP;
    private View aaQ;
    private ScrollableView aaR;
    private View aaS;
    private int aaT;
    private int aaU;
    private DrawerListener aaV;
    private TriggerListener aaW;
    private boolean aaX;
    private View aaY;
    private int aaZ;
    private int aba;
    private boolean abb;
    private boolean abc;
    private float abd;
    private final int[] abe;
    private final int[] abf;
    private boolean abg;
    private int fE;
    private float fG;
    private View mContentView;
    private VelocityTracker qS;
    private Scroller wp;

    public interface ScrollableView {
        boolean canScrollDown();
    }

    private static class AdapterViewWrapper implements ScrollableView {
        private AdapterView<?> ZT;

        public AdapterViewWrapper(AdapterView<?> adapterView) {
            this.ZT = adapterView;
        }

        public boolean canScrollDown() {
            int firstVisiblePosition = this.ZT.getFirstVisiblePosition();
            if (firstVisiblePosition > 0) {
                String str = TriggerViewDrawer.LOG_TAG;
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
                    String str2 = TriggerViewDrawer.LOG_TAG;
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
        void onDrawerClose(TriggerViewDrawer triggerViewDrawer);

        void onDrawerOpen(TriggerViewDrawer triggerViewDrawer);

        void onDrawerSlide(TriggerViewDrawer triggerViewDrawer, float f);
    }

    private static class FixedViewWrapper implements ScrollableView {
        public boolean canScrollDown() {
            return false;
        }
    }

    private static class ScrollViewWrapper implements ScrollableView {
        private ScrollView ZU;

        public ScrollViewWrapper(ScrollView scrollView) {
            this.ZU = scrollView;
        }

        public boolean canScrollDown() {
            return this.ZU.getScrollY() > 0;
        }
    }

    public interface TriggerListener {
        void onTriggerOpen(TriggerViewDrawer triggerViewDrawer);

        void onTriggerSlide(TriggerViewDrawer triggerViewDrawer, float f);
    }

    public TriggerViewDrawer(Context context) {
        this(context, null);
    }

    public TriggerViewDrawer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.triggerViewDrawerStyle);
    }

    public TriggerViewDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ZL = -1;
        this.abd = -1.0f;
        this.abe = new int[2];
        this.abf = new int[2];
        this.abg = false;
        this.fE = ViewConfiguration.get(context).getScaledTouchSlop();
        this.wp = new Scroller(context);
        this.qS = VelocityTracker.obtain();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TriggerViewDrawer, i, R.style.Widget_TriggerViewDrawer);
        this.ZD = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_contentView, 0);
        this.ZE = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_targetView, 0);
        if (this.ZE != 0) {
            this.Vi = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_scrollableView, 0);
            this.aaP = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_triggerView, 0);
            this.aaU = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TriggerViewDrawer_triggerDistance, 0);
            this.ZI = obtainStyledAttributes.getDrawable(R.styleable.TriggerViewDrawer_scrollDivider);
            if (this.ZI != null) {
                this.ZJ = this.ZI.getIntrinsicHeight();
            }
            this.NB = obtainStyledAttributes.getBoolean(R.styleable.TriggerViewDrawer_dragEnabled, false);
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalArgumentException("The targetView attribute is required and must refer to a valid child.");
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.ZD > 0) {
            this.mContentView = findViewById(this.ZD);
            if (this.mContentView == null) {
                throw new IllegalArgumentException("The contentView attribute is must refer to an existing child.");
            } else if (this.mContentView.getParent() != this) {
                throw new IllegalArgumentException("The contentView attribute is must be a direct child of TriggerViewDrawer.");
            }
        }
        this.ZF = findViewById(this.ZE);
        if (this.ZF != null) {
            this.aaQ = this.ZF;
            while (this.aaQ != null && this.aaQ.getParent() != this) {
                this.aaQ = (View) this.aaQ.getParent();
            }
            if (this.Vi > 0) {
                View findViewById = this.ZF.findViewById(this.Vi);
                if (findViewById == null) {
                    throw new IllegalArgumentException("The scrollableView attribute is must refer to an existing child of targetView.");
                } else if (findViewById instanceof ScrollableView) {
                    this.aaR = (ScrollableView) findViewById;
                } else if (findViewById instanceof ScrollView) {
                    this.aaR = new ScrollViewWrapper((ScrollView) findViewById);
                } else if (findViewById instanceof AdapterView) {
                    this.aaR = new AdapterViewWrapper((AdapterView) findViewById);
                } else {
                    Log.w(LOG_TAG, "The scrollableView is a fixed view that can't scroll all the time");
                    this.aaR = new FixedViewWrapper();
                }
            }
            if (this.aaP > 0) {
                this.aaS = findViewById(this.aaP);
                if (this.aaS == null) {
                    throw new IllegalArgumentException("The triggerView attribute is must refer to an existing child.");
                } else if (this.aaS.getParent() != this) {
                    throw new IllegalArgumentException("The triggerView attribute is must be a direct child of TriggerViewDrawer.");
                } else {
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("The targetView attribute is must refer to an existing child.");
    }

    public void setNestedScrollingEnabled(boolean z) {
        super.setNestedScrollingEnabled(z);
        if (VERSION.SDK_INT >= 21 && z) {
            this.ZF.findViewById(this.Vi).setNestedScrollingEnabled(true);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mContentView != null) {
            this.aaT = ((int) this.mContentView.getY()) + this.mContentView.getHeight();
        }
        if (this.aaS != null) {
            this.aaU = ((int) this.aaS.getY()) + this.aaS.getHeight();
        }
        if (fU()) {
            String str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Height of trigger must bigger than height of content, mTriggerDistance=");
            stringBuilder.append(this.aaU);
            stringBuilder.append(", mContentDistance=");
            stringBuilder.append(this.aaT);
            Log.w(str, stringBuilder.toString());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:84:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARNING: Missing block: B:61:0x011a, code:
            if (r6.ZF.getTranslationY() >= ((float) r6.aaT)) goto L_0x0129;
     */
    /* JADX WARNING: Missing block: B:65:0x0126, code:
            if (r6.aaR.canScrollDown() != false) goto L_0x0129;
     */
    /* JADX WARNING: Missing block: B:73:0x013e, code:
            if (r6.aaR != null) goto L_0x0129;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        if (!this.NB || fU() || ((this.aaT <= 0 && this.aaU <= 0) || (motionEvent.getActionMasked() != 0 && this.aaZ == 0))) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        float y;
        if (actionMasked != 6) {
            switch (actionMasked) {
                case 0:
                    this.ZL = motionEvent2.getPointerId(0);
                    this.qS.clear();
                    this.qS.addMovement(motionEvent2);
                    this.ZQ = motionEvent2.getX(0);
                    y = motionEvent2.getY(0);
                    this.fG = y;
                    this.ZR = y;
                    this.aaY = r((int) this.ZQ, (int) this.ZR);
                    this.aaZ = 1;
                    this.aba = 0;
                    this.abc = false;
                    break;
                case 1:
                    actionMasked = (int) this.ZF.getTranslationY();
                    if (this.aaX && actionMasked != 0) {
                        s(actionMasked, -actionMasked);
                    } else if (!(actionMasked == 0 || actionMasked == this.aaT)) {
                        this.qS.addMovement(motionEvent2);
                        this.qS.computeCurrentVelocity(1000);
                        if (this.qS.getYVelocity() > 5.0f) {
                            s(actionMasked, this.aaT - actionMasked);
                        } else {
                            s(actionMasked, -actionMasked);
                        }
                    }
                    this.qS.clear();
                    this.aaZ = 1;
                    this.aba = 0;
                    this.abc = false;
                    break;
                case 2:
                    actionMasked = motionEvent2.findPointerIndex(this.ZL);
                    if (actionMasked == -1) {
                        this.ZL = motionEvent2.getPointerId(0);
                        actionMasked = 0;
                    }
                    float x = motionEvent2.getX(actionMasked);
                    float y2 = motionEvent2.getY(actionMasked);
                    y = Math.abs(x - this.ZQ);
                    x = Math.abs(y2 - this.ZR);
                    if (this.aaZ == 1) {
                        if (y > ((float) this.fE) && y > x) {
                            this.aaZ = 0;
                        } else if (x > ((float) this.fE)) {
                            this.aaZ = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            if (this.mContentView != null && this.aaY == this.mContentView) {
                                a(this.mContentView, motionEvent2, 3);
                            }
                        }
                    }
                    y = y2 - this.fG;
                    if (this.aaZ == 2 && (y >= 1.0f || y <= -1.0f)) {
                        boolean z = this.ZF.getTranslationY() <= 0.0f;
                        if (VERSION.SDK_INT >= 21 && z && dispatchNestedPreScroll(0, (int) (this.fG - y2), this.abf, this.abe)) {
                            this.fG = y2 - ((float) this.abe[1]);
                            this.abg = true;
                            this.aba = 0;
                            this.aaQ.setPressed(false);
                            this.aaQ.cancelLongPress();
                            this.aaQ.cancelPendingInputEvents();
                            break;
                        }
                        int i;
                        this.abg = false;
                        int i2 = this.aba;
                        if (y > 0.0f) {
                            if (this.aaU <= 0) {
                                break;
                            }
                            if (this.aaR != null) {
                                break;
                            }
                            i = 1;
                            if (i != 1) {
                                if (this.aba == 2 || (this.aaY == this.aaQ && this.aba == 0)) {
                                    a(this.aaQ, motionEvent2, 3);
                                }
                                f(y);
                                fV();
                            } else if (i == 2) {
                                if (this.aba == 1 || (this.aaY != this.aaQ && this.aba == 0)) {
                                    a(this.aaQ, motionEvent2, this.ZQ - motionEvent.getX(), 0.0f, 0);
                                    this.abd = motionEvent.getY();
                                } else {
                                    a(this.aaQ, motionEvent2, this.ZQ - motionEvent.getX(), 0.0f);
                                }
                            }
                            this.aba = i;
                            this.fG = y2;
                        } else if (y < 0.0f) {
                            if (this.ZF.getTranslationY() <= 0.0f) {
                                break;
                            }
                            i = 1;
                            if (i != 1) {
                            }
                            this.aba = i;
                            this.fG = y2;
                        } else {
                            i = i2;
                            if (i != 1) {
                            }
                            this.aba = i;
                            this.fG = y2;
                        }
                        i = 2;
                        if (i != 1) {
                        }
                        this.aba = i;
                        this.fG = y2;
                    }
                    this.qS.addMovement(motionEvent2);
                    break;
                case 3:
                    actionMasked = (int) this.ZF.getTranslationY();
                    if (actionMasked != 0 && (this.aaX || actionMasked != this.aaT)) {
                        s(actionMasked, -actionMasked);
                    }
                    this.qS.clear();
                    this.aaZ = 1;
                    this.aba = 0;
                    this.abc = false;
                    break;
            }
        }
        actionMasked = motionEvent.getActionIndex();
        if (motionEvent2.getPointerId(actionMasked) == this.ZL) {
            actionMasked = actionMasked == 0 ? 1 : 0;
            this.ZL = motionEvent2.getPointerId(actionMasked);
            this.ZQ = motionEvent2.getX(actionMasked);
            y = motionEvent2.getY(actionMasked);
            this.ZR = y;
            this.fG = y;
        }
        this.qS.addMovement(motionEvent2);
        if (this.abd > 0.0f && motionEvent.getActionMasked() == 1) {
            if (Math.abs(motionEvent.getY() - this.abd) < ((float) this.fE)) {
                motionEvent2.setAction(3);
            }
            this.abd = -1.0f;
        }
        if (this.aaZ != 2) {
            if (this.abg && motionEvent.getActionMasked() == 1) {
                motionEvent2.setAction(3);
                this.abg = false;
            }
            super.dispatchTouchEvent(motionEvent);
        } else if (motionEvent.getActionMasked() != 2 && this.aba == 2) {
            a(this.aaQ, motionEvent2);
        }
        return true;
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        boolean z = this.ZF.getTranslationY() <= 0.0f;
        if (i == 2 && z) {
            return true;
        }
        return false;
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        super.onNestedScrollAccepted(view, view2, i);
        if (VERSION.SDK_INT >= 21) {
            startNestedScroll(2);
        }
    }

    private boolean fU() {
        return this.aaU > 0 && this.aaU <= this.aaT;
    }

    private View r(int i, int i2) {
        Rect rect = new Rect();
        r1 = new View[2];
        int i3 = 0;
        r1[0] = this.aaQ;
        r1[1] = this.mContentView;
        int length = r1.length;
        while (i3 < length) {
            View view = r1[i3];
            if (view != null && view.getVisibility() == 0) {
                int x = (int) view.getX();
                int y = (int) view.getY();
                rect.set(x, y, view.getWidth() + x, view.getHeight() + y);
                if (rect.contains(i, i2)) {
                    return view;
                }
            }
            i3++;
        }
        return null;
    }

    private void f(float f) {
        float f2;
        int i;
        int translationY = (int) this.ZF.getTranslationY();
        if (translationY > this.aaT) {
            f2 = ((float) this.aaT) + (((float) (translationY - this.aaT)) * aaO);
        } else {
            f2 = (float) translationY;
        }
        f2 += f;
        if (f2 > ((float) this.aaT)) {
            i = this.aaT + ((int) ((f2 - ((float) this.aaT)) / aaO));
        } else {
            i = (int) f2;
        }
        aL(i);
        invalidate();
    }

    private void aL(int i) {
        if (this.aaU <= 0) {
            i = Math.min(this.aaT, i);
        }
        this.ZF.setTranslationY((float) i);
        fW();
    }

    private void a(View view, MotionEvent motionEvent, int i) {
        motionEvent = MotionEvent.obtain(motionEvent);
        motionEvent.setAction(i);
        a(view, motionEvent);
        motionEvent.recycle();
    }

    private void a(View view, MotionEvent motionEvent, float f, float f2, int i) {
        motionEvent = MotionEvent.obtain(motionEvent);
        motionEvent.setAction(i);
        a(view, motionEvent, f, f2);
        motionEvent.recycle();
    }

    private void a(View view, MotionEvent motionEvent) {
        a(view, motionEvent, (float) (-view.getLeft()), (float) (-view.getTop()));
    }

    private void a(View view, MotionEvent motionEvent, float f, float f2) {
        motionEvent.offsetLocation(f, f2);
        view.dispatchTouchEvent(motionEvent);
        motionEvent.offsetLocation(-f, -f2);
    }

    private void s(int i, int i2) {
        this.wp.startScroll(0, i, 0, i2);
        this.abb = true;
        invalidate();
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.mContentView) {
            return a(canvas, view, j);
        }
        if (view == this.aaS) {
            return b(canvas, view, j);
        }
        return super.drawChild(canvas, view, j);
    }

    private boolean a(Canvas canvas, View view, long j) {
        int translationY = (int) this.ZF.getTranslationY();
        if (translationY > this.aaT) {
            return super.drawChild(canvas, view, j);
        }
        int width = getWidth();
        if (this.ZJ > 0) {
            this.ZI.setBounds(0, translationY - this.ZJ, width, translationY);
            this.ZI.draw(canvas);
            translationY -= this.ZJ;
        }
        canvas.save();
        canvas.clipRect(0, 0, width, translationY);
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return drawChild;
    }

    private boolean b(Canvas canvas, View view, long j) {
        int translationY = (int) this.ZF.getTranslationY();
        if (translationY < this.aaU - view.getHeight()) {
            return true;
        }
        if (translationY > this.aaU) {
            return super.drawChild(canvas, view, j);
        }
        int width = getWidth();
        int y = (int) view.getY();
        canvas.save();
        canvas.clipRect(0, y, width, translationY);
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return drawChild;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.ZF == null) {
            return;
        }
        if (this.wp.computeScrollOffset()) {
            aL(this.wp.getCurrY());
            postInvalidateOnAnimation();
        } else if (this.abb) {
            this.abb = false;
            fV();
        }
    }

    public void setDragEnabled(boolean z) {
        this.NB = z;
    }

    public void setDrawerListener(DrawerListener drawerListener) {
        this.aaV = drawerListener;
    }

    public void openDrawer() {
        openDrawer(false);
    }

    public void openDrawer(boolean z) {
        if (z) {
            int translationY = (int) this.ZF.getTranslationY();
            s(translationY, this.aaT - translationY);
            return;
        }
        aL(this.aaT);
        fV();
        invalidate();
    }

    public void closeDrawer() {
        closeDrawer(false);
    }

    public void closeDrawer(boolean z) {
        if (z) {
            int translationY = (int) this.ZF.getTranslationY();
            s(translationY, -translationY);
            return;
        }
        aL(0);
        fV();
        invalidate();
    }

    public void setTriggerDistance(int i) {
        this.aaU = i;
    }

    public void setTriggerListener(TriggerListener triggerListener) {
        this.aaW = triggerListener;
    }

    public void setAutoClose(boolean z) {
        this.aaX = z;
    }

    private void fV() {
        if (this.aaV != null && this.mContentView != null) {
            int translationY = (int) this.ZF.getTranslationY();
            if (this.aaZ == 2) {
                this.aaV.onDrawerSlide(this, ((float) Math.min(this.aaT, Math.max(translationY, 0))) / ((float) this.aaT));
            } else if (translationY == 0) {
                this.aaV.onDrawerClose(this);
            } else if (translationY == this.aaT) {
                this.aaV.onDrawerOpen(this);
            } else {
                this.aaV.onDrawerSlide(this, ((float) translationY) / ((float) this.aaT));
            }
        }
    }

    private void fW() {
        if (this.aaW != null && this.aaU > 0 && this.aaZ == 2) {
            int i = this.aaU - this.aaT;
            int translationY = ((int) this.ZF.getTranslationY()) - this.aaT;
            this.aaW.onTriggerSlide(this, ((float) translationY) / ((float) i));
            if (translationY >= i) {
                if (!this.abc) {
                    this.abc = true;
                    this.aaW.onTriggerOpen(this);
                }
            } else if (this.abc) {
                this.abc = false;
            }
        }
    }
}
