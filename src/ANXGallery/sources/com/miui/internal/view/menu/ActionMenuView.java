package com.miui.internal.view.menu;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug.ExportedProperty;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Animation;
import android.view.animation.LayoutAnimationController;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.menu.MenuBuilder.ItemInvoker;
import miui.view.animation.CubicEaseOutInterpolator;

public abstract class ActionMenuView extends LinearLayout implements ItemInvoker, MenuView {
    private boolean mA;
    private MenuBuilder mMenu;
    private ActionMenuPresenter mZ;
    private OpenCloseAnimator na;

    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    public static class LayoutParams extends android.widget.LinearLayout.LayoutParams {
        @ExportedProperty
        public int cellsUsed;
        @ExportedProperty
        public boolean expandable;
        public boolean expanded;
        @ExportedProperty
        public int extraPixels;
        @ExportedProperty
        public boolean isOverflowButton;
        @ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.isOverflowButton = false;
        }

        public LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.isOverflowButton = z;
        }
    }

    class OpenCloseAnimator implements AnimatorListener {
        boolean nb;
        Animator nc;
        Animator nd;

        public void setTranslationY(float f) {
            for (int i = 0; i < ActionMenuView.this.getChildCount(); i++) {
                ActionMenuView.this.getChildAt(i).setTranslationY(f);
            }
        }

        void initialize() {
            if (this.nd == null) {
                this.nd = ObjectAnimator.ofFloat(this, "TranslationY", new float[]{(float) ActionMenuView.this.getHeight()});
                this.nd.setDuration((long) ActionMenuView.this.getResources().getInteger(17694720));
                this.nd.addListener(this);
            }
        }

        void open() {
            cancel();
            this.nb = true;
            setTranslationY(0.0f);
            ActionMenuView.this.startLayoutAnimation();
        }

        void close() {
            cancel();
            this.nb = false;
            this.nd.start();
        }

        void cancel() {
            initialize();
            if (this.nc != null) {
                this.nc.cancel();
                this.nc = null;
            }
        }

        public void onAnimationStart(Animator animator) {
            this.nc = animator;
        }

        public void onAnimationEnd(Animator animator) {
            this.nc = null;
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }
    }

    public abstract int getCollapsedHeight();

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        this.na = new OpenCloseAnimator();
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            setLayoutAnimation(initLayoutAnimation());
        } else {
            setLayoutAnimation(null);
        }
    }

    protected LayoutAnimationController initLayoutAnimation() {
        Animation translateAnimation = new TranslateAnimation(0, 0.0f, 0, 0.0f, 1, 1.0f, 1, 0.0f);
        long integer = (long) getResources().getInteger(R.integer.action_menu_item_appear_duration);
        translateAnimation.setDuration(integer);
        translateAnimation.setInterpolator(new CubicEaseOutInterpolator());
        LayoutAnimationController layoutAnimationController = new LayoutAnimationController(translateAnimation, (1.0f * ((float) getResources().getInteger(R.integer.action_menu_item_anim_delay))) / ((float) integer));
        layoutAnimationController.setAnimation(translateAnimation);
        layoutAnimationController.setOrder(0);
        return layoutAnimationController;
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mZ = actionMenuPresenter;
    }

    public ActionMenuPresenter getPresenter() {
        return this.mZ;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        if (this.mZ != null) {
            this.mZ.updateMenuView(false);
            if (this.mZ.isOverflowMenuShowing()) {
                this.mZ.hideOverflowMenu(false);
                this.mZ.showOverflowMenu();
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        if (getChildCount() == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mZ.dismissPopupMenus(false);
    }

    public boolean isOverflowReserved() {
        return this.mA;
    }

    public void setOverflowReserved(boolean z) {
        this.mA = z;
    }

    public boolean filterLeftoverView(int i) {
        View childAt = getChildAt(i);
        childAt.clearAnimation();
        removeView(childAt);
        return true;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return generateDefaultLayoutParams();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.isOverflowButton = true;
        return generateDefaultLayoutParams;
    }

    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            z = false | ((ActionMenuChildView) childAt).needsDividerAfter();
        }
        if (i <= 0 || !(childAt2 instanceof ActionMenuChildView)) {
            return z;
        }
        return z | ((ActionMenuChildView) childAt2).needsDividerBefore();
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public boolean hasBackgroundView() {
        return false;
    }

    public void playOpenAnimator() {
        this.na.open();
    }

    public void playCloseAnimator() {
        this.na.close();
    }

    protected float computeTranslationY(float f, boolean z, boolean z2) {
        float collapsedHeight = (float) getCollapsedHeight();
        if (z && z2) {
            if (((double) f) < 0.5d) {
                f *= 2.0f;
            } else {
                f = 2.0f * (1.0f - f);
            }
        } else if (z2) {
            f = 1.0f - f;
        }
        return f * collapsedHeight;
    }

    protected float computeAlpha(float f, boolean z, boolean z2) {
        if (z && z2) {
            return 1.0f;
        }
        if (z) {
            return ((float) ((int) ((1.0f - f) * 10.0f))) / 10.0f;
        }
        if (z2) {
            return ((float) ((int) (f * 10.0f))) / 10.0f;
        }
        return 1.0f;
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            setAlpha(computeAlpha(f, z, z2));
        }
        float computeTranslationY = computeTranslationY(f, z, z2);
        if (!(z && z2 && getTranslationY() == 0.0f)) {
            setTranslationY(computeTranslationY);
        }
        this.na.setTranslationY(computeTranslationY);
    }
}
