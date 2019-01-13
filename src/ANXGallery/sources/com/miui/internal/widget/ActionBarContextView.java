package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.EditActionModeImpl;
import com.miui.internal.view.menu.ActionMenuItem;
import com.miui.internal.view.menu.ActionMenuPresenter;
import com.miui.internal.view.menu.ActionMenuView;
import com.miui.internal.view.menu.MenuBuilder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import miui.R;
import miui.view.ActionModeAnimationListener;
import miui.view.EditActionMode;
import miui.view.animation.CubicEaseOutInterpolator;

public class ActionBarContextView extends a implements ActionModeView {
    private static final int qe = 0;
    private static final int qf = 1;
    private static final int qg = 2;
    private TextView cp;
    private CharSequence mTitle;
    private Drawable pM;
    private boolean pR;
    private final VisibilityAnimListener qh;
    private LinearLayout qi;
    private Button qj;
    private Button qk;
    private int ql;
    private boolean qm;
    private ActionMenuItem qn;
    private ActionMenuItem qo;
    private WeakReference<ActionMode> qp;
    private Animator qq;
    private int qr;
    private int qs;
    private List<ActionModeAnimationListener> qt;
    private float qu;
    private boolean qv;
    private OnClickListener qw;

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: c */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: l */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public CharSequence qy;
        public boolean qz;
        public CharSequence title;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.qz = parcel.readInt() != 0;
            this.title = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.qy = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.qz);
            TextUtils.writeToParcel(this.title, parcel, 0);
            TextUtils.writeToParcel(this.qy, parcel, 0);
        }
    }

    protected class VisibilityAnimListener implements AnimatorListener {
        boolean qA;
        private boolean qB = false;

        protected VisibilityAnimListener() {
        }

        public VisibilityAnimListener withFinalVisibility(boolean z) {
            this.qA = z;
            return this;
        }

        public void onAnimationStart(Animator animator) {
            ActionBarContextView.this.setVisibility(0);
            this.qB = false;
            ActionBarContextView.this.notifyAnimationStart(this.qA);
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.qB) {
                ActionBarContextView.this.notifyAnimationEnd(this.qA);
                if (ActionBarContextView.this.qr == 2) {
                    ActionBarContextView.this.killMode();
                }
                int i = 0;
                ActionBarContextView.this.qr = 0;
                ActionBarContextView.this.qq = null;
                ActionBarContextView.this.setVisibility(this.qA ? 0 : 8);
                if (!(ActionBarContextView.this.mSplitView == null || ActionBarContextView.this.mMenuView == null)) {
                    ActionMenuView actionMenuView = ActionBarContextView.this.mMenuView;
                    if (!this.qA) {
                        i = 8;
                    }
                    actionMenuView.setVisibility(i);
                }
            }
        }

        public void onAnimationCancel(Animator animator) {
            this.qB = true;
        }

        public void onAnimationRepeat(Animator animator) {
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843668);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.qh = new VisibilityAnimListener();
        this.qw = new OnClickListener() {
            public void onClick(View view) {
                MenuItem a;
                if (view.getId() == EditActionMode.BUTTON1) {
                    a = ActionBarContextView.this.qn;
                } else {
                    a = ActionBarContextView.this.qo;
                }
                EditActionModeImpl editActionModeImpl = (EditActionModeImpl) ActionBarContextView.this.qp.get();
                if (editActionModeImpl != null) {
                    editActionModeImpl.onMenuItemSelected((MenuBuilder) editActionModeImpl.getMenu(), a);
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMode, i, 0);
        setBackground(obtainStyledAttributes.getDrawable(R.styleable.ActionMode_android_background));
        this.ql = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_android_titleTextStyle, 0);
        this.mContentHeight = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionMode_android_height, 0);
        this.pM = obtainStyledAttributes.getDrawable(R.styleable.ActionMode_android_backgroundSplit);
        Context context2 = context;
        this.qn = new ActionMenuItem(context2, 0, EditActionMode.BUTTON1, 0, 0, context.getString(17039360));
        this.qo = new ActionMenuItem(context2, 0, EditActionMode.BUTTON2, 0, 0, context.getString(R.string.action_mode_select_all));
        obtainStyledAttributes.recycle();
    }

    public void setContentInset(int i) {
        this.qs = i;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu(false);
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    public void setSplitActionBar(boolean z) {
        if (this.mSplitActionBar != z) {
            if (this.mActionMenuPresenter != null) {
                LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
                ViewGroup viewGroup;
                if (z) {
                    this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    layoutParams.width = -1;
                    layoutParams.height = -2;
                    layoutParams.gravity = DeviceHelper.IS_TABLET ? 17 : 80;
                    this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                    this.mMenuView.setBackground(this.pM);
                    viewGroup = (ViewGroup) this.mMenuView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mMenuView);
                    }
                    this.mSplitView.addView(this.mMenuView, layoutParams);
                } else {
                    this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                    this.mMenuView.setBackground(null);
                    viewGroup = (ViewGroup) this.mMenuView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mMenuView);
                    }
                    addView(this.mMenuView, layoutParams);
                }
            }
            super.setSplitActionBar(z);
        }
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.qz = isOverflowMenuShowing();
        savedState.title = getTitle();
        if (this.qk != null) {
            savedState.qy = this.qk.getText();
        }
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setTitle(savedState.title);
        setButton(EditActionMode.BUTTON2, savedState.qy);
        if (savedState.qz) {
            postShowOverflowMenu();
        }
    }

    int ba() {
        return 16843668;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        initTitle();
    }

    protected void initTitle() {
        int i = 0;
        if (this.qi == null) {
            this.qi = (LinearLayout) LayoutInflater.from(getContext()).inflate(com.miui.internal.R.layout.action_mode_title_item, this, false);
            this.qj = (Button) this.qi.findViewById(EditActionMode.BUTTON1);
            this.qk = (Button) this.qi.findViewById(EditActionMode.BUTTON2);
            if (this.qj != null) {
                this.qj.setOnClickListener(this.qw);
            }
            if (this.qk != null) {
                this.qk.setOnClickListener(this.qw);
            }
            this.cp = (TextView) this.qi.findViewById(16908310);
            if (this.ql != 0) {
                this.cp.setTextAppearance(getContext(), this.ql);
            }
        }
        this.cp.setText(this.mTitle);
        int isEmpty = TextUtils.isEmpty(this.mTitle) ^ 1;
        LinearLayout linearLayout = this.qi;
        if (isEmpty == 0) {
            i = 8;
        }
        linearLayout.setVisibility(i);
        if (this.qi.getParent() == null) {
            addView(this.qi);
        }
    }

    public void initForMode(ActionMode actionMode) {
        if (this.qp != null) {
            cancelAnimation();
            killMode();
        }
        initTitle();
        this.qp = new WeakReference(actionMode);
        MenuBuilder menuBuilder = (MenuBuilder) actionMode.getMenu();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.dismissPopupMenus(false);
        }
        this.mActionMenuPresenter = new ActionMenuPresenter(getContext(), com.miui.internal.R.layout.action_menu_layout, com.miui.internal.R.layout.action_mode_menu_item_layout, com.miui.internal.R.layout.action_bar_expanded_menu_layout, com.miui.internal.R.layout.action_bar_list_menu_item_layout);
        this.mActionMenuPresenter.setReserveOverflow(true);
        this.mActionMenuPresenter.setActionEditMode(true);
        int i = -2;
        LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        if (this.mSplitActionBar) {
            this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
            layoutParams.width = -1;
            if (DeviceHelper.IS_TABLET) {
                i = -1;
            }
            layoutParams.height = i;
            layoutParams.gravity = DeviceHelper.IS_TABLET ? 17 : 80;
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
            this.mMenuView.setBackground(this.pM);
            this.mSplitView.addView(this.mMenuView, layoutParams);
            return;
        }
        menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
        this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
        this.mMenuView.setBackground(null);
        addView(this.mMenuView, layoutParams);
    }

    public void closeMode() {
        endAnimation();
        this.qr = 2;
    }

    public void killMode() {
        removeAllViews();
        if (this.qt != null) {
            this.qt.clear();
            this.qt = null;
        }
        if (this.mSplitView != null) {
            this.mSplitView.removeView(this.mMenuView);
        }
        this.mMenuView = null;
        this.qp = null;
    }

    public boolean showOverflowMenu() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.showOverflowMenu();
    }

    public boolean hideOverflowMenu() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.hideOverflowMenu(false);
    }

    public boolean isOverflowMenuShowing() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.isOverflowMenuShowing();
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-1, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        i = MeasureSpec.getSize(i);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (i - getPaddingLeft()) - getPaddingRight();
        i2 = MeasureSpec.makeMeasureSpec((this.mContentHeight > 0 ? this.mContentHeight : MeasureSpec.getSize(i2)) - paddingTop, Integer.MIN_VALUE);
        int i4 = 0;
        if (this.mMenuView == null || this.mMenuView.getParent() != this) {
            i3 = 0;
        } else {
            paddingLeft = measureChildView(this.mMenuView, paddingLeft, i2, 0);
            i3 = this.mMenuView.getMeasuredHeight() + 0;
        }
        if (!(this.qi == null || this.qi.getVisibility() == 8)) {
            this.qi.measure(MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), i2);
            i3 += this.qi.getMeasuredHeight();
        }
        if (this.mContentHeight <= 0) {
            i2 = getChildCount();
            paddingLeft = 0;
            i3 = paddingLeft;
            while (paddingLeft < i2) {
                int measuredHeight = getChildAt(paddingLeft).getMeasuredHeight() + paddingTop;
                if (measuredHeight > i3) {
                    i3 = measuredHeight;
                }
                paddingLeft++;
            }
            if (i3 > 0) {
                i4 = i3 + this.qs;
            }
            setMeasuredDimension(i, i4);
            return;
        }
        if (i3 > 0) {
            i4 = this.mContentHeight + this.qs;
        }
        setMeasuredDimension(i, i4);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop() + this.qs;
        i4 = (((i4 - i2) - getPaddingTop()) - getPaddingBottom()) - this.qs;
        if (!(this.qi == null || this.qi.getVisibility() == 8)) {
            positionChild(this.qi, paddingStart, paddingTop, i4);
        }
        i3 = (i3 - i) - getPaddingEnd();
        if (this.mMenuView != null && this.mMenuView.getParent() == this) {
            positionChildInverse(this.mMenuView, i3, paddingTop, i4);
        }
        if (this.pR) {
            this.qr = 1;
            makeInOutAnimator(true).start();
            this.pR = false;
        }
    }

    public boolean isTitleOptional() {
        return this.qm;
    }

    public void setTitleOptional(boolean z) {
        if (z != this.qm) {
            requestLayout();
        }
        this.qm = z;
    }

    protected void cancelAnimation() {
        if (this.qq != null) {
            this.qq.cancel();
            this.qq = null;
        }
    }

    protected void endAnimation() {
        if (this.qq != null) {
            this.qq.end();
            this.qq = null;
        }
    }

    public float getAnimationProgress() {
        return this.qu;
    }

    public void setAnimationProgress(float f) {
        this.qu = f;
        notifyAnimationUpdate(this.qv, this.qu);
    }

    protected Animator makeInOutAnimator(boolean z) {
        if (z == this.qv && this.qq != null) {
            return new AnimatorSet();
        }
        float f;
        this.qv = z;
        ActionMenuView actionMenuView = this.mMenuView;
        int height = actionMenuView.getHeight();
        float translationY = actionMenuView.getTranslationY();
        float f2 = 1.0f;
        float f3 = 0.0f;
        if (z) {
            float f4 = ((float) height) + translationY;
            f = translationY;
            translationY = f4;
            f3 = 1.0f;
            f2 = 0.0f;
        } else {
            f = ((float) height) + translationY;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(this, "Alpha", new float[]{f2, f3});
        long j = 0;
        if (!DeviceHelper.FEATURE_WHOLE_ANIM) {
            ofFloat.setDuration(0);
        }
        if (this.mSplitActionBar) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mMenuView, "TranslationY", new float[]{translationY, f});
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this, "AnimationProgress", new float[]{0.0f, 1.0f});
            Animator animatorSet = new AnimatorSet();
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3});
            animatorSet.addListener(this.qh.withFinalVisibility(z));
            animatorSet.setInterpolator(new CubicEaseOutInterpolator());
            if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                j = 300;
            }
            animatorSet.setDuration(j);
            this.qq = animatorSet;
            return animatorSet;
        }
        ofFloat.addListener(this.qh.withFinalVisibility(z));
        return ofFloat;
    }

    public void setButton(int i, CharSequence charSequence) {
        initTitle();
        int i2 = 0;
        Button button;
        if (i == EditActionMode.BUTTON1) {
            if (this.qj != null) {
                button = this.qj;
                if (TextUtils.isEmpty(charSequence)) {
                    i2 = 8;
                }
                button.setVisibility(i2);
                this.qj.setText(charSequence);
            }
            this.qn.setTitle(charSequence);
        } else if (i == EditActionMode.BUTTON2) {
            if (this.qk != null) {
                button = this.qk;
                if (TextUtils.isEmpty(charSequence)) {
                    i2 = 8;
                }
                button.setVisibility(i2);
                this.qk.setText(charSequence);
            }
            this.qo.setTitle(charSequence);
        }
    }

    public void setButton(int i, CharSequence charSequence, int i2) {
        initTitle();
        int i3 = 0;
        Button button;
        if (i == EditActionMode.BUTTON1) {
            if (this.qj != null) {
                button = this.qj;
                if (TextUtils.isEmpty(charSequence) && i2 == 0) {
                    i3 = 8;
                }
                button.setVisibility(i3);
                this.qj.setText(charSequence);
                this.qj.setBackgroundResource(i2);
            }
            this.qn.setTitle(charSequence);
        } else if (i == EditActionMode.BUTTON2) {
            if (this.qk != null) {
                button = this.qk;
                if (TextUtils.isEmpty(charSequence) && i2 == 0) {
                    i3 = 8;
                }
                button.setVisibility(i3);
                this.qk.setText(charSequence);
                this.qk.setBackgroundResource(i2);
            }
            this.qo.setTitle(charSequence);
        }
        if (TextUtils.isEmpty(charSequence) && i2 != 0) {
            c(i, i2);
        }
    }

    private void c(int i, int i2) {
        Button button = i == EditActionMode.BUTTON1 ? this.qj : i == EditActionMode.BUTTON2 ? this.qk : null;
        if (button != null) {
            if (com.miui.internal.R.drawable.action_mode_title_button_cancel_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_cancel_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.cancel_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_confirm_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_confirm_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.confirm_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_select_all_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_select_all_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.select_all_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_deselect_all_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_deselect_all_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.deselect_all_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_delete_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_delete_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.delete_description));
            }
        }
    }

    public void animateToVisibility(boolean z) {
        cancelAnimation();
        if (z) {
            setVisibility(0);
            this.pR = true;
            return;
        }
        makeInOutAnimator(z).start();
    }

    public void notifyAnimationStart(boolean z) {
        if (this.qt != null) {
            for (ActionModeAnimationListener onStart : this.qt) {
                onStart.onStart(z);
            }
        }
    }

    public void notifyAnimationUpdate(boolean z, float f) {
        if (this.qt != null) {
            for (ActionModeAnimationListener onUpdate : this.qt) {
                onUpdate.onUpdate(z, f);
            }
        }
    }

    public void notifyAnimationEnd(boolean z) {
        if (this.qt != null) {
            for (ActionModeAnimationListener onStop : this.qt) {
                onStop.onStop(z);
            }
        }
    }

    public void addAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        if (actionModeAnimationListener != null) {
            if (this.qt == null) {
                this.qt = new ArrayList();
            }
            this.qt.add(actionModeAnimationListener);
        }
    }

    public void removeAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        if (!(actionModeAnimationListener == null || this.qt == null)) {
            this.qt.remove(actionModeAnimationListener);
        }
    }
}
