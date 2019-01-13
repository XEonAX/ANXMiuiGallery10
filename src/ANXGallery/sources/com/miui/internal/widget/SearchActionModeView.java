package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.miui.internal.R;
import com.miui.internal.app.ActionBarImpl;
import com.miui.internal.util.DeviceHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import miui.util.ActionBarUtils;
import miui.view.ActionModeAnimationListener;
import miui.view.ViewPager;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.inputmethod.InputMethodHelper;

public class SearchActionModeView extends FrameLayout implements AnimatorListener, IdleHandler, TextWatcher, OnClickListener, ActionModeView {
    private ActionBarContainer ca;
    private ActionBarView mActionBarView;
    private boolean pR;
    private List<ActionModeAnimationListener> qt;
    private float qu;
    private boolean qv;
    private EditText vA;
    private WeakReference<View> vB;
    private WeakReference<View> vC;
    private WeakReference<View> vD;
    private int[] vE = new int[2];
    private int vF;
    private int vG;
    private int vH;
    private int vI;
    private int vJ;
    private int vK;
    private int vL;
    private int vM;
    private int vN;
    private int vO;
    private int vP;
    private boolean vQ;
    private ObjectAnimator vR;
    private ActionBarContainer vS;
    private View vT;
    private boolean vU;
    private int vV = Integer.MAX_VALUE;
    private int vW;
    private View vz;

    class ActionBarAnimationProcessor implements ActionModeAnimationListener {
        ActionBarAnimationProcessor() {
        }

        public void onStart(boolean z) {
        }

        public void onUpdate(boolean z, float f) {
        }

        public void onStop(boolean z) {
            if (z) {
                View tabContainer = SearchActionModeView.this.getActionBarContainer().getTabContainer();
                if (tabContainer != null) {
                    tabContainer.setVisibility(8);
                }
            }
        }
    }

    class ContentViewAnimationProcessor implements ActionModeAnimationListener {
        ViewPager bL;

        ContentViewAnimationProcessor() {
        }

        public void onStart(boolean z) {
            if (z) {
                if (SearchActionModeView.this.vV == Integer.MAX_VALUE) {
                    SearchActionModeView.this.getActionBarContainer().getLocationInWindow(SearchActionModeView.this.vE);
                    SearchActionModeView.this.vV = SearchActionModeView.this.vE[1];
                }
                SearchActionModeView.this.vF = ((View) SearchActionModeView.this.vB.get()).getHeight() + SearchActionModeView.this.vK;
                SearchActionModeView.this.vG = -SearchActionModeView.this.vF;
                ((View) SearchActionModeView.this.vB.get()).getLocationInWindow(SearchActionModeView.this.vE);
                SearchActionModeView.this.vH = SearchActionModeView.this.vE[1] - SearchActionModeView.this.vV;
                SearchActionModeView.this.vI = SearchActionModeView.this.vG;
            } else {
                SearchActionModeView.this.setContentViewTranslation(SearchActionModeView.this.vK);
                SearchActionModeView.this.setContentViewPadding(0, 0);
            }
            this.bL = SearchActionModeView.this.getViewPager();
            if (this.bL != null) {
                this.bL.setBottomMarginProgress(z ? 0.0f : 1.0f);
            }
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            if (SearchActionModeView.this.vK > 0) {
                SearchActionModeView.this.setContentViewTranslation((int) (((float) SearchActionModeView.this.vK) * f));
            }
            ((View) SearchActionModeView.this.vB.get()).setAlpha(1.0f - f);
            ((View) SearchActionModeView.this.vC.get()).setTranslationY(((float) SearchActionModeView.this.vH) + (((float) SearchActionModeView.this.vI) * f));
            SearchActionModeView.this.setTranslationY(((float) SearchActionModeView.this.vF) + (f * ((float) SearchActionModeView.this.vG)));
        }

