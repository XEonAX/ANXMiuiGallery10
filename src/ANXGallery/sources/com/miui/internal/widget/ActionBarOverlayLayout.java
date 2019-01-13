package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window.Callback;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.miui.internal.R;
import com.miui.internal.util.ContextHelper;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.menu.ContextMenuBuilder;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuDialogHelper;
import com.miui.internal.view.menu.MenuPresenter;
import miui.app.ActionBar;
import miui.app.OnStatusBarChangeListener;
import miui.reflect.Method;
import miui.util.Log;
import miui.view.SearchActionMode;

public class ActionBarOverlayLayout extends FrameLayout {
    private static final String TAG = "ActionBarOverlayLayout";
    private ActionBar aR;
    private int aT;
    private View bg;
    protected ActionBarContainer mActionBarTop;
    protected ActionBarView mActionBarView;
    private ActionMode mActionMode;
    protected View mContentView;
    private ActionBarContextView pI;
    private ActionBarContainer qU;
    private Callback qV;
    private boolean qW;
    private boolean qX;
    private boolean qY;
    private boolean qZ;
    private Drawable ra;
    private Paint rb;
    private Bitmap rc;
    private Bitmap rd;
    private Bitmap re;
    private Bitmap rf;
    private TypedValue rg;
    private TypedValue rh;
    private TypedValue ri;
    private TypedValue rj;
    private boolean rk;
    private Rect rl;
    private Rect rm;
    private Rect rn;
    private Rect ro;
    private Rect rp;
    private Rect rq;
    private Rect rr;
    private ContextMenuBuilder rs;
    private MenuDialogHelper rt;
    private ContextMenuCallback ru;
    private OnStatusBarChangeListener rv;

    private class ActionModeCallbackWrapper implements ActionMode.Callback {
        private ActionMode.Callback rw;

