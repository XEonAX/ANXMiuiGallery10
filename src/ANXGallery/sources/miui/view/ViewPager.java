package miui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.widget.ActionBarOverlayLayout;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import miui.util.ActionBarUtils;

public class ViewPager extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final int INVALID_POINTER = -1;
    private static final boolean Mi = false;
    private static final int Mj = 3;
    private static final int Mk = 25;
    private static final int Ml = 250;
    private static final int Mm = 16;
    private static final int[] Mn = new int[]{16842931};
    private static final Comparator<ItemInfo> Mo = new Comparator<ItemInfo>() {
        /* renamed from: a */
        public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
            return itemInfo.position - itemInfo2.position;
        }
    };
    static final float NF = 0.05f;
    private static final int No = 2;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final int wb = 800;
    private static final Interpolator wu = new Interpolator() {
        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }
    };
    private float MF = -3.4028235E38f;
    private float MI = Float.MAX_VALUE;
    private int MJ;
    private final ItemInfo Mp = new ItemInfo();
    private final Rect Mq = new Rect();
    private PagerAdapter Mr;
    private int Ms;
    private int Mt = -1;
    private Parcelable Mu = null;
    private PagerObserver Mv;
    private int Mw;
    private Drawable Mx;
    private int My;
    private int Mz;
    boolean NB = true;
    float ND = 0.0f;
    private int NH = 0;
    private int Na;
    private boolean Nb;
    private boolean Nc;
    private boolean Nd;
    private int Ne = 3;
    private boolean Nf;
    private boolean Ng;
    private int Nh;
    private int Ni;
    private float Nj;
    private float Nk;
    private boolean Nl;
    private int Nm;
    private int Nn;
    private boolean Np;
    private long Nq;
    private EdgeEffect Nr;
    private EdgeEffect Ns;
    private boolean Nt = true;
    private boolean Nu = false;
    private boolean Nv;
    private int Nw;
    private OnPageChangeListener Nx;
    private OnPageChangeListener Ny;
    private OnAdapterChangeListener Nz;
    private int fE;
    private float mLastMotionX;
    private float mLastMotionY;
    private final ArrayList<ItemInfo> nS = new ArrayList();
    private int qE = -1;
    private boolean qF;
    private int qI;
    private int qJ;
    private VelocityTracker qS;
    private Scroller wp;

    interface Decor {
    }

    static class ItemInfo {
        Object NJ;
        boolean NK;
        float NM;
        boolean cT;
        int position;
        float widthFactor;

        ItemInfo() {
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        public int gravity;
        public boolean isDecor;
        public boolean needsMeasure;
        public float widthFactor = 0.0f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.Mn);
            this.gravity = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    interface OnAdapterChangeListener {
        void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    private class PagerObserver extends DataSetObserver {
        private PagerObserver() {
        }

        /* synthetic */ PagerObserver(ViewPager viewPager, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onChanged() {
            ViewPager.this.dQ();
        }

        public void onInvalidated() {
            ViewPager.this.dQ();
        }
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: g */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: ae */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable NQ;
        int position;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.NQ, i);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("FragmentPager.SavedState{");
            stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringBuilder.append(" position=");
            stringBuilder.append(this.position);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.position = parcel.readInt();
            this.NQ = parcel.readParcelable(null);
        }
    }

    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
        }

        public void onPageScrollStateChanged(int i) {
        }
    }

    public ViewPager(Context context) {
        super(context);
        dO();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        dO();
    }

    void dO() {
        setWillNotDraw(false);
        setDescendantFocusability(nexEngine.ExportHEVCMainTierLevel52);
        setFocusable(true);
        Context context = getContext();
        this.wp = new Scroller(context, wu);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.fE = viewConfiguration.getScaledPagingTouchSlop();
        this.qI = viewConfiguration.getScaledMinimumFlingVelocity();
        this.qJ = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Nr = new EdgeEffect(context);
        this.Ns = new EdgeEffect(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.Nm = (int) (25.0f * f);
        this.Nn = (int) (2.0f * f);
        this.Nh = (int) (16.0f * f);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void ab(int i) {
        if (this.NH != i) {
            this.NH = i;
            if (this.Nx != null) {
                this.Nx.onPageScrollStateChanged(i);
            }
            if (this.Ny != null) {
                this.Ny.onPageScrollStateChanged(i);
            }
        }
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        if (this.Mr != null) {
            this.Mr.unregisterDataSetObserver(this.Mv);
            this.Mr.startUpdate((ViewGroup) this);
            Iterator it = this.nS.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                this.Mr.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.NJ);
            }
            this.Mr.finishUpdate((ViewGroup) this);
            this.nS.clear();
            dP();
            this.Ms = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter2 = this.Mr;
        this.Mr = pagerAdapter;
        if (this.Mr != null) {
            if (this.Mv == null) {
                this.Mv = new PagerObserver(this, null);
            }
            this.Mr.registerDataSetObserver(this.Mv);
            this.Nd = false;
            this.Nt = true;
            if (this.Mt >= 0) {
                this.Mr.restoreState(this.Mu, null);
                a(this.Mt, false, true);
                this.Mt = -1;
                this.Mu = null;
            } else {
                dR();
            }
        }
        if (this.Nz != null && pagerAdapter2 != pagerAdapter) {
            this.Nz.a(pagerAdapter2, pagerAdapter);
        }
    }

    private void dP() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    public PagerAdapter getAdapter() {
        return this.Mr;
    }

    void a(OnAdapterChangeListener onAdapterChangeListener) {
        this.Nz = onAdapterChangeListener;
    }

    public void setCurrentItem(int i) {
        this.Nd = false;
        a(i, this.Nt ^ 1, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.Nd = false;
        a(i, z, false);
    }

    public int getCurrentItem() {
        return this.Ms;
    }

    void a(int i, boolean z, boolean z2) {
        a(i, z, z2, 0);
    }

    void a(int i, boolean z, boolean z2, int i2) {
        if (this.Mr == null || this.Mr.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.Ms != i || this.nS.size() == 0) {
            z2 = true;
            if (i < 0) {
                i = 0;
            } else if (i >= this.Mr.getCount()) {
                i = this.Mr.getCount() - 1;
            }
            int i3 = this.Ne;
            if (i > this.Ms + i3 || i < this.Ms - i3) {
                Iterator it = this.nS.iterator();
                while (it.hasNext()) {
                    ((ItemInfo) it.next()).NK = true;
                }
            }
            if (this.Ms == i) {
                z2 = false;
            }
            ac(i);
            ItemInfo ad = ad(i);
            if (ad != null) {
                i3 = (int) (((float) getWidth()) * Math.max(this.MF, Math.min(ad.NM, this.MI)));
            } else {
                i3 = 0;
            }
            if (z) {
                f(i3, 0, i2);
                if (z2 && this.Nx != null) {
                    this.Nx.onPageSelected(i);
                }
                if (z2 && this.Ny != null) {
                    this.Ny.onPageSelected(i);
                }
            } else {
                if (z2 && this.Nx != null) {
                    this.Nx.onPageSelected(i);
                }
                if (z2 && this.Ny != null) {
                    this.Ny.onPageSelected(i);
                }
                dS();
                scrollTo(i3, 0);
            }
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.Nx = onPageChangeListener;
    }

    public OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = this.Ny;
        this.Ny = onPageChangeListener;
        return onPageChangeListener2;
    }

    public int getOffscreenPageLimit() {
        return this.Ne;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 3) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Requested offscreen page limit ");
            stringBuilder.append(i);
            stringBuilder.append(" too small; defaulting to ");
            stringBuilder.append(3);
            Log.w(str, stringBuilder.toString());
            i = 3;
        }
        if (i != this.Ne) {
            this.Ne = i;
            dR();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.Mw;
        this.Mw = i;
        int width = getWidth();
        d(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.Mw;
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.Mx = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.Mx;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.Mx;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    float a(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    void smoothScrollTo(int i, int i2) {
        f(i, i2, 0);
    }

    void f(int i, int i2, int i3) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            dS();
            dR();
            ab(0);
            return;
        }
        setScrollingCacheEnabled(true);
        ab(2);
        i = getWidth();
        i2 = i / 2;
        float f = (float) i;
        float f2 = (float) i2;
        f2 += a(Math.min(1.0f, (((float) Math.abs(i4)) * 1.0f) / f)) * f2;
        i3 = Math.abs(i3);
        if (i3 > 0) {
            i = 4 * Math.round(1000.0f * Math.abs(f2 / ((float) i3)));
        } else {
            i = (int) (((((float) Math.abs(i4)) / ((f * this.Mr.getPageWidth(this.Ms)) + ((float) this.Mw))) + 1.0f) * 250.0f);
        }
        this.wp.startScroll(scrollX, scrollY, i4, i5, Math.min(i, 800));
        postInvalidateOnAnimation();
    }

    ItemInfo m(int i, int i2) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.position = i;
        itemInfo.NJ = this.Mr.instantiateItem((ViewGroup) this, i);
        itemInfo.widthFactor = this.Mr.getPageWidth(i);
        itemInfo.cT = this.Mr.hasActionMenu(i);
        if (i2 < 0 || i2 >= this.nS.size()) {
            this.nS.add(itemInfo);
        } else {
            this.nS.add(i2, itemInfo);
        }
        return itemInfo;
    }

    void dQ() {
        boolean z = false;
        boolean z2 = this.nS.size() < (this.Ne * 2) + 1 && this.nS.size() < this.Mr.getCount();
        boolean z3 = z2;
        int i = this.Ms;
        int i2 = 0;
        int i3 = i2;
        boolean z4 = i3;
        while (i2 < this.nS.size()) {
            ItemInfo itemInfo = (ItemInfo) this.nS.get(i2);
            int itemPosition = this.Mr.getItemPosition(itemInfo.NJ);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.nS.remove(i2);
                    i2--;
                    if (i3 == 0) {
                        this.Mr.startUpdate((ViewGroup) this);
                        i3 = true;
                    }
                    this.Mr.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.NJ);
                    if (this.Ms == itemInfo.position) {
                        i = Math.max(0, Math.min(this.Ms, this.Mr.getCount() - 1));
                    }
                    z3 = true;
                } else {
                    if (itemInfo.position != itemPosition) {
                        if (itemInfo.position == this.Ms) {
                            i = itemPosition;
                        }
                        itemInfo.position = itemPosition;
                        z3 = true;
                    }
                    if (itemInfo.cT != this.Mr.hasActionMenu(itemInfo.position)) {
                        itemInfo.cT ^= true;
                    }
                }
                i2++;
            } else if (itemInfo.cT != this.Mr.hasActionMenu(itemInfo.position)) {
                itemInfo.cT ^= true;
            } else {
                i2++;
            }
            z4 = true;
            i2++;
        }
        if (i3 != 0) {
            this.Mr.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.nS, Mo);
        if (z3) {
            i2 = getChildCount();
            for (i3 = 0; i3 < i2; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.widthFactor = 0.0f;
                }
            }
            a(i, false, true);
            requestLayout();
        } else {
            z = z4;
        }
        if (z) {
            requestLayout();
        }
    }

    void dR() {
        ac(this.Ms);
    }

    /* JADX WARNING: Missing block: B:19:0x005d, code:
            if (r8.position == r0.Ms) goto L_0x0064;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void ac(int i) {
        ItemInfo ad;
        int i2 = i;
        if (this.Ms != i2) {
            ad = ad(this.Ms);
            this.Ms = i2;
        } else {
            ad = null;
        }
        if (this.Mr != null && !this.Nd && getWindowToken() != null) {
            ItemInfo itemInfo;
            ItemInfo itemInfo2;
            this.Mr.startUpdate(this);
            i2 = this.Ne;
            int i3 = 0;
            int max = Math.max(0, this.Ms - i2);
            int count = this.Mr.getCount();
            i2 = Math.min(count - 1, this.Ms + i2);
            int i4 = 0;
            while (i4 < this.nS.size()) {
                itemInfo = (ItemInfo) this.nS.get(i4);
                if (itemInfo.position < this.Ms) {
                    i4++;
                }
            }
            itemInfo = null;
            if (itemInfo == null && count > 0) {
                itemInfo = m(this.Ms, i4);
            }
            if (itemInfo != null) {
                ItemInfo itemInfo3;
                int i5 = i4 - 1;
                if (i5 >= 0) {
                    itemInfo3 = (ItemInfo) this.nS.get(i5);
                } else {
                    itemInfo3 = null;
                }
                float f = 2.0f - itemInfo.widthFactor;
                int i6 = this.Ms - 1;
                int i7 = i4;
                float f2 = 0.0f;
                while (i6 >= 0) {
                    if (f2 < f || i6 >= max) {
                        if (itemInfo3 == null || i6 != itemInfo3.position) {
                            f2 += m(i6, i5 + 1).widthFactor;
                            i7++;
                            if (i5 >= 0) {
                                itemInfo2 = (ItemInfo) this.nS.get(i5);
                                itemInfo3 = itemInfo2;
                                i6--;
                            }
                        } else {
                            f2 += itemInfo3.widthFactor;
                            i5--;
                            if (i5 >= 0) {
                                itemInfo2 = (ItemInfo) this.nS.get(i5);
                                itemInfo3 = itemInfo2;
                                i6--;
                            }
                        }
                    } else if (itemInfo3 == null) {
                        break;
                    } else {
                        if (i6 == itemInfo3.position && !itemInfo3.NK) {
                            this.nS.remove(i5);
                            this.Mr.destroyItem(this, i6, itemInfo3.NJ);
                            i5--;
                            i7--;
                            if (i5 >= 0) {
                                itemInfo2 = (ItemInfo) this.nS.get(i5);
                                itemInfo3 = itemInfo2;
                            }
                        }
                        i6--;
                    }
                    itemInfo2 = null;
                    itemInfo3 = itemInfo2;
                    i6--;
                }
                float f3 = itemInfo.widthFactor;
                max = i7 + 1;
                if (f3 < 2.0f) {
                    ItemInfo itemInfo4;
                    if (max < this.nS.size()) {
                        itemInfo4 = (ItemInfo) this.nS.get(max);
                    } else {
                        itemInfo4 = null;
                    }
                    i5 = this.Ms;
                    while (true) {
                        i5++;
                        if (i5 >= count) {
                            break;
                        }
                        if (f3 < 2.0f || i5 <= i2) {
                            if (itemInfo4 == null || i5 != itemInfo4.position) {
                                itemInfo4 = m(i5, max);
                                max++;
                                f3 += itemInfo4.widthFactor;
                                if (max < this.nS.size()) {
                                    itemInfo4 = (ItemInfo) this.nS.get(max);
                                }
                            } else {
                                f3 += itemInfo4.widthFactor;
                                max++;
                                if (max < this.nS.size()) {
                                    itemInfo4 = (ItemInfo) this.nS.get(max);
                                }
                            }
                        } else if (itemInfo4 == null) {
                            break;
                        } else if (i5 == itemInfo4.position && !itemInfo4.NK) {
                            this.nS.remove(max);
                            this.Mr.destroyItem(this, i5, itemInfo4.NJ);
                            if (max < this.nS.size()) {
                                itemInfo4 = (ItemInfo) this.nS.get(max);
                            }
                        }
                        itemInfo4 = null;
                    }
                }
                a(itemInfo, i7, ad);
            }
            this.Mr.setPrimaryItem(this, this.Ms, itemInfo != null ? itemInfo.NJ : null);
            this.Mr.finishUpdate(this);
            i2 = getChildCount();
            for (int i8 = 0; i8 < i2; i8++) {
                View childAt = getChildAt(i8);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.isDecor && layoutParams.widthFactor == 0.0f) {
                    itemInfo2 = k(childAt);
                    if (itemInfo2 != null) {
                        layoutParams.widthFactor = itemInfo2.widthFactor;
                    }
                }
            }
            if (hasFocus()) {
                View findFocus = findFocus();
                if (findFocus != null) {
                    itemInfo2 = l(findFocus);
                } else {
                    itemInfo2 = null;
                }
                if (itemInfo2 == null || itemInfo2.position != this.Ms) {
                    while (i3 < getChildCount()) {
                        findFocus = getChildAt(i3);
                        ad = k(findFocus);
                        if (ad != null && ad.position == this.Ms && findFocus.requestFocus(2)) {
                            break;
                        }
                        i3++;
                    }
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0057 A:{LOOP_END, LOOP:2: B:19:0x0053->B:21:0x0057} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x009f A:{LOOP_END, LOOP:5: B:34:0x009b->B:36:0x009f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(ItemInfo itemInfo, int i, ItemInfo itemInfo2) {
        int i2;
        int size;
        int count = this.Mr.getCount();
        int width = getWidth();
        float f = width > 0 ? ((float) this.Mw) / ((float) width) : 0.0f;
        if (itemInfo2 != null) {
            int i3 = itemInfo2.position;
            Object obj;
            ItemInfo itemInfo3;
            if (i3 < itemInfo.position) {
                float f2 = (itemInfo2.NM + itemInfo2.widthFactor) + f;
                i3++;
                i2 = 0;
                while (i3 <= itemInfo.position && i2 < this.nS.size()) {
                    obj = this.nS.get(i2);
                    while (true) {
                        itemInfo3 = (ItemInfo) obj;
                        if (i3 <= itemInfo3.position || i2 >= this.nS.size() - 1) {
                            while (i3 < itemInfo3.position) {
                                f2 += this.Mr.getPageWidth(i3) + f;
                                i3++;
                            }
                        } else {
                            i2++;
                            obj = this.nS.get(i2);
                        }
                    }
                    while (i3 < itemInfo3.position) {
                    }
                    itemInfo3.NM = f2;
                    f2 += itemInfo3.widthFactor + f;
                    i3++;
                }
            } else if (i3 > itemInfo.position) {
                size = this.nS.size() - 1;
                float f3 = itemInfo2.NM;
                while (true) {
                    i3--;
                    if (i3 < itemInfo.position || size < 0) {
                        break;
                    }
                    obj = this.nS.get(size);
                    while (true) {
                        itemInfo3 = (ItemInfo) obj;
                        if (i3 >= itemInfo3.position || size <= 0) {
                            while (i3 > itemInfo3.position) {
                                f3 -= this.Mr.getPageWidth(i3) + f;
                                i3--;
                            }
                        } else {
                            size--;
                            obj = this.nS.get(size);
                        }
                    }
                    while (i3 > itemInfo3.position) {
                    }
                    f3 -= itemInfo3.widthFactor + f;
                    itemInfo3.NM = f3;
                }
            }
        }
        i2 = this.nS.size();
        float f4 = itemInfo.NM;
        size = itemInfo.position - 1;
        this.MF = itemInfo.position == 0 ? itemInfo.NM : -3.4028235E38f;
        count--;
        this.MI = itemInfo.position == count ? (itemInfo.NM + itemInfo.widthFactor) - 1.0f : Float.MAX_VALUE;
        int i4 = i - 1;
        while (i4 >= 0) {
            ItemInfo itemInfo4 = (ItemInfo) this.nS.get(i4);
            while (size > itemInfo4.position) {
                f4 -= this.Mr.getPageWidth(size) + f;
                size--;
            }
            f4 -= itemInfo4.widthFactor + f;
            itemInfo4.NM = f4;
            if (itemInfo4.position == 0) {
                this.MF = f4;
            }
            i4--;
            size--;
        }
        f4 = (itemInfo.NM + itemInfo.widthFactor) + f;
        int i5 = itemInfo.position + 1;
        i++;
        while (i < i2) {
            ItemInfo itemInfo5 = (ItemInfo) this.nS.get(i);
            while (i5 < itemInfo5.position) {
                f4 += this.Mr.getPageWidth(i5) + f;
                i5++;
            }
            if (itemInfo5.position == count) {
                this.MI = (itemInfo5.widthFactor + f4) - 1.0f;
            }
            itemInfo5.NM = f4;
            f4 += itemInfo5.widthFactor + f;
            i++;
            i5++;
        }
        this.Nu = false;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.Ms;
        if (this.Mr != null) {
            savedState.NQ = this.Mr.saveState();
        }
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.Mr != null) {
                this.Mr.restoreState(savedState.NQ, null);
                a(savedState.position, false, true);
            } else {
                this.Mt = savedState.position;
                this.Mu = savedState.NQ;
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        layoutParams2.isDecor |= view instanceof Decor;
        if (!this.Nb) {
            super.addView(view, i, layoutParams);
        } else if (layoutParams2.isDecor) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            layoutParams2.needsMeasure = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    ItemInfo k(View view) {
        Iterator it = this.nS.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (this.Mr.isViewFromObject(view, itemInfo.NJ)) {
                return itemInfo;
            }
        }
        return null;
    }

    ItemInfo l(View view) {
        while (true) {
            ViewPager parent = view.getParent();
            if (parent == this) {
                return k(view);
            }
            if (!(parent instanceof View)) {
                return null;
            }
            view = parent;
        }
    }

    ItemInfo ad(int i) {
        Iterator it = this.nS.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo.position == i) {
                return itemInfo;
            }
        }
        return null;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Nt = true;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z = false;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.Ni = Math.min(measuredWidth / 10, this.Nh);
        measuredWidth = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i4 = measuredHeight;
        measuredHeight = measuredWidth;
        measuredWidth = 0;
        while (true) {
            boolean z2 = true;
            int i5 = 1073741824;
            if (measuredWidth >= childCount) {
                break;
            }
            View childAt = getChildAt(measuredWidth);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.isDecor) {
                    int i6;
                    int i7;
                    int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams.gravity, getLayoutDirection()) & 7;
                    int i8 = layoutParams.gravity & BaiduSceneResult.STREET_VIEW;
                    i8 = (i8 == 48 || i8 == 80) ? true : z;
                    if (!(absoluteGravity == 3 || absoluteGravity == 5)) {
                        z2 = z;
                    }
                    absoluteGravity = Integer.MIN_VALUE;
                    if (i8 != 0) {
                        i6 = Integer.MIN_VALUE;
                        absoluteGravity = 1073741824;
                    } else {
                        i6 = z2 ? 1073741824 : Integer.MIN_VALUE;
                    }
                    if (layoutParams.width != -2) {
                        if (layoutParams.width != -1) {
                            i7 = layoutParams.width;
                        } else {
                            i7 = measuredHeight;
                        }
                        absoluteGravity = 1073741824;
                    } else {
                        i7 = measuredHeight;
                    }
                    if (layoutParams.height != -2) {
                        i3 = layoutParams.height != -1 ? layoutParams.height : i4;
                    } else {
                        i3 = i4;
                        i5 = i6;
                    }
                    childAt.measure(MeasureSpec.makeMeasureSpec(i7, absoluteGravity), MeasureSpec.makeMeasureSpec(i3, i5));
                    if (i8 != 0) {
                        i4 -= childAt.getMeasuredHeight();
                    } else if (z2) {
                        measuredHeight -= childAt.getMeasuredWidth();
                    }
                }
            }
            measuredWidth++;
            z = false;
        }
        this.MJ = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.Na = MeasureSpec.makeMeasureSpec(i4, 1073741824);
        this.Nb = true;
        dR();
        i3 = 0;
        this.Nb = false;
        measuredWidth = getChildCount();
        while (i3 < measuredWidth) {
            View childAt2 = getChildAt(i3);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.isDecor) {
                    int i9;
                    int makeMeasureSpec = MeasureSpec.makeMeasureSpec((int) (((float) measuredHeight) * layoutParams2.widthFactor), 1073741824);
                    ItemInfo k = k(childAt2);
                    if (k == null || !k.cT) {
                        i9 = i4;
                    } else {
                        i9 = i4 - ((int) (((float) dY()) * (1.0f - this.Nk)));
                    }
                    childAt2.measure(makeMeasureSpec, MeasureSpec.makeMeasureSpec(i9, 1073741824));
                }
            }
            i3++;
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            d(i, i3, this.Mw, this.Mw);
        }
    }

    private void d(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.nS.isEmpty()) {
            ItemInfo ad = ad(this.Ms);
            i = (int) ((ad != null ? Math.min(ad.NM, this.MI) : 0.0f) * ((float) i));
            if (i != getScrollX()) {
                dS();
                scrollTo(i, getScrollY());
                return;
            }
            return;
        }
        int scrollX = (int) ((((float) getScrollX()) / ((float) (i2 + i4))) * ((float) (i3 + i)));
        scrollTo(scrollX, getScrollY());
        if (!this.wp.isFinished()) {
            this.wp.startScroll(scrollX, 0, (int) (ad(this.Ms).NM * ((float) i)), 0, this.wp.getDuration() - this.wp.timePassed());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean z2 = true;
        this.Nb = true;
        dR();
        this.Nb = false;
        int childCount = getChildCount();
        int i6 = i3 - i;
        int i7 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = 0;
        int i9 = paddingBottom;
        paddingBottom = paddingTop;
        paddingTop = paddingLeft;
        paddingLeft = i8;
        while (true) {
            i5 = 8;
            if (paddingLeft >= childCount) {
                break;
            }
            View childAt = getChildAt(paddingLeft);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int max;
                    int i10;
                    boolean absoluteGravity = Gravity.getAbsoluteGravity(layoutParams.gravity, getLayoutDirection()) & 7;
                    i5 = layoutParams.gravity & BaiduSceneResult.STREET_VIEW;
                    if (absoluteGravity == z2) {
                        max = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingTop);
                    } else if (absoluteGravity) {
                        i10 = paddingTop;
                        paddingTop = childAt.getMeasuredWidth() + paddingTop;
                        max = i10;
                    } else if (!absoluteGravity) {
                        max = paddingTop;
                    } else {
                        max = (i6 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    if (i5 != 16) {
                        if (i5 == 48) {
                            i5 = childAt.getMeasuredHeight() + paddingBottom;
                        } else if (i5 != 80) {
                            i5 = paddingBottom;
                        } else {
                            i5 = (i7 - i9) - childAt.getMeasuredHeight();
                            i9 += childAt.getMeasuredHeight();
                        }
                        max += scrollX;
                        childAt.layout(max, paddingBottom, childAt.getMeasuredWidth() + max, paddingBottom + childAt.getMeasuredHeight());
                        i8++;
                        paddingBottom = i5;
                    } else {
                        i5 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingBottom);
                    }
                    i10 = i5;
                    i5 = paddingBottom;
                    paddingBottom = i10;
                    max += scrollX;
                    childAt.layout(max, paddingBottom, childAt.getMeasuredWidth() + max, paddingBottom + childAt.getMeasuredHeight());
                    i8++;
                    paddingBottom = i5;
                }
            }
            paddingLeft++;
            z2 = true;
        }
        int i11 = 0;
        while (i11 < childCount) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != i5) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.isDecor) {
                    ItemInfo k = k(childAt2);
                    if (k != null) {
                        int i12 = ((int) (((float) i6) * k.NM)) + paddingTop;
                        if (this.Nl || layoutParams2.needsMeasure) {
                            layoutParams2.needsMeasure = false;
                            paddingLeft = MeasureSpec.makeMeasureSpec((int) (((float) ((i6 - paddingTop) - paddingRight)) * layoutParams2.widthFactor), 1073741824);
                            this.Nl = false;
                            if (k.cT) {
                                scrollX = dY();
                            } else {
                                scrollX = 0;
                            }
                            childAt2.measure(paddingLeft, MeasureSpec.makeMeasureSpec((int) (((float) ((i7 - paddingBottom) - i9)) - (((float) scrollX) * (1.0f - this.Nk))), 1073741824));
                        }
                        childAt2.layout(i12, paddingBottom, childAt2.getMeasuredWidth() + i12, childAt2.getMeasuredHeight() + paddingBottom);
                    }
                }
            }
            i11++;
            i5 = 8;
        }
        this.My = paddingBottom;
        this.Mz = i7 - i9;
        this.Nw = i8;
        this.Nt = false;
    }

    public void computeScroll() {
        if (this.wp.isFinished() || !this.wp.computeScrollOffset()) {
            dS();
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.wp.getCurrX();
        int currY = this.wp.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!g(currX, false)) {
                this.wp.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    private boolean g(int i, boolean z) {
        if (this.nS.size() == 0) {
            this.Nv = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.Nv) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ItemInfo dU = dU();
        int width = getWidth();
        int i2 = this.Mw + width;
        float f = (float) width;
        float f2 = ((float) this.Mw) / f;
        int i3 = dU.position;
        float f3 = ((((float) i) / f) - dU.NM) / (dU.widthFactor + f2);
        int i4 = (int) (((float) i2) * f3);
        if (z) {
            if (this.ND >= f3 || f3 <= 0.55f) {
                z = this.ND > f3 && f3 < 0.45f;
                i2 = i3;
            } else {
                i2 = i3 + 1;
                z = true;
            }
            this.ND = f3;
            if (z) {
                int count = i2 < 0 ? 0 : i2 >= this.Mr.getCount() ? this.Mr.getCount() - 1 : i2;
                if (count != this.Ms) {
                    ac(count);
                    if (this.Nx != null) {
                        this.Nx.onPageSelected(count);
                    }
                    if (this.Ny != null) {
                        this.Ny.onPageSelected(count);
                    }
                }
            }
        }
        this.Nv = false;
        onPageScrolled(i3, f3, i4);
        if (this.Nv) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x006f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onPageScrolled(int i, float f, int i2) {
        if (this.Nw > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams.gravity, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity == 3) {
                            absoluteGravity = childAt.getWidth() + paddingLeft;
                        } else if (absoluteGravity != 5) {
                            absoluteGravity = paddingLeft;
                        } else {
                            absoluteGravity = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        paddingLeft = (paddingLeft + scrollX) - childAt.getLeft();
                        if (paddingLeft != 0) {
                            childAt.offsetLeftAndRight(paddingLeft);
                        }
                        paddingLeft = absoluteGravity;
                    } else {
                        absoluteGravity = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i4 = absoluteGravity;
                    absoluteGravity = paddingLeft;
                    paddingLeft = i4;
                    paddingLeft = (paddingLeft + scrollX) - childAt.getLeft();
                    if (paddingLeft != 0) {
                    }
                    paddingLeft = absoluteGravity;
                }
            }
        }
        if (this.Nx != null) {
            this.Nx.onPageScrolled(i, f, i2);
        }
        if (this.Ny != null) {
            this.Ny.onPageScrolled(i, f, i2);
        }
        this.Nv = true;
    }

    private void dS() {
        boolean z = this.NH == 2;
        if (z) {
            setScrollingCacheEnabled(false);
            this.wp.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.wp.getCurrX();
            int currY = this.wp.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
            }
            ab(0);
        }
        this.Nd = false;
        Iterator it = this.nS.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo.NK) {
                itemInfo.NK = false;
                z = true;
            }
        }
        if (z) {
            dR();
        }
    }

    private boolean b(float f, float f2) {
        return (f < ((float) this.Ni) && f2 > 0.0f) || (f > ((float) (getWidth() - this.Ni)) && f2 < 0.0f);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        if (!this.NB) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            dT();
            return false;
        }
        if (action != 0) {
            if (this.qF) {
                return true;
            }
            if (this.Nf) {
                return false;
            }
        }
        float x;
        if (action == 0) {
            x = motionEvent.getX();
            this.Nj = x;
            this.mLastMotionX = x;
            this.mLastMotionY = motionEvent.getY();
            this.qE = motionEvent2.getPointerId(0);
            this.Nf = false;
            this.wp.computeScrollOffset();
            if (this.NH != 2 || Math.abs(this.wp.getFinalX() - this.wp.getCurrX()) <= this.Nn) {
                dS();
                this.qF = false;
            } else {
                this.wp.abortAnimation();
                this.Nd = false;
                dR();
                this.qF = true;
                ab(1);
            }
        } else if (action == 2) {
            action = this.qE;
            if (action != -1) {
                action = motionEvent2.findPointerIndex(action);
                if (action >= 0 && action < motionEvent.getPointerCount()) {
                    float x2 = motionEvent2.getX(action);
                    float f = x2 - this.mLastMotionX;
                    float abs = Math.abs(f);
                    float y = motionEvent2.getY(action);
                    float abs2 = Math.abs(y - this.mLastMotionY);
                    int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                    if (!(i == 0 || b(this.mLastMotionX, f))) {
                        if (canScroll(this, false, (int) f, (int) x2, (int) y)) {
                            this.mLastMotionX = x2;
                            this.Nj = x2;
                            this.mLastMotionY = y;
                            this.Nf = true;
                            return false;
                        }
                    }
                    if (abs > ((float) this.fE) && abs > abs2) {
                        this.qF = true;
                        ab(1);
                        if (i > 0) {
                            x = this.Nj + ((float) this.fE);
                        } else {
                            x = this.Nj - ((float) this.fE);
                        }
                        this.mLastMotionX = x;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > ((float) this.fE)) {
                        this.Nf = true;
                    }
                    if (this.qF && b(x2)) {
                        postInvalidateOnAnimation();
                    }
                }
            }
        } else if (action == 6) {
            a(motionEvent);
        }
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        }
        this.qS.addMovement(motionEvent2);
        return this.qF;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.Np) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.Mr == null || this.Mr.getCount() == 0) {
            return false;
        }
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        }
        this.qS.addMovement(motionEvent);
        float x;
        int xVelocity;
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.wp.abortAnimation();
                this.Nd = false;
                dR();
                this.qF = true;
                ab(1);
                x = motionEvent.getX();
                this.Nj = x;
                this.mLastMotionX = x;
                this.qE = motionEvent.getPointerId(0);
                break;
            case 1:
                if (this.qF) {
                    VelocityTracker velocityTracker = this.qS;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.qJ);
                    xVelocity = (int) velocityTracker.getXVelocity(this.qE);
                    this.Nd = true;
                    int width = getWidth();
                    int scrollX = getScrollX();
                    ItemInfo dU = dU();
                    a(a(dU.position, ((((float) scrollX) / ((float) width)) - dU.NM) / dU.widthFactor, xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.qE)) - this.Nj)), true, true, xVelocity);
                    z = dT();
                    break;
                }
                break;
            case 2:
                if (!this.qF) {
                    xVelocity = motionEvent.findPointerIndex(this.qE);
                    if (xVelocity == -1) {
                        z = dT();
                        break;
                    }
                    float x2 = motionEvent.getX(xVelocity);
                    float abs = Math.abs(x2 - this.mLastMotionX);
                    x = Math.abs(motionEvent.getY(xVelocity) - this.mLastMotionY);
                    if (abs > ((float) this.fE) && abs > x) {
                        this.qF = true;
                        if (x2 - this.Nj > 0.0f) {
                            x = this.Nj + ((float) this.fE);
                        } else {
                            x = this.Nj - ((float) this.fE);
                        }
                        this.mLastMotionX = x;
                        ab(1);
                        setScrollingCacheEnabled(true);
                    }
                }
                if (this.qF) {
                    z = b(motionEvent.getX(motionEvent.findPointerIndex(this.qE)));
                    break;
                }
                break;
            case 3:
                if (this.qF) {
                    a(this.Ms, true, true);
                    z = dT();
                    break;
                }
                break;
            case 5:
                xVelocity = motionEvent.getActionIndex();
                this.mLastMotionX = motionEvent.getX(xVelocity);
                this.qE = motionEvent.getPointerId(xVelocity);
                break;
            case 6:
                a(motionEvent);
                this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.qE));
                break;
        }
        if (z) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    private boolean dT() {
        this.qE = -1;
        dV();
        this.Nr.onRelease();
        this.Ns.onRelease();
        return this.Nr.isFinished() | this.Ns.isFinished();
    }

    private boolean b(float f) {
        boolean z;
        boolean z2;
        float f2 = this.mLastMotionX - f;
        this.mLastMotionX = f;
        f = ((float) getScrollX()) + f2;
        f2 = (float) getWidth();
        float f3 = this.MF * f2;
        float f4 = this.MI * f2;
        boolean z3 = false;
        ItemInfo itemInfo = (ItemInfo) this.nS.get(0);
        ItemInfo itemInfo2 = (ItemInfo) this.nS.get(this.nS.size() - 1);
        if (itemInfo.position != 0) {
            f3 = itemInfo.NM * f2;
            z = false;
        } else {
            z = true;
        }
        if (itemInfo2.position != this.Mr.getCount() - 1) {
            f4 = itemInfo2.NM * f2;
            z2 = false;
        } else {
            z2 = true;
        }
        if (f < f3) {
            if (z) {
                this.Nr.onPull(Math.abs(f3 - f) / f2);
                z3 = true;
            }
            f = f3;
        } else if (f > f4) {
            if (z2) {
                this.Ns.onPull(Math.abs(f - f4) / f2);
                z3 = true;
            }
            f = f4;
        }
        int i = (int) f;
        this.mLastMotionX += f - ((float) i);
        scrollTo(i, getScrollY());
        g(i, true);
        return z3;
    }

    private ItemInfo dU() {
        float scrollX;
        float f;
        int width = getWidth();
        if (width > 0) {
            scrollX = ((float) getScrollX()) / ((float) width);
        } else {
            scrollX = 0.0f;
        }
        if (width > 0) {
            f = ((float) this.Mw) / ((float) width);
        } else {
            f = 0.0f;
        }
        float f2 = 0.0f;
        float f3 = f2;
        int i = 0;
        int i2 = -1;
        ItemInfo itemInfo = null;
        int i3 = 1;
        while (i < this.nS.size()) {
            ItemInfo itemInfo2 = (ItemInfo) this.nS.get(i);
            if (i3 == 0) {
                i2++;
                if (itemInfo2.position != i2) {
                    itemInfo2 = this.Mp;
                    itemInfo2.NM = (f2 + f3) + f;
                    itemInfo2.position = i2;
                    itemInfo2.widthFactor = this.Mr.getPageWidth(itemInfo2.position);
                    i--;
                }
            }
            f2 = itemInfo2.NM;
            float f4 = (itemInfo2.widthFactor + f2) + f;
            if (i3 == 0 && scrollX < f2) {
                return itemInfo;
            }
            if (scrollX < f4 || i == this.nS.size() - 1) {
                return itemInfo2;
            }
            i2 = itemInfo2.position;
            f3 = itemInfo2.widthFactor;
            i++;
            i3 = 0;
            itemInfo = itemInfo2;
        }
        return itemInfo;
    }

    private int a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.Nm || Math.abs(i2) <= this.qI) {
            i = (int) ((((float) i) + f) + 0.5f);
        } else if (i2 <= 0) {
            i++;
        }
        if (this.nS.size() <= 0) {
            return i;
        }
        return Math.max(((ItemInfo) this.nS.get(0)).position, Math.min(i, ((ItemInfo) this.nS.get(this.nS.size() - 1)).position));
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        int i = 0;
        if (overScrollMode == 0 || (overScrollMode == 1 && this.Mr != null && this.Mr.getCount() > 1)) {
            int width;
            if (!this.Nr.isFinished()) {
                overScrollMode = canvas.save();
                i = (getHeight() - getPaddingTop()) - getPaddingBottom();
                width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-i) + getPaddingTop()), this.MF * ((float) width));
                this.Nr.setSize(i, width);
                i = this.Nr.draw(canvas);
                canvas.restoreToCount(overScrollMode);
            }
            if (!this.Ns.isFinished()) {
                overScrollMode = canvas.save();
                width = getWidth();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.MI + 1.0f)) * ((float) width));
                this.Ns.setSize(height, width);
                i |= this.Ns.draw(canvas);
                canvas.restoreToCount(overScrollMode);
            }
        } else {
            this.Nr.finish();
            this.Ns.finish();
        }
        if (i != 0) {
            postInvalidateOnAnimation();
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.Mw > 0 && this.Mx != null && this.nS.size() > 0 && this.Mr != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = (float) width;
            float f2 = ((float) this.Mw) / f;
            int i = 0;
            ItemInfo itemInfo = (ItemInfo) this.nS.get(0);
            float f3 = itemInfo.NM;
            int size = this.nS.size();
            int i2 = itemInfo.position;
            int i3 = ((ItemInfo) this.nS.get(size - 1)).position;
            while (i2 < i3) {
                float f4;
                float f5;
                while (i2 > itemInfo.position && i < size) {
                    i++;
                    itemInfo = (ItemInfo) this.nS.get(i);
                }
                if (i2 == itemInfo.position) {
                    f4 = (itemInfo.NM + itemInfo.widthFactor) * f;
                    f3 = (itemInfo.NM + itemInfo.widthFactor) + f2;
                } else {
                    float pageWidth = this.Mr.getPageWidth(i2);
                    f4 = (f3 + pageWidth) * f;
                    f3 += pageWidth + f2;
                }
                if (((float) this.Mw) + f4 > ((float) scrollX)) {
                    f5 = f2;
                    this.Mx.setBounds((int) f4, this.My, (int) ((((float) this.Mw) + f4) + 0.5f), this.Mz);
                    this.Mx.draw(canvas);
                } else {
                    Canvas canvas2 = canvas;
                    f5 = f2;
                }
                if (f4 <= ((float) (scrollX + width))) {
                    i2++;
                    f2 = f5;
                } else {
                    return;
                }
            }
        }
    }

    public boolean beginFakeDrag() {
        if (this.qF) {
            return false;
        }
        this.Np = true;
        ab(1);
        this.mLastMotionX = 0.0f;
        this.Nj = 0.0f;
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        } else {
            this.qS.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.qS.addMovement(obtain);
        obtain.recycle();
        this.Nq = uptimeMillis;
        return true;
    }

    public void endFakeDrag() {
        if (this.Np) {
            VelocityTracker velocityTracker = this.qS;
            velocityTracker.computeCurrentVelocity(1000, (float) this.qJ);
            int xVelocity = (int) velocityTracker.getXVelocity(this.qE);
            this.Nd = true;
            int width = getWidth();
            int scrollX = getScrollX();
            ItemInfo dU = dU();
            a(a(dU.position, ((((float) scrollX) / ((float) width)) - dU.NM) / dU.widthFactor, xVelocity, (int) (this.mLastMotionX - this.Nj)), true, true, xVelocity);
            dV();
            this.Np = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public void fakeDragBy(float f) {
        if (this.Np) {
            this.mLastMotionX += f;
            float scrollX = ((float) getScrollX()) - f;
            float width = (float) getWidth();
            float f2 = this.MF * width;
            float f3 = this.MI * width;
            ItemInfo itemInfo = (ItemInfo) this.nS.get(0);
            ItemInfo itemInfo2 = (ItemInfo) this.nS.get(this.nS.size() - 1);
            if (itemInfo.position != 0) {
                f2 = itemInfo.NM * width;
            }
            if (itemInfo2.position != this.Mr.getCount() - 1) {
                f3 = itemInfo2.NM * width;
            }
            if (scrollX < f2) {
                scrollX = f2;
            } else if (scrollX > f3) {
                scrollX = f3;
            }
            int i = (int) scrollX;
            this.mLastMotionX += scrollX - ((float) i);
            scrollTo(i, getScrollY());
            g(i, true);
            MotionEvent obtain = MotionEvent.obtain(this.Nq, SystemClock.uptimeMillis(), 2, this.mLastMotionX, 0.0f, 0);
            this.qS.addMovement(obtain);
            obtain.recycle();
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public boolean isFakeDragging() {
        return this.Np;
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.qE) {
            actionIndex = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(actionIndex);
            this.qE = motionEvent.getPointerId(actionIndex);
            if (this.qS != null) {
                this.qS.clear();
            }
        }
    }

    private void dV() {
        this.qF = false;
        this.Nf = false;
        if (this.qS != null) {
            this.qS.recycle();
            this.qS = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.Nc != z) {
            this.Nc = z;
        }
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        View view2 = view;
        boolean z2 = true;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view2.getScrollX();
            int scrollY = view2.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i4 = i2 + scrollX;
                if (i4 >= childAt.getLeft() && i4 < childAt.getRight()) {
                    int i5 = i3 + scrollY;
                    if (i5 >= childAt.getTop() && i5 < childAt.getBottom()) {
                        if (canScroll(childAt, true, i, i4 - childAt.getLeft(), i5 - childAt.getTop())) {
                            return true;
                        }
                    }
                }
            }
        }
        if (!(z && view2.canScrollHorizontally(-i))) {
            z2 = false;
        }
        return z2;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                switch (keyCode) {
                    case 21:
                        return arrowScroll(17);
                    case 22:
                        return arrowScroll(66);
                }
            } else if (VERSION.SDK_INT >= 11) {
                if (keyEvent.hasNoModifiers()) {
                    return arrowScroll(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return arrowScroll(1);
                }
            }
        }
        return false;
    }

    public boolean arrowScroll(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        boolean z = false;
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int i2;
        int i3;
        boolean requestFocus;
        if (findNextFocus == null || findNextFocus == findFocus) {
            if (i == 17 || i == 1) {
                z = dW();
            } else if (i == 66 || i == 2) {
                z = dX();
            }
        } else if (i == 17) {
            i2 = a(this.Mq, findNextFocus).left;
            i3 = a(this.Mq, findFocus).left;
            if (findFocus == null || i2 < i3) {
                requestFocus = findNextFocus.requestFocus();
            } else {
                requestFocus = dW();
            }
            z = requestFocus;
        } else if (i == 66) {
            i2 = a(this.Mq, findNextFocus).left;
            i3 = a(this.Mq, findFocus).left;
            if (findFocus == null || i2 > i3) {
                requestFocus = findNextFocus.requestFocus();
            } else {
                requestFocus = dX();
            }
            z = requestFocus;
        }
        if (z) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z;
    }

    private Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewPager parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    boolean dW() {
        if (this.Ms <= 0) {
            return false;
        }
        setCurrentItem(this.Ms - 1, true);
        return true;
    }

    boolean dX() {
        if (this.Mr == null || this.Ms >= this.Mr.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.Ms + 1, true);
        return true;
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    ItemInfo k = k(childAt);
                    if (k != null && k.position == this.Ms) {
                        childAt.addFocusables(arrayList, i, i2);
                    }
                }
            }
        }
        if ((descendantFocusability == nexEngine.ExportHEVCMainTierLevel52 && (arrayList == null || size != arrayList.size())) || !isFocusable()) {
            return;
        }
        if (!(((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null)) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo k = k(childAt);
                if (k != null && k.position == this.Ms) {
                    childAt.addTouchables(arrayList);
                }
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int childCount = getChildCount();
        int i3 = -1;
        if ((i & 2) != 0) {
            i3 = childCount;
            childCount = 0;
            i2 = 1;
        } else {
            childCount--;
            i2 = -1;
        }
        while (childCount != i3) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                ItemInfo k = k(childAt);
                if (k != null && k.position == this.Ms && childAt.requestFocus(i, rect)) {
                    return true;
                }
            }
            childCount += i2;
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo k = k(childAt);
                if (k != null && k.position == this.Ms && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ViewPager.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ViewPager.class.getName());
        boolean z = this.Mr != null && this.Mr.getCount() > 1;
        accessibilityNodeInfo.setScrollable(z);
        if (this.Mr != null && this.Ms >= 0 && this.Ms < this.Mr.getCount() - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        if (this.Mr != null && this.Ms > 0 && this.Ms < this.Mr.getCount()) {
            accessibilityNodeInfo.addAction(8192);
        }
    }

    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (i != 4096) {
            if (i != 8192 || this.Mr == null || this.Ms <= 0 || this.Ms >= this.Mr.getCount()) {
                return false;
            }
            setCurrentItem(this.Ms - 1);
            return true;
        } else if (this.Mr == null || this.Ms < 0 || this.Ms >= this.Mr.getCount() - 1) {
            return false;
        } else {
            setCurrentItem(this.Ms + 1);
            return true;
        }
    }

    public void setDraggable(boolean z) {
        this.NB = z;
    }

    int dY() {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this);
        if (actionBarOverlayLayout == null || actionBarOverlayLayout.getActionBarView() == null) {
            return 0;
        }
        return actionBarOverlayLayout.getActionBarView().getSplitActionBarHeight(true);
    }

    public void setBottomMarginProgress(float f) {
        this.Nk = f;
        this.Nl = true;
        requestLayout();
        invalidate();
    }
}
