package com.miui.internal.view.menu;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_View_View_class.Factory;
import com.miui.internal.view.menu.ActionMenuView.LayoutParams;
import com.miui.internal.widget.ActionBarOverlayLayout;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import miui.util.ActionBarUtils;
import miui.util.ViewUtils;
import miui.view.animation.CubicEaseOutInterpolator;

public class PhoneActionMenuView extends ActionMenuView {
    private static final int[] oO = new int[]{16842964, R.attr.expandBackground, R.attr.splitActionBarOverlayHeight};
    private View oP;
    private View oQ;
    private OverflowMenuViewAnimator oR;
    private OverflowMenuState oS;
    private Drawable oT;
    private Drawable oU;
    private int oV;
    private int oW;
    private Rect oX;
    private int oY;
    private int oZ;
    private int pa;

    private enum OverflowMenuState {
        Collapsed,
        Expanding,
        Expanded,
        Collapsing
    }

    private class OverflowMenuViewAnimator implements AnimatorListener, OnClickListener {
        private AnimatorSet pg;
        private AnimatorSet ph;
        private ActionBarOverlayLayout pi;

        private OverflowMenuViewAnimator() {
        }

        public void aX() {
            if (this.pg == null) {
                this.pi = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(PhoneActionMenuView.this);
                AnimatorSet animatorSet = new AnimatorSet();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(PhoneActionMenuView.this, "Value", new float[]{1.0f, 0.0f});
                animatorSet.playTogether(new Animator[]{ofFloat, this.pi.getContentMaskAnimator(this).show()});
                animatorSet.setDuration((long) PhoneActionMenuView.this.getResources().getInteger(17694720));
                animatorSet.setInterpolator(new CubicEaseOutInterpolator());
                animatorSet.addListener(this);
                this.pg = animatorSet;
                animatorSet = new AnimatorSet();
                animatorSet.playTogether(new Animator[]{ObjectAnimator.ofFloat(PhoneActionMenuView.this, "Value", new float[]{0.0f, 1.0f}), this.pi.getContentMaskAnimator(null).hide()});
                animatorSet.setDuration((long) PhoneActionMenuView.this.getResources().getInteger(17694720));
                animatorSet.setInterpolator(new CubicEaseOutInterpolator());
                animatorSet.addListener(this);
                this.ph = animatorSet;
                if (!DeviceHelper.FEATURE_WHOLE_ANIM) {
                    this.pg.setDuration(0);
                    this.ph.setDuration(0);
                }
            }
        }

        public void show() {
            aX();
            this.ph.cancel();
            this.pg.cancel();
            this.pg.start();
        }

        public void hide() {
            aX();
            this.ph.cancel();
            this.pg.cancel();
            this.ph.start();
        }

        public void cancel() {
            if (this.ph != null && this.ph.isRunning()) {
                this.ph.cancel();
            }
            if (this.pg != null && this.pg.isRunning()) {
                this.pg.cancel();
            }
        }