        public ActionModeCallbackWrapper(ActionMode.Callback callback) {
            this.rw = callback;
        }

        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.rw.onCreateActionMode(actionMode, menu);
        }

        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.rw.onPrepareActionMode(actionMode, menu);
        }

        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.rw.onActionItemClicked(actionMode, menuItem);
        }

        public void onDestroyActionMode(ActionMode actionMode) {
            this.rw.onDestroyActionMode(actionMode);
            if (ActionBarOverlayLayout.this.getCallback() != null) {
                ActionBarOverlayLayout.this.getCallback().onActionModeFinished(actionMode);
            }
            ActionBarOverlayLayout.this.mActionMode = null;
        }
    }

    public class ContentMaskAnimator implements AnimatorListener {
        private ObjectAnimator rA;
        private ObjectAnimator rB;
        private OnClickListener rC;

        private ContentMaskAnimator(OnClickListener onClickListener) {
            this.rC = onClickListener;
            this.rA = ObjectAnimator.ofFloat(ActionBarOverlayLayout.this.bg, "alpha", new float[]{0.0f, 1.0f});
            this.rA.addListener(this);
            this.rB = ObjectAnimator.ofFloat(ActionBarOverlayLayout.this.bg, "alpha", new float[]{1.0f, 0.0f});
            this.rB.addListener(this);
            if (!DeviceHelper.FEATURE_WHOLE_ANIM) {
                this.rA.setDuration(0);
                this.rB.setDuration(0);
            }
        }

        public Animator show() {
            return this.rA;
        }

        public Animator hide() {
            return this.rB;
        }

        public void onAnimationStart(Animator animator) {
            if (animator == this.rA) {
                ActionBarOverlayLayout.this.bg.setVisibility(0);
                ActionBarOverlayLayout.this.bg.bringToFront();
                ActionBarOverlayLayout.this.qU.bringToFront();
                ActionBarOverlayLayout.this.bg.setOnClickListener(this.rC);
            }
        }

        public void onAnimationEnd(Animator animator) {
            if (ActionBarOverlayLayout.this.bg.getAlpha() == 0.0f) {
                ActionBarOverlayLayout.this.qU.bringToFront();
                ActionBarOverlayLayout.this.bg.setOnClickListener(null);
                ActionBarOverlayLayout.this.bg.setVisibility(8);
            }
        }

        public void onAnimationCancel(Animator animator) {
            if (animator == this.rB) {
                ActionBarOverlayLayout.this.qU.bringToFront();
                ActionBarOverlayLayout.this.bg.setOnClickListener(null);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }
    }

    private class ContextMenuCallback implements MenuBuilder.Callback, MenuPresenter.Callback {
        private MenuDialogHelper rD;

        private ContextMenuCallback() {
        }

        public void f(MenuBuilder menuBuilder) {
            if (getActivity() != null) {
                getActivity().onPanelClosed(6, menuBuilder.getRootMenu());
            }
        }

        Activity getActivity() {
            return ContextHelper.getActivityContextFromView(ActionBarOverlayLayout.this);
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder.getRootMenu() != menuBuilder) {
                f(menuBuilder);
            }
            if (z) {
                if (getActivity() != null) {
                    getActivity().onPanelClosed(6, menuBuilder);
                }
                ActionBarOverlayLayout.this.bm();
                if (this.rD != null) {
                    this.rD.dismiss();
                    this.rD = null;
                }
            }
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            menuBuilder.setCallback(this);
            this.rD = new MenuDialogHelper(menuBuilder);
            this.rD.show(null);
            return true;
        }

        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            if (getActivity() != null) {
                return getActivity().onMenuItemSelected(6, menuItem);
            }
            return false;
        }

        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    private class SearchActionModeCallbackWrapper extends ActionModeCallbackWrapper implements SearchActionMode.Callback {
        public SearchActionModeCallbackWrapper(ActionMode.Callback callback) {
            super(callback);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.qX = true;
        this.rl = new Rect();
        this.rm = new Rect();
        this.rn = new Rect();
        this.ro = new Rect();
        this.rp = new Rect();
        this.rq = new Rect();
        this.rr = new Rect();
        this.ru = new ContextMenuCallback();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Window, i, 0);
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMajor)) {
            this.rg = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMajor, this.rg);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMinor)) {
            this.rh = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMinor, this.rh);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMajor)) {
            this.ri = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMajor, this.ri);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMinor)) {
            this.rj = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMinor, this.rj);
        }
        this.qZ = obtainStyledAttributes.getBoolean(miui.R.styleable.Window_contentAutoFitSystemWindow, false);
        if (this.qZ) {
            this.ra = obtainStyledAttributes.getDrawable(miui.R.styleable.Window_contentHeaderBackground);
        }
        obtainStyledAttributes.recycle();
    }

    public boolean showContextMenuForChild(View view) {
        if (this.rs == null) {
            this.rs = new ContextMenuBuilder(getContext());
            this.rs.setCallback(this.ru);
        } else {
            this.rs.clear();
        }
        this.rt = this.rs.show(view, view.getWindowToken());
        if (this.rt == null) {
            return super.showContextMenuForChild(view);
        }
        this.rt.setPresenterCallback(this.ru);
        return true;
    }

    protected boolean fitSystemWindows(Rect rect) {
        int a;
        if (this.rv != null) {
            this.rv.onStatusBarHeightChange(rect.top);
        }
        this.ro.set(rect);
        int i;
        if (isRootSubDecor() || (bk() && this.ro.bottom == bl())) {
            i = 0;
        } else {
            this.ro.bottom = 0;
            i = 1;
        }
        if (this.mActionBarTop != null) {
            if (isTranslucentStatus()) {
                this.mActionBarTop.setPendingInsets(rect);
            }
            View view = this.mActionBarTop;
            Rect rect2 = this.ro;
            boolean z = isRootSubDecor() && !isTranslucentStatus();
            a = a(view, rect2, true, z, false, true);
        } else {
            a = 0;
        }
        if (this.qU != null) {
            this.rr.set(this.ro);
            a |= a(this.qU, this.ro, true, false, true, true);
        }
        if (!isRootSubDecor() && i == 0) {
            this.ro.bottom = 0;
        }
        a(this.ro, this.rl);
        if (!this.rm.equals(this.rl)) {
            this.rm.set(this.rl);
            a = 1;
        }
        if (a != 0) {
            requestLayout();
        }
        return isRootSubDecor();
    }

    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        windowInsets = super.onApplyWindowInsets(windowInsets);
        if (windowInsets.isConsumed() || !isRootSubDecor() || VERSION.SDK_INT < 28) {
            return windowInsets;
        }
        try {
            return (WindowInsets) Method.of(WindowInsets.class, "consumeDisplayCutout", "()Landroid/view/WindowInsets;").invokeObject(WindowInsets.class, windowInsets, new Object[0]);
        } catch (Exception e) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("onApplyWindowInsets, consumeDisplayCutout failed, ");
            stringBuilder.append(e);
            Log.w(str, stringBuilder.toString());
            return windowInsets;
        }
    }

    private void a(Rect rect, Rect rect2) {
        boolean isRootSubDecor = isRootSubDecor();
        boolean isTranslucentStatus = isTranslucentStatus();
        rect2.set(rect);
        if ((!isRootSubDecor || isTranslucentStatus) && !this.qZ) {
            rect2.top = 0;
        }
    }

    private boolean a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!z || layoutParams.leftMargin == rect.left) {
            z = false;
        } else {
            layoutParams.leftMargin = rect.left;
            z = true;
        }
        if (z2 && layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z = true;
        }
        if (z4 && layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z = true;
        }
        if (!z3 || layoutParams.bottomMargin == rect.bottom) {
            return z;
        }
        layoutParams.bottomMargin = rect.bottom;
        return true;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestFitSystemWindows();
    }

    public void requestFitSystemWindows() {
        super.requestFitSystemWindows();
        this.qY = true;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        bj();
    }

    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        int i3;
        int i4;
        View childAt;
        int m = m(i);
        int n = n(i2);
        View view = this.mContentView;
        View view2 = this.bg;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt2 = getChildAt(i8);
            if (!(childAt2 == view || childAt2 == view2 || childAt2.getVisibility() == 8)) {
                View view3 = childAt2;
                measureChildWithMargins(childAt2, m, 0, n, 0);
                layoutParams = (LayoutParams) view3.getLayoutParams();
                int max = Math.max(i5, (view3.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin);
                i6 = Math.max(i6, (view3.getMeasuredHeight() + layoutParams.topMargin) + layoutParams.bottomMargin);
                i5 = max;
                i7 = combineMeasuredStates(i7, view3.getMeasuredState());
            }
        }
        if (this.mActionBarTop == null || this.mActionBarTop.getVisibility() != 0) {
            i3 = 0;
        } else {
            i3 = this.mActionBarTop.getMeasuredHeight();
        }
        if (this.mActionBarView == null || !this.mActionBarView.isSplitActionBar()) {
            i4 = 0;
        } else {
            i4 = getBottomInset();
        }
        if (isTranslucentStatus() && this.qZ) {
            if (this.ra != null) {
                this.ra.setBounds(0, 0, getRight() - getLeft(), this.rl.top);
            } else {
                ViewGroup viewGroup = (ViewGroup) findViewById(16908290);
                if (viewGroup != null && viewGroup.getChildCount() == 1) {
                    childAt = viewGroup.getChildAt(0);
                    if (i3 <= 0) {
                        childAt.setPadding(childAt.getPaddingLeft(), this.ro.top, childAt.getPaddingRight(), childAt.getPaddingBottom());
                    } else {
                        childAt.setPadding(childAt.getPaddingLeft(), 0, childAt.getPaddingRight(), childAt.getPaddingBottom());
                    }
                }
            }
        }
        this.rq.set(this.ro);
        this.rn.set(this.rl);
        if (isTranslucentStatus() && i3 > 0) {
            this.rn.top = 0;
        }
        Rect rect;
        if (this.qW) {
            if (!isTranslucentStatus()) {
                rect = this.rq;
                rect.top += i3;
            } else if (i3 > 0) {
                this.rq.top = i3;
            }
            rect = this.rq;
            rect.bottom += i4;
        } else {
            rect = this.rn;
            rect.top += i3;
            rect = this.rn;
            rect.bottom += i4;
        }
        if (bk()) {
            if (getResources().getConfiguration().orientation == 1) {
                this.rn.bottom = 0;
            } else {
                this.rn.right = 0;
                this.rn.left = 0;
                if (DeviceHelper.IS_TABLET) {
                    this.rn.bottom = 0;
                }
            }
        }
        a(view, this.rn, true, true, true, true);
        if (!this.rp.equals(this.rq) || this.qY) {
            this.rp.set(this.rq);
            super.fitSystemWindows(this.rq);
            this.qY = false;
        }
        measureChildWithMargins(view, m, 0, n, 0);
        layoutParams = (LayoutParams) view.getLayoutParams();
        i3 = Math.max(i5, (view.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin);
        i5 = Math.max(i6, (view.getMeasuredHeight() + layoutParams.topMargin) + layoutParams.bottomMargin);
        int combineMeasuredStates = combineMeasuredStates(i7, view.getMeasuredState());
        if (view2 != null && view2.getVisibility() == 0) {
            childAt = view2;
            a(childAt, this.rr, true, false, true, true);
            measureChildWithMargins(childAt, m, 0, n, 0);
        }
        setMeasuredDimension(resolveSizeAndState(Math.max(i3 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), m, combineMeasuredStates), resolveSizeAndState(Math.max(i5 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), n, combineMeasuredStates << 16));
        this.rk = bi();
        if (this.rk && this.rb == null) {
            this.rb = new Paint();
            this.rb.setAntiAlias(true);
            this.rb.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
            Resources resources = getResources();
            this.rc = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_1);
            this.rd = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_2);
            this.re = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_3);
            this.rf = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_4);
        }
    }

    private int m(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            return i;
        }
        int i2;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i3 = 0;
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        TypedValue typedValue = i2 != 0 ? this.rh : this.rg;
        if (typedValue == null || typedValue.type == 0) {
            return i;
        }
        if (typedValue.type == 5) {
            i3 = (int) typedValue.getDimension(displayMetrics);
        } else if (typedValue.type == 6) {
            i3 = (int) typedValue.getFraction((float) displayMetrics.widthPixels, (float) displayMetrics.widthPixels);
        }
        if (i3 > 0) {
            return MeasureSpec.makeMeasureSpec(Math.min(i3, size), 1073741824);
        }
        return i;
    }

    private int n(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            return i;
        }
        int i2;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i3 = 0;
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        TypedValue typedValue = i2 != 0 ? this.ri : this.rj;
        if (typedValue == null || typedValue.type == 0) {
            return i;
        }
        if (typedValue.type == 5) {
            i3 = (int) typedValue.getDimension(displayMetrics);
        } else if (typedValue.type == 6) {
            i3 = (int) typedValue.getFraction((float) displayMetrics.heightPixels, (float) displayMetrics.heightPixels);
        }
        if (i3 > 0) {
            return MeasureSpec.makeMeasureSpec(Math.min(i3, size), 1073741824);
        }
        return i;
    }

    protected void dispatchDraw(Canvas canvas) {
        if (this.qZ && this.ra != null) {
            this.ra.setBounds(0, 0, getRight() - getLeft(), this.rl.top);
            this.ra.draw(canvas);
        }
        if (this.rk) {
            canvas.saveLayer(0.0f, 0.0f, (float) getWidth(), (float) getHeight(), null, 31);
            super.dispatchDraw(canvas);
            canvas.drawBitmap(this.rc, 0.0f, 0.0f, this.rb);
            canvas.drawBitmap(this.rd, (float) (getWidth() - this.rd.getWidth()), 0.0f, this.rb);
            canvas.drawBitmap(this.re, 0.0f, (float) (getHeight() - this.re.getHeight()), this.rb);
            canvas.drawBitmap(this.rf, (float) (getWidth() - this.rf.getWidth()), (float) (getHeight() - this.rf.getHeight()), this.rb);
            canvas.restore();
            return;
        }
        super.dispatchDraw(canvas);
    }

    private boolean bi() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        return (iArr[0] == 0 || iArr[1] == 0 || iArr[0] + getMeasuredWidth() == displayMetrics.widthPixels || iArr[1] + getMeasuredHeight() == displayMetrics.heightPixels) ? false : true;
    }

    protected int getBottomInset() {
        return this.qU != null ? this.qU.bb() : 0;
    }

    public ActionBar getActionBar() {
        return this.aR;
    }

    public void setActionBar(ActionBar actionBar) {
        this.aR = actionBar;
    }

    public void setOverlayMode(boolean z) {
        this.qW = z;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public ContentMaskAnimator getContentMaskAnimator(OnClickListener onClickListener) {
        return new ContentMaskAnimator(onClickListener);
    }

    public ActionBarView getActionBarView() {
        return this.mActionBarView;
    }

    public Callback getCallback() {
        return this.qV;
    }

    public void setCallback(Callback callback) {
        this.qV = callback;
    }

    public void setTranslucentStatus(int i) {
        if (this.aT != i) {
            this.aT = i;
            requestFitSystemWindows();
        }
    }

    private void bj() {
        if (this.mContentView == null) {
            this.mContentView = findViewById(16908290);
            this.bg = findViewById(R.id.content_mask);
            if (DeviceHelper.IS_OLED && this.bg != null) {
                this.bg.setBackground(getContext().getResources().getDrawable(R.drawable.window_content_mask_oled));
            }
            this.mActionBarTop = (ActionBarContainer) findViewById(R.id.action_bar_container);
            if (this.mActionBarTop != null) {
                this.pI = (ActionBarContextView) this.mActionBarTop.findViewById(R.id.action_context_bar);
                this.mActionBarView = (ActionBarView) this.mActionBarTop.findViewById(R.id.action_bar);
            }
            this.qU = (ActionBarContainer) findViewById(R.id.split_action_bar);
        }
    }

    public boolean isRootSubDecor() {
        return this.qX;
    }

    public boolean isTranslucentStatus() {
        int windowSystemUiVisibility = getWindowSystemUiVisibility();
        boolean z = (windowSystemUiVisibility & 256) != 0;
        boolean z2 = (windowSystemUiVisibility & 1024) != 0;
        boolean z3 = this.aT != 0;
        if ((z && z2) || z3) {
            return true;
        }
        return false;
    }

    private boolean bk() {
        return (getWindowSystemUiVisibility() & 512) != 0;
    }

    private int bl() {
        Resources resources = getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public void setRootSubDecor(boolean z) {
        this.qX = z;
    }

    /* JADX WARNING: Missing block: B:15:0x0033, code:
            if (r2.mActionBarView.hideOverflowMenu() != false) goto L_0x0037;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = true;
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (a(keyEvent)) {
            if (this.mActionMode != null) {
                if (this.pI == null || !this.pI.hideOverflowMenu()) {
                    this.mActionMode.finish();
                    this.mActionMode = null;
                }
            } else if (this.mActionBarView != null) {
            }
            return z;
        }
        z = false;
        return z;
    }

    private boolean a(KeyEvent keyEvent) {
        return keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1;
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return startActionMode(view, callback);
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        ActionMode actionMode = null;
        this.mActionMode = null;
        if (getCallback() != null) {
            actionMode = getCallback().onWindowStartingActionMode(b(callback));
        }
        if (actionMode != null) {
            this.mActionMode = actionMode;
        }
        if (!(this.mActionMode == null || getCallback() == null)) {
            getCallback().onActionModeStarted(this.mActionMode);
        }
        return this.mActionMode;
    }

    public ActionMode startActionMode(View view, ActionMode.Callback callback) {
        if (!(view instanceof ActionBarOverlayLayout)) {
            return startActionMode(callback);
        }
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        this.mActionMode = view.startActionMode(b(callback));
        return this.mActionMode;
    }

    private ActionModeCallbackWrapper b(ActionMode.Callback callback) {
        if (callback instanceof SearchActionMode.Callback) {
            return new SearchActionModeCallbackWrapper(callback);
        }
        return new ActionModeCallbackWrapper(callback);
    }

    private void bm() {
        if (this.rt != null) {
            this.rt.dismiss();
            this.rs = null;
        }
    }

    public void setOnStatusBarChangeListener(OnStatusBarChangeListener onStatusBarChangeListener) {
        this.rv = onStatusBarChangeListener;
    }
}
