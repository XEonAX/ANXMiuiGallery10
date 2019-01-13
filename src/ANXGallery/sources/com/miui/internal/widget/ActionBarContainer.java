package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.menu.ActionMenuView;
import com.nexstreaming.nexeditorsdk.nexEngine;
import miui.R;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.AttributeResolver;
import miui.util.DrawableUtil;

public class ActionBarContainer extends FrameLayout implements FragmentViewPagerChangeListener {
    private static final int pW = 0;
    private static final int pX = 1;
    private static final int pY = 2;
    private static final int pZ = 3;
    private ActionBarView mActionBarView;
    private Drawable ny;
    private boolean pG;
    private View pH;
    private ActionBarContextView pI;
    private Animator pJ;
    private Drawable[] pK;
    private Drawable pL;
    private Drawable pM;
    private Drawable pN;
    private Drawable pO;
    private boolean pP;
    private boolean pQ;
    private boolean pR;
    private boolean pS;
    private boolean pT;
    private Rect pU;
    private int pV;
    private boolean qa;
    private AnimatorListenerAdapter qb;
    private AnimatorListenerAdapter qc;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = false;
        this.qa = false;
        this.qb = new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ActionBarContainer.this.setVisibility(8);
                ActionBarContainer.this.pJ = null;
            }
        };
        this.qc = new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ActionBarContainer.this.pJ = null;
            }
        };
        setBackground(null);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.ny = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_android_background);
        this.pK = new Drawable[]{this.ny, obtainStyledAttributes.getDrawable(R.styleable.ActionBar_miui_actionBarEmbededTabsBackground), obtainStyledAttributes.getDrawable(R.styleable.ActionBar_miui_actionBarStackedBackground)};
        this.pL = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_android_backgroundStacked);
        this.pT = obtainStyledAttributes.getBoolean(R.styleable.ActionBar_customViewAutoFitSystemWindow, false);
        if (getId() == com.miui.internal.R.id.split_action_bar) {
            this.pP = true;
            this.pM = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_android_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        this.pN = new ColorDrawable(AttributeResolver.resolveColor(context, R.attr.colorPrimary));
        if (!this.pP) {
            setPadding(0, 0, 0, 0);
        }
        if (this.pP ? this.pM != null : !(this.ny == null && this.pL == null)) {
            z = true;
        }
        setWillNotDraw(z);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.mActionBarView = (ActionBarView) findViewById(com.miui.internal.R.id.action_bar);
        this.pI = (ActionBarContextView) findViewById(com.miui.internal.R.id.action_context_bar);
    }

    public void setActionBarContextView(ActionBarContextView actionBarContextView) {
        this.pI = actionBarContextView;
    }

    public void setPendingInsets(Rect rect) {
        if (!this.pP) {
            if (this.pU == null) {
                this.pU = new Rect();
            }
            this.pU.set(rect);
        }
    }

    public Rect getPendingInsets() {
        return this.pU;
    }

    public void setFragmentViewPagerMode(boolean z) {
        this.pS = z;
    }

    int getCollapsedHeight() {
        int i = 0;
        if (!this.pP) {
            return 0;
        }
        int i2 = 0;
        while (i < getChildCount()) {
            if (getChildAt(i) instanceof ActionMenuView) {
                ActionMenuView actionMenuView = (ActionMenuView) getChildAt(i);
                if (actionMenuView.getVisibility() == 0 && actionMenuView.getCollapsedHeight() > 0) {
                    i2 = Math.max(i2, actionMenuView.getCollapsedHeight());
                }
            }
            i++;
        }
        return i2;
    }

    int bb() {
        int collapsedHeight = getCollapsedHeight();
        if (!this.pS) {
            return collapsedHeight;
        }
        int i = 0;
        int i2 = i;
        while (i < getChildCount()) {
            if (getChildAt(i) instanceof ActionMenuView) {
                ActionMenuView actionMenuView = (ActionMenuView) getChildAt(i);
                if (actionMenuView.getVisibility() == 0 && actionMenuView.getCollapsedHeight() > 0) {
                    i2++;
                }
            }
            i++;
        }
        return (i2 == 1 && this.pI.getAnimatedVisibility() == 0) ? collapsedHeight : 0;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Rect bounds;
        if (this.ny != null) {
            bounds = this.ny.getBounds();
            this.ny.setCallback(null);
            unscheduleDrawable(this.ny);
        } else {
            bounds = null;
        }
        this.ny = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (bounds == null) {
                requestLayout();
            } else {
                this.ny.setBounds(bounds);
            }
            this.qa = true;
        } else {
            this.qa = false;
        }
        if (this.pP ? this.pM != null : !(this.ny == null && this.pL == null)) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        if (this.pL != null) {
            this.pL.setCallback(null);
            unscheduleDrawable(this.pL);
        }
        this.pL = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        boolean z = false;
        if (this.pP ? this.pM != null : !(this.ny == null && this.pL == null)) {
            z = true;
        }
        setWillNotDraw(z);
        if (this.pH != null) {
            this.pH.setBackground(this.pL);
        }
    }

    public void setSplitBackground(Drawable drawable) {
        if (this.pM != null) {
            this.pM.setCallback(null);
            unscheduleDrawable(this.pM);
        }
        this.pM = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        boolean z = false;
        if (this.pP ? this.pM != null : !(this.ny == null && this.pL == null)) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.ny != null) {
            this.ny.setVisible(z, false);
        }
        if (this.pL != null) {
            this.pL.setVisible(z, false);
        }
        if (this.pM != null) {
            this.pM.setVisible(z, false);
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.ny && !this.pP) || ((drawable == this.pL && this.pQ) || ((drawable == this.pM && this.pP) || super.verifyDrawable(drawable)));
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.ny != null && this.ny.isStateful()) {
            this.ny.setState(getDrawableState());
        }
        if (this.pL != null && this.pL.isStateful()) {
            this.pL.setState(getDrawableState());
        }
        if (this.pM != null && this.pM.isStateful()) {
            this.pM.setState(getDrawableState());
        }
    }

    public void setTransitioning(boolean z) {
        int i;
        this.pG = z;
        if (z) {
            i = 393216;
        } else {
            i = nexEngine.ExportHEVCMainTierLevel52;
        }
        setDescendantFocusability(i);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.pG || super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !this.pP && super.onTouchEvent(motionEvent);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (this.pP) {
            return false;
        }
        return true;
    }

    public View getTabContainer() {
        return this.pH;
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.pH != null) {
            removeView(this.pH);
        }
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
            this.pV = scrollingTabContainerView.getPaddingTop();
        } else if (this.pH != null) {
            this.pH.setBackground(null);
        }
        this.pH = scrollingTabContainerView;
    }

    public void onDraw(Canvas canvas) {
        if (getWidth() != 0 && getHeight() != 0) {
            if (!this.pP) {
                if (this.ny != null) {
                    this.ny.draw(canvas);
                }
                if (this.pN != null && DrawableUtil.isPlaceholder(this.ny)) {
                    this.pN.draw(canvas);
                    if (!(this.pO == null || DrawableUtil.isPlaceholder(this.pN))) {
                        this.pO.draw(canvas);
                    }
                }
            } else if (DeviceHelper.IS_TABLET && this.pM != null) {
                this.pM.draw(canvas);
            }
        }
    }

    public ActionMode startActionModeForChild(View view, Callback callback) {
        return null;
    }

    private void e(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (view != this.mActionBarView || !this.pT) {
                ((MarginLayoutParams) view.getLayoutParams()).topMargin = this.pU != null ? this.pU.top : 0;
            }
        }
    }

    public void onMeasure(int i, int i2) {
        if (this.pP) {
            b(i, i2);
            return;
        }
        int i3;
        if (this.pH != null) {
            this.pH.setPadding(this.pH.getPaddingLeft(), this.pV, this.pH.getPaddingRight(), this.pH.getPaddingBottom());
        }
        e(this.mActionBarView);
        ActionBarContextView actionBarContextView = this.pI;
        if (actionBarContextView != null) {
            actionBarContextView.setContentInset(this.pU != null ? this.pU.top : 0);
        }
        super.onMeasure(i, i2);
        i = (this.mActionBarView == null || this.mActionBarView.getVisibility() == 8 || this.mActionBarView.getMeasuredHeight() <= 0) ? 0 : 1;
        if (i != 0) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mActionBarView.getLayoutParams();
            if (this.mActionBarView.isCollapsed()) {
                i3 = layoutParams.topMargin;
            } else {
                i3 = (this.mActionBarView.getMeasuredHeight() + layoutParams.topMargin) + layoutParams.bottomMargin;
            }
        } else {
            i3 = 0;
        }
        if (!(this.pH == null || this.pH.getVisibility() == 8 || MeasureSpec.getMode(i2) != Integer.MIN_VALUE)) {
            i2 = MeasureSpec.getSize(i2);
            int measuredWidth = getMeasuredWidth();
            i2 = Math.min(i3 + this.pH.getMeasuredHeight(), i2);
            i = (i != 0 || this.pU == null) ? 0 : this.pU.top;
            setMeasuredDimension(measuredWidth, i2 + i);
        }
        i = 0;
        i2 = i;
        while (i < getChildCount()) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && childAt.getMeasuredHeight() > 0 && childAt.getMeasuredWidth() > 0) {
                i2++;
            }
            i++;
        }
        if (i2 == 0) {
            setMeasuredDimension(0, 0);
        }
    }

    private void b(int i, int i2) {
        if (MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            i = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i), 1073741824);
        }
        super.onMeasure(i, i2);
        i = getChildCount();
        int i3 = 0;
        int i4 = i3;
        while (i3 < i) {
            i4 = Math.max(i4, getChildAt(i3).getMeasuredHeight());
            i3++;
        }
        if (i4 == 0) {
            setMeasuredDimension(0, 0);
        }
    }

    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredHeight = getMeasuredHeight();
        if (!(this.pH == null || this.pH.getVisibility() == 8)) {
            i2 = this.pH.getMeasuredHeight();
            if (this.mActionBarView == null || this.mActionBarView.getVisibility() != 0 || this.mActionBarView.getMeasuredHeight() <= 0) {
                int i5;
                i2 += this.pU != null ? this.pU.top : 0;
                View view = this.pH;
                int paddingLeft = this.pH.getPaddingLeft();
                if (this.pU != null) {
                    i5 = this.pU.top + this.pV;
                } else {
                    i5 = this.pV;
                }
                view.setPadding(paddingLeft, i5, this.pH.getPaddingRight(), this.pH.getPaddingBottom());
            } else {
                this.pH.setPadding(this.pH.getPaddingLeft(), this.pV, this.pH.getPaddingRight(), this.pH.getPaddingBottom());
            }
            this.pH.layout(i, measuredHeight - i2, i3, measuredHeight);
        }
        if (!this.pP) {
            bc();
            if (this.ny != null) {
                this.ny.setBounds(0, 0, i3 - i, measuredHeight);
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (this.pN != null) {
                this.pN.setBounds(0, 0, i3 - i, measuredHeight);
                i2 = 1;
            }
            if (this.pO == null) {
                this.pO = AttributeResolver.resolveDrawable(getContext(), R.attr.colorDividerLine);
            }
            this.pO.setBounds(0, measuredHeight - 1, i3 - i, measuredHeight);
        } else if (this.pM != null) {
            this.pM.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (i2 != 0) {
            invalidate();
        }
    }

    public void onWindowShow() {
        if (this.mActionBarView.getMenuView() != null) {
            this.mActionBarView.getMenuView().startLayoutAnimation();
        }
    }

    public void onWindowHide() {
        if (this.mActionBarView.getMenuView() != null) {
            this.mActionBarView.getMenuView().startLayoutAnimation();
        }
    }

    public void hide(boolean z) {
        if (this.pJ != null) {
            this.pJ.cancel();
        }
        if (z && this.pP) {
            this.pJ = ObjectAnimator.ofFloat(this, "TranslationY", new float[]{0.0f, (float) getHeight()});
            this.pJ.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? (long) getContext().getResources().getInteger(17694720) : 0);
            this.pJ.addListener(this.qb);
            this.pJ.start();
            return;
        }
        setVisibility(8);
    }

    public void show(boolean z) {
        if (this.pJ != null) {
            this.pJ.cancel();
        }
        setVisibility(0);
        if (!z) {
            setTranslationY(0.0f);
        } else if (this.pP) {
            this.pJ = ObjectAnimator.ofFloat(this, "TranslationY", new float[]{(float) getHeight(), 0.0f});
            this.pJ.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? (long) getContext().getResources().getInteger(17694720) : 0);
            this.pJ.addListener(this.qc);
            this.pJ.start();
            ActionMenuView actionMenuView = (ActionMenuView) getChildAt(0);
            if (actionMenuView != null) {
                actionMenuView.startLayoutAnimation();
            }
        }
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        if (this.pP) {
            ActionMenuView actionMenuView = (ActionMenuView) getChildAt(0);
            if (actionMenuView != null) {
                actionMenuView.onPageScrolled(i, f, z, z2);
            }
        }
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.pR) {
            post(new Runnable() {
                public void run() {
                    ActionBarContainer.this.show(true);
                }
            });
            this.pR = false;
        }
    }

    private void bc() {
        if (!this.qa && !this.pP && this.mActionBarView != null && this.ny != null && this.pK != null && this.pK.length >= 3) {
            int i = 0;
            if (this.mActionBarView.hasEmbeddedTabs()) {
                i = 1;
                int displayOptions = this.mActionBarView.getDisplayOptions();
                if (!((displayOptions & 2) == 0 && (displayOptions & 4) == 0 && (displayOptions & 16) == 0)) {
                    i = 2;
                }
            }
            if (this.pK[i] != null) {
                this.ny = this.pK[i];
            }
        }
    }
}