        public void reverse() {
            if (VERSION.SDK_INT >= 26) {
                try {
                    Method declaredMethod = Class.forName("android.animation.AnimatorSet").getDeclaredMethod("reverse", new Class[0]);
                    if (this.pg.isRunning()) {
                        declaredMethod.invoke(this.pg, new Object[0]);
                    }
                    if (this.ph.isRunning()) {
                        declaredMethod.invoke(this.ph, new Object[0]);
                    }
                } catch (Throwable e) {
                    Log.e("PhoneActionMenuView", "reverse: ", e);
                }
            } else {
                ArrayList arrayList = null;
                if (this.pg.isRunning()) {
                    arrayList = this.pg.getChildAnimations();
                }
                if (this.ph.isRunning()) {
                    arrayList = this.ph.getChildAnimations();
                }
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((ValueAnimator) ((Animator) it.next())).reverse();
                    }
                }
            }
        }

        public void onAnimationStart(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            if (PhoneActionMenuView.this.oP != null) {
                if (PhoneActionMenuView.this.oP.getTranslationY() == 0.0f) {
                    PhoneActionMenuView.this.oS = OverflowMenuState.Expanded;
                    o(false);
                } else if (PhoneActionMenuView.this.oP.getTranslationY() == ((float) PhoneActionMenuView.this.getMeasuredHeight())) {
                    PhoneActionMenuView.this.oS = OverflowMenuState.Collapsed;
                    o(true);
                    PhoneActionMenuView.this.oQ.setBackground(PhoneActionMenuView.this.oU);
                }
            }
            PhoneActionMenuView.this.postInvalidateOnAnimation();
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationCancel(Animator animator) {
            if (PhoneActionMenuView.this.oS == OverflowMenuState.Expanding || PhoneActionMenuView.this.oS == OverflowMenuState.Expanded) {
                PhoneActionMenuView.this.setValue(0.0f);
                o(false);
            } else if (PhoneActionMenuView.this.oS == OverflowMenuState.Collapsing || PhoneActionMenuView.this.oS == OverflowMenuState.Collapsed) {
                PhoneActionMenuView.this.setValue(1.0f);
                o(true);
            }
            PhoneActionMenuView.this.postInvalidateOnAnimation();
        }

        private void o(boolean z) {
            if (z) {
                this.pi.getContentView().setImportantForAccessibility(0);
            } else {
                Factory.getInstance().get().setImportantForAccessibilityNoHideDescendants(this.pi.getContentView());
            }
        }

        public void onClick(View view) {
            if (PhoneActionMenuView.this.oS == OverflowMenuState.Expanded) {
                PhoneActionMenuView.this.getPresenter().hideOverflowMenu(true);
            }
        }
    }

    public PhoneActionMenuView(Context context) {
        this(context, null);
    }

    public PhoneActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.oS = OverflowMenuState.Collapsed;
        this.oZ = 0;
        this.pa = 0;
        super.setBackground(null);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, oO);
        this.oU = obtainStyledAttributes.getDrawable(0);
        this.oT = obtainStyledAttributes.getDrawable(1);
        this.oY = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        obtainStyledAttributes.recycle();
        aW();
        this.oQ = new View(context);
        addView(this.oQ);
        setChildrenDrawingOrderEnabled(true);
        this.oZ = context.getResources().getDimensionPixelSize(R.dimen.action_button_max_width);
    }

    public void setBackground(Drawable drawable) {
        if (this.oU != drawable) {
            this.oU = drawable;
            aW();
        }
    }

    public boolean filterLeftoverView(int i) {
        boolean z;
        View childAt = getChildAt(i);
        if (!(childAt == this.oP || childAt == this.oQ)) {
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams == null || !layoutParams.isOverflowButton) {
                z = true;
                if (z || !super.filterLeftoverView(i)) {
                    return false;
                }
                return true;
            }
        }
        z = false;
        if (z) {
        }
        return false;
    }

    public void setOverflowMenuView(View view) {
        if (this.oP != view) {
            if (this.oP != null) {
                if (this.oP.getAnimation() != null) {
                    this.oP.clearAnimation();
                }
                removeView(this.oP);
            }
            if (view != null) {
                addView(view);
            }
            this.oP = view;
            aW();
        }
    }

    public boolean showOverflowMenu() {
        OverflowMenuState overflowMenuState = this.oS;
        if (overflowMenuState == OverflowMenuState.Expanding || overflowMenuState == OverflowMenuState.Expanded || this.oP == null) {
            return false;
        }
        this.oQ.setBackground(this.oT);
        OverflowMenuViewAnimator aU = aU();
        if (overflowMenuState == OverflowMenuState.Collapsed) {
            this.oS = OverflowMenuState.Expanding;
            aU.show();
        } else if (overflowMenuState == OverflowMenuState.Collapsing) {
            aU.reverse();
        }
        postInvalidateOnAnimation();
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        return true;
    }

    public boolean isOverflowMenuShowing() {
        return this.oS == OverflowMenuState.Expanding || this.oS == OverflowMenuState.Expanded;
    }

    public boolean hideOverflowMenu() {
        OverflowMenuState overflowMenuState = this.oS;
        if (overflowMenuState == OverflowMenuState.Collapsing || overflowMenuState == OverflowMenuState.Collapsed) {
            return false;
        }
        OverflowMenuViewAnimator aU = aU();
        if (overflowMenuState == OverflowMenuState.Expanded) {
            this.oS = OverflowMenuState.Collapsing;
            aU.hide();
        } else if (overflowMenuState == OverflowMenuState.Expanding) {
            aU.reverse();
        }
        return true;
    }

    private OverflowMenuViewAnimator aU() {
        if (this.oR == null) {
            this.oR = new OverflowMenuViewAnimator();
        }
        return this.oR;
    }

    private int aV() {
        Resources resources = getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public int getCollapsedHeight() {
        if (this.oW == 0) {
            return 0;
        }
        return (this.oW + this.oX.top) - this.oY;
    }

    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int childCount2 = getChildCount();
        if (indexOfChild(this.oP) != -1) {
            childCount2--;
        }
        if (indexOfChild(this.oQ) != -1) {
            childCount2--;
        }
        int i3 = 0;
        if (childCount == 0 || childCount2 == 0) {
            this.oW = 0;
            setMeasuredDimension(0, 0);
            return;
        }
        this.pa = Math.min(MeasureSpec.getSize(i) / childCount2, this.oZ);
        childCount2 = MeasureSpec.makeMeasureSpec(this.pa, Integer.MIN_VALUE);
        int i4 = 0;
        int i5 = i4;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (!(childAt == this.oP || childAt == this.oQ)) {
                measureChildWithMargins(childAt, childCount2, 0, i2, 0);
                i4 += childAt.getMeasuredWidth();
                i5 = Math.max(i5, childAt.getMeasuredHeight());
            }
            i3++;
        }
        this.oV = i4;
        this.oW = i5;
        if (this.oP != null) {
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.oP.getLayoutParams();
            marginLayoutParams.topMargin = aV();
            marginLayoutParams.bottomMargin = this.oW;
            measureChildWithMargins(this.oP, i, 0, i2, 0);
            i4 = Math.max(i4, this.oP.getMeasuredWidth());
            i5 += this.oP.getMeasuredHeight();
            if (this.oS == OverflowMenuState.Expanded) {
                this.oP.setTranslationY(0.0f);
            } else if (this.oS == OverflowMenuState.Collapsed) {
                this.oP.setTranslationY((float) i5);
            }
        }
        if (this.oP == null) {
            i5 += this.oX.top;
        }
        this.oQ.setBackground(this.oS == OverflowMenuState.Collapsed ? this.oU : this.oT);
        setMeasuredDimension(Math.max(i4, MeasureSpec.getSize(i)), i5);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        i = i4 - i2;
        i3 = 0;
        if (this.oP != null) {
            i2 = this.oP.getMeasuredHeight();
            ViewUtils.layoutChildView(this, this.oP, 0, 0, i5, i2);
            i2 -= this.oX.top;
        } else {
            i2 = 0;
        }
        ViewUtils.layoutChildView(this, this.oQ, 0, i2, i5, i);
        i4 = getChildCount();
        int i6 = 0;
        int i7 = i6;
        int i8 = i7;
        while (i6 < i4) {
            View childAt = getChildAt(i6);
            if (!(childAt == this.oP || childAt == this.oQ)) {
                if (childAt.getMeasuredWidth() >= this.pa) {
                    i8 = 1;
                }
                i7++;
            }
            i6++;
        }
        if (i8 != 0) {
            i5 = (i5 - (this.pa * i7)) >> 1;
        } else {
            i5 = (i5 - this.oV) >> 1;
        }
        while (i3 < i4) {
            View childAt2 = getChildAt(i3);
            if (!(childAt2 == this.oP || childAt2 == this.oQ)) {
                i6 = childAt2.getMeasuredWidth();
                if (i8 != 0) {
                    int i9 = (this.pa - i6) >> 1;
                    i5 += i9;
                    ViewUtils.layoutChildView(this, childAt2, i5, i2, i5 + i6, i);
                    i5 = (i5 - i9) + this.pa;
                } else {
                    ViewUtils.layoutChildView(this, childAt2, i5, i2, i5 + i6, i);
                    i5 += childAt2.getMeasuredWidth();
                }
            }
            i3++;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        float y = motionEvent.getY();
        if (this.oP == null) {
            f = 0.0f;
        } else {
            f = this.oP.getTranslationY();
        }
        return y > f || super.onTouchEvent(motionEvent);
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            setAlpha(computeAlpha(f, z, z2));
        }
        float computeTranslationY = computeTranslationY(f, z, z2);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (!(childAt == this.oP || childAt == this.oQ)) {
                childAt.setTranslationY(computeTranslationY);
            }
        }
    }

    private void aW() {
        if (this.oX == null) {
            this.oX = new Rect();
        }
        Drawable drawable = this.oP == null ? this.oU : this.oT;
        if (drawable == null) {
            this.oX.setEmpty();
        } else {
            drawable.getPadding(this.oX);
        }
    }

    public void setValue(float f) {
        if (this.oP != null) {
            this.oP.setTranslationY(f * ((float) getMeasuredHeight()));
        }
    }

    protected int getChildDrawingOrder(int i, int i2) {
        int indexOfChild = indexOfChild(this.oP);
        int indexOfChild2 = indexOfChild(this.oQ);
        if (i2 == 0) {
            if (indexOfChild != -1) {
                return indexOfChild;
            }
            if (indexOfChild2 != -1) {
                return indexOfChild2;
            }
        } else if (!(i2 != 1 || indexOfChild == -1 || indexOfChild2 == -1)) {
            return indexOfChild2;
        }
        int i3 = 0;
        while (i3 < i) {
            if (!(i3 == indexOfChild || i3 == indexOfChild2)) {
                int i4;
                if (i3 < indexOfChild) {
                    i4 = i3 + 1;
                } else {
                    i4 = i3;
                }
                if (i3 < indexOfChild2) {
                    i4++;
                }
                if (i4 == i2) {
                    return i3;
                }
            }
            i3++;
        }
        return super.getChildDrawingOrder(i, i2);
    }

    public boolean hasBackgroundView() {
        return getChildAt(0) == this.oQ;
    }
}