        public void onStop(boolean z) {
            float f = 1.0f;
            if (!z) {
                ((View) SearchActionModeView.this.vC.get()).setTranslationY(0.0f);
                ((View) SearchActionModeView.this.vB.get()).setAlpha(1.0f);
            }
            if (SearchActionModeView.this.vB.get() != null) {
                ((View) SearchActionModeView.this.vB.get()).setEnabled(z ^ 1);
            }
            if (SearchActionModeView.this.vK > 0) {
                SearchActionModeView.this.setContentViewTranslation(0);
                SearchActionModeView.this.setContentViewPadding(z ? SearchActionModeView.this.vK : 0, 0);
            }
            if (this.bL != null) {
                ViewPager viewPager = this.bL;
                if (!z) {
                    f = 0.0f;
                }
                viewPager.setBottomMarginProgress(f);
            }
            this.bL = null;
        }
    }

    class DimViewAnimationProcessor implements ActionModeAnimationListener {
        DimViewAnimationProcessor() {
        }

        public void onStart(boolean z) {
            if (z) {
                SearchActionModeView.this.vT.setOnClickListener(SearchActionModeView.this);
                SearchActionModeView.this.vT.setVisibility(0);
                SearchActionModeView.this.vT.setAlpha(0.0f);
            }
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            SearchActionModeView.this.vT.setAlpha(f);
            if (SearchActionModeView.this.bU()) {
                SearchActionModeView.this.vT.setTranslationY(((View) SearchActionModeView.this.vC.get()).getTranslationY());
            }
        }

        public void onStop(boolean z) {
            if (!z) {
                SearchActionModeView.this.vT.setVisibility(8);
                SearchActionModeView.this.vT.setAlpha(1.0f);
                SearchActionModeView.this.vT.setTranslationY(0.0f);
            } else if (SearchActionModeView.this.vA.getText().length() > 0) {
                SearchActionModeView.this.vT.setVisibility(8);
            }
        }
    }

    class SearchViewAnimationProcessor implements ActionModeAnimationListener {
        SearchViewAnimationProcessor() {
        }

        public void onStart(boolean z) {
            if (z) {
                SearchActionModeView.this.vA.getText().clear();
                SearchActionModeView.this.vA.addTextChangedListener(SearchActionModeView.this);
            }
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            if (SearchActionModeView.this.vK > 0) {
                SearchActionModeView.this.setPadding(SearchActionModeView.this.getPaddingLeft(), (int) (((float) SearchActionModeView.this.vJ) + (f * ((float) SearchActionModeView.this.vK))), SearchActionModeView.this.getPaddingRight(), SearchActionModeView.this.getPaddingBottom());
            }
        }

        public void onStop(boolean z) {
            if (!z) {
                SearchActionModeView.this.vA.removeTextChangedListener(SearchActionModeView.this);
            }
        }
    }

    class SplitActionBarAnimationProcessor implements ActionModeAnimationListener {
        SplitActionBarAnimationProcessor() {
        }

        public void onStart(boolean z) {
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            View splitActionBarContainer = SearchActionModeView.this.getSplitActionBarContainer();
            if (splitActionBarContainer != null) {
                splitActionBarContainer.setTranslationY(f * ((float) splitActionBarContainer.getHeight()));
            }
        }

        public void onStop(boolean z) {
        }
    }

    public SearchActionModeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setAlpha(0.0f);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void animateToVisibility(boolean z) {
        if (this.qv == z) {
            this.pR = false;
            return;
        }
        pollViews();
        this.qv = z;
        this.vR = makeAnimation();
        createAnimationListeners();
        if (z) {
            setOverlayMode(true);
        }
        notifyAnimationStart(z);
        if (bU()) {
            requestLayout();
            this.pR = true;
        } else {
            this.vR.start();
        }
        if (!this.qv) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.vA.getWindowToken(), 0);
        }
    }

    public void setOnBackClickListener(OnClickListener onClickListener) {
        this.vz.setOnClickListener(onClickListener);
    }

    public void setAnchorView(View view) {
        if (view != null) {
            this.vB = new WeakReference(view);
        }
    }

    public void setAnimateView(View view) {
        if (view != null) {
            this.vC = new WeakReference(view);
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

    public void setResultView(View view) {
        if (view != null) {
            this.vD = new WeakReference(view);
            LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof MarginLayoutParams) {
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) layoutParams;
                this.vM = marginLayoutParams.topMargin;
                this.vN = marginLayoutParams.bottomMargin;
                this.vQ = true;
            }
        }
    }

    public EditText getSearchInput() {
        return this.vA;
    }

    public void closeMode() {
        if (this.vR != null) {
            this.vR.cancel();
        }
    }

    public void killMode() {
        finishAnimation();
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        this.ca = null;
        this.mActionBarView = null;
        if (this.qt != null) {
            this.qt.clear();
            this.qt = null;
        }
        this.vS = null;
    }

    public float getAnimationProgress() {
        return this.qu;
    }

    public void setAnimationProgress(float f) {
        this.qu = f;
        notifyAnimationUpdate(this.qv, this.qu);
    }

    protected void finishAnimation() {
        if (this.vR != null) {
            this.vR.cancel();
            this.vR = null;
        }
    }

    protected ObjectAnimator makeAnimation() {
        if (this.vR != null) {
            this.vR.cancel();
            this.vR = null;
            bS();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "AnimationProgress", new float[]{0.0f, 1.0f});
        ofFloat.addListener(this);
        ofFloat.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 300 : 0);
        ofFloat.setInterpolator(new CubicEaseOutInterpolator());
        return ofFloat;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.vz = findViewById(R.id.search_btn_cancel);
        this.vA = (EditText) findViewById(16908297);
        this.vJ = getPaddingTop();
        View contentView = getContentView();
        if (contentView != null) {
            this.vO = contentView.getPaddingTop();
            this.vP = contentView.getPaddingBottom();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.pR) {
            if (this.qv && bU()) {
                ((View) this.vC.get()).setTranslationY((float) this.vH);
            }
            bR();
            this.pR = false;
        }
    }

    protected ActionBarContainer getActionBarContainer() {
        if (this.ca == null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                for (int i = 0; i < actionBarOverlayLayout.getChildCount(); i++) {
                    View childAt = actionBarOverlayLayout.getChildAt(i);
                    if (childAt.getId() == R.id.action_bar_container && (childAt instanceof ActionBarContainer)) {
                        this.ca = (ActionBarContainer) childAt;
                        break;
                    }
                }
            }
            if (this.ca != null) {
                this.vW = ((MarginLayoutParams) this.ca.getLayoutParams()).topMargin;
                if (this.vW > 0) {
                    setPadding(getPaddingLeft(), this.vJ + this.vW, getPaddingRight(), getPaddingBottom());
                }
            }
        }
        return this.ca;
    }

    protected ActionBarContainer getSplitActionBarContainer() {
        if (this.vS == null) {
            ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                for (int i = 0; i < actionBarOverlayLayout.getChildCount(); i++) {
                    View childAt = actionBarOverlayLayout.getChildAt(i);
                    if (childAt.getId() == R.id.split_action_bar && (childAt instanceof ActionBarContainer)) {
                        this.vS = (ActionBarContainer) childAt;
                        break;
                    }
                }
            }
        }
        return this.vS;
    }

    protected ActionBarView getActionBarView() {
        if (this.mActionBarView == null) {
            ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                this.mActionBarView = (ActionBarView) actionBarOverlayLayout.findViewById(R.id.action_bar);
            }
        }
        return this.mActionBarView;
    }

    protected View getDimView() {
        if (this.vT == null) {
            ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                this.vT = actionBarOverlayLayout.findViewById(R.id.content_mask);
            }
        }
        return this.vT;
    }

    protected void pollViews() {
        getActionBarView();
        getActionBarContainer();
        getSplitActionBarContainer();
    }

    protected void setOverlayMode(boolean z) {
        ((ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this)).setOverlayMode(z);
    }

    protected ViewPager getViewPager() {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this);
        if (((ActionBarImpl) actionBarOverlayLayout.getActionBar()).isFragmentViewPagerMode()) {
            return (ViewPager) actionBarOverlayLayout.findViewById(R.id.view_pager);
        }
        return null;
    }

    protected void setResultViewMargin(boolean z) {
        if (this.vD != null && this.vQ) {
            int height;
            int i;
            if (z) {
                height = (getHeight() - this.vK) - this.vW;
                i = 0;
            } else {
                height = this.vM;
                i = this.vN;
            }
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) ((View) this.vD.get()).getLayoutParams();
            marginLayoutParams.topMargin = height;
            marginLayoutParams.bottomMargin = i;
        }
    }

    public void onAnimationStart(Animator animator) {
        this.vU = false;
        if (this.qv) {
            setAlpha(1.0f);
            return;
        }
        View tabContainer = getActionBarContainer().getTabContainer();
        if (tabContainer != null) {
            tabContainer.setVisibility(0);
        }
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.vU) {
            this.vR = null;
            notifyAnimationEnd(this.qv);
            if (this.qv) {
                InputMethodHelper.getInstance().showKeyBoard(this.vA);
            } else {
                InputMethodHelper.getInstance().hideKeyBoard(this.vA);
            }
            if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                setResultViewMargin(this.qv);
            } else {
                post(new Runnable() {
                    public void run() {
                        SearchActionModeView.this.setResultViewMargin(SearchActionModeView.this.qv);
                    }
                });
            }
            setContentViewTranslation(0);
            setContentViewPadding(this.qv ? this.vK : 0, 0);
            if (!this.qv) {
                setOverlayMode(false);
                setAlpha(0.0f);
                killMode();
            }
        }
    }

    public void onAnimationCancel(Animator animator) {
        this.vU = true;
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void initForMode(ActionMode actionMode) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.vL = charSequence == null ? 0 : charSequence.length();
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        int i;
        if (editable == null) {
            i = 0;
        } else {
            i = editable.length();
        }
        if (i == 0) {
            if (this.vT != null) {
                this.vT.setVisibility(0);
            }
            InputMethodHelper.getInstance().showKeyBoard(this.vA);
        } else if (this.vL == 0 && this.vT != null) {
            this.vT.setVisibility(8);
        }
    }

    public void onClick(View view) {
        if (view.getId() == R.id.content_mask) {
            this.vz.performClick();
        }
    }

    protected void setContentViewTranslation(int i) {
        View contentView = getContentView();
        if (contentView != null) {
            contentView.setTranslationY((float) i);
        }
    }

    protected void setContentViewPadding(int i, int i2) {
        View contentView = getContentView();
        if (contentView != null) {
            contentView.setPadding(contentView.getPaddingLeft(), i + this.vO, contentView.getPaddingRight(), i2 + this.vP);
        }
    }

    private View getContentView() {
        ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
        if (actionBarOverlayLayout != null) {
            return actionBarOverlayLayout.findViewById(16908290);
        }
        return null;
    }

    public boolean queueIdle() {
        this.vR.start();
        return false;
    }

    private void bR() {
        bS();
        bT().addIdleHandler(this);
    }

    private void bS() {
        bT().removeIdleHandler(this);
    }

    private MessageQueue bT() {
        return Looper.myQueue();
    }

    protected void createAnimationListeners() {
        if (this.qt == null) {
            this.qt = new ArrayList();
        }
        this.qt.add(new SearchViewAnimationProcessor());
        if (bU()) {
            this.qt.add(new ContentViewAnimationProcessor());
            this.qt.add(new ActionBarAnimationProcessor());
            this.qt.add(new SplitActionBarAnimationProcessor());
        }
        if (getDimView() != null) {
            this.qt.add(new DimViewAnimationProcessor());
        }
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

    public void setStatusBarPaddingTop(int i) {
        this.vK = i;
    }

    private boolean bU() {
        return (this.vB == null || this.vC == null) ? false : true;
    }
}
