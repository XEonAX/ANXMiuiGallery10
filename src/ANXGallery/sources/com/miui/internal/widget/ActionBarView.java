package com.miui.internal.widget;

import android.app.ActionBar;
import android.app.ActionBar.OnNavigationListener;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.view.CollapsibleActionView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window.Callback;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.app.ActionBarDelegateImpl;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.ActionBarPolicy;
import com.miui.internal.view.menu.ActionMenuItem;
import com.miui.internal.view.menu.ActionMenuPresenter;
import com.miui.internal.view.menu.ActionMenuView;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuItemImpl;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.view.menu.MenuView;
import com.miui.internal.view.menu.SubMenuBuilder;
import com.nexstreaming.nexeditorsdk.nexEngine;
import miui.util.ViewUtils;

public class ActionBarView extends a {
    public static final int DISPLAY_DEFAULT = 0;
    private static final String TAG = "ActionBarView";
    private static final int rE = 31;
    private static final int rF = 8388627;
    private static final int rG = 1;
    private static final int rH = 2;
    private ScrollingTabContainerView bj;
    Callback cG;
    private TextView cp;
    private Context mContext;
    private Drawable mIcon;
    private CharSequence mTitle;
    private LinearLayout qi;
    private int ql;
    private int rI;
    private int rJ = -1;
    private CharSequence rK;
    private int rL;
    private Drawable rM;
    private final int rN;
    private Drawable rO;
    private int rP;
    private HomeView rQ;
    private HomeView rR;
    private TextView rS;
    private View rT;
    private Spinner rU;
    private LinearLayout rV;
    private View rW;
    private ProgressBar rX;
    private ProgressBar rY;
    private View rZ;
    private View sa;
    private View sb;
    private int sc;
    private int sd;
    private int se;
    private boolean sf;
    private boolean sg;
    private boolean sh;
    private boolean si;
    private MenuBuilder sj;
    private ActionMenuItem sk;
    private ActionMenuItem sl;
    private SpinnerAdapter sm;
    private OnNavigationListener sn;
    private ExpandedActionViewMenuPresenter so;
    View sp;
    private final OnItemSelectedListener sq = new OnItemSelectedListener() {
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (ActionBarView.this.sn != null) {
                ActionBarView.this.sn.onNavigationItemSelected(i, j);
            }
        }

        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    };
    private final OnClickListener sr = new OnClickListener() {
        public void onClick(View view) {
            MenuItemImpl menuItemImpl = ActionBarView.this.so.sx;
            if (menuItemImpl != null) {
                menuItemImpl.collapseActionView();
            }
        }
    };
    private final OnClickListener ss = new OnClickListener() {
        public void onClick(View view) {
            ActionBarView.this.cG.onMenuItemSelected(0, ActionBarView.this.sk);
        }
    };
    private final OnClickListener st = new OnClickListener() {
        public void onClick(View view) {
            ActionBarView.this.cG.onMenuItemSelected(0, ActionBarView.this.sl);
        }
    };

    private class ExpandedActionViewMenuPresenter implements MenuPresenter {
        MenuBuilder mMenu;
        MenuItemImpl sx;

        private ExpandedActionViewMenuPresenter() {
        }

        /* synthetic */ ExpandedActionViewMenuPresenter(ActionBarView actionBarView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            if (!(this.mMenu == null || this.sx == null)) {
                this.mMenu.collapseItemActionView(this.sx);
            }
            this.mMenu = menuBuilder;
        }

        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        public void updateMenuView(boolean z) {
            if (this.sx != null) {
                Object obj = null;
                if (this.mMenu != null) {
                    int size = this.mMenu.size();
                    for (int i = 0; i < size; i++) {
                        if (this.mMenu.getItem(i) == this.sx) {
                            obj = 1;
                            break;
                        }
                    }
                }
                if (obj == null) {
                    collapseItemActionView(this.mMenu, this.sx);
                }
            }
        }

        public void setCallback(MenuPresenter.Callback callback) {
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean flagActionItems() {
            return false;
        }

        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            ActionBarView.this.sp = menuItemImpl.getActionView();
            ActionBarView.this.bv();
            ActionBarView.this.rR.setIcon(ActionBarView.this.getIcon().getConstantState().newDrawable(ActionBarView.this.getResources()));
            this.sx = menuItemImpl;
            if (ActionBarView.this.sp.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.sp);
            }
            if (ActionBarView.this.rR.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.rR);
            }
            if (ActionBarView.this.rQ != null) {
                ActionBarView.this.rQ.setVisibility(8);
            }
            if (ActionBarView.this.qi != null) {
                ActionBarView.this.p(false);
            }
            if (ActionBarView.this.bj != null) {
                ActionBarView.this.bj.setVisibility(8);
            }
            if (ActionBarView.this.rU != null) {
                ActionBarView.this.rU.setVisibility(8);
            }
            if (ActionBarView.this.rW != null) {
                ActionBarView.this.rW.setVisibility(8);
            }
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            if (ActionBarView.this.sp instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.sp).onActionViewExpanded();
            }
            return true;
        }

        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            if (ActionBarView.this.sp instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.sp).onActionViewCollapsed();
            }
            ActionBarView.this.removeView(ActionBarView.this.sp);
            ActionBarView.this.removeView(ActionBarView.this.rR);
            ActionBarView.this.sp = null;
            if ((ActionBarView.this.rJ & 2) != 0) {
                ActionBarView.this.rQ.setVisibility(0);
            }
            if ((ActionBarView.this.rJ & 8) != 0) {
                if (ActionBarView.this.qi == null) {
                    ActionBarView.this.initTitle();
                } else {
                    ActionBarView.this.p(true);
                }
            }
            if (ActionBarView.this.bj != null && ActionBarView.this.rI == 2) {
                ActionBarView.this.bj.setVisibility(0);
            }
            if (ActionBarView.this.rU != null && ActionBarView.this.rI == 1) {
                ActionBarView.this.rU.setVisibility(0);
            }
            if (!(ActionBarView.this.rW == null || (ActionBarView.this.rJ & 16) == 0)) {
                ActionBarView.this.rW.setVisibility(0);
            }
            ActionBarView.this.rR.setIcon(null);
            this.sx = null;
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        public int getId() {
            return 0;
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }
    }

    private static class HomeView extends FrameLayout {
        private ImageView nt;
        private int sA;
        private Drawable sB;
        private ImageView sy;
        private int sz;

        public HomeView(Context context) {
            this(context, null);
        }

        public HomeView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void q(boolean z) {
            this.sy.setVisibility(z ? 0 : 8);
        }

        public void setIcon(Drawable drawable) {
            this.nt.setImageDrawable(drawable);
        }

        public void a(Drawable drawable) {
            ImageView imageView = this.sy;
            if (drawable == null) {
                drawable = this.sB;
            }
            imageView.setImageDrawable(drawable);
            this.sA = 0;
        }

        public void p(int i) {
            this.sA = i;
            this.sy.setImageDrawable(i != 0 ? getResources().getDrawable(i) : null);
        }

        protected void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            if (this.sA != 0) {
                p(this.sA);
            }
        }

        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            CharSequence contentDescription = getContentDescription();
            if (!TextUtils.isEmpty(contentDescription)) {
                accessibilityEvent.getText().add(contentDescription);
            }
            return true;
        }

        protected void onFinishInflate() {
            this.sy = (ImageView) findViewById(R.id.up);
            this.nt = (ImageView) findViewById(R.id.home);
            this.sB = this.sy.getDrawable();
        }

        public int bw() {
            return 0;
        }

        protected void onMeasure(int i, int i2) {
            measureChildWithMargins(this.sy, i, 0, i2, 0);
            LayoutParams layoutParams = (LayoutParams) this.sy.getLayoutParams();
            this.sz = (layoutParams.leftMargin + this.sy.getMeasuredWidth()) + layoutParams.rightMargin;
            int i3 = this.sy.getVisibility() == 8 ? 0 : this.sz;
            int measuredHeight = layoutParams.bottomMargin + (layoutParams.topMargin + this.sy.getMeasuredHeight());
            measureChildWithMargins(this.nt, i, i3, i2, 0);
            LayoutParams layoutParams2 = (LayoutParams) this.nt.getLayoutParams();
            i3 += (layoutParams2.leftMargin + this.nt.getMeasuredWidth()) + layoutParams2.rightMargin;
            measuredHeight = Math.max(measuredHeight, (layoutParams2.topMargin + this.nt.getMeasuredHeight()) + layoutParams2.bottomMargin);
            int mode = MeasureSpec.getMode(i);
            int mode2 = MeasureSpec.getMode(i2);
            i = MeasureSpec.getSize(i);
            i2 = MeasureSpec.getSize(i2);
            if (mode == Integer.MIN_VALUE) {
                i3 = Math.min(i3, i);
            } else if (mode == 1073741824) {
                i3 = i;
            }
            if (mode2 == Integer.MIN_VALUE) {
                measuredHeight = Math.min(measuredHeight, i2);
            } else if (mode2 == 1073741824) {
                measuredHeight = i2;
            }
            setMeasuredDimension(i3, measuredHeight);
        }

        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int measuredHeight;
            int measuredWidth;
            int i5;
            i4 = (i4 - i2) / 2;
            z = ViewUtils.isLayoutRtl(this);
            if (this.sy.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) this.sy.getLayoutParams();
                measuredHeight = this.sy.getMeasuredHeight();
                measuredWidth = this.sy.getMeasuredWidth();
                i5 = i4 - (measuredHeight / 2);
                ViewUtils.layoutChildView(this, this.sy, 0, i5, measuredWidth, i5 + measuredHeight);
                measuredHeight = (layoutParams.leftMargin + measuredWidth) + layoutParams.rightMargin;
                if (z) {
                    i3 -= measuredHeight;
                } else {
                    i += measuredHeight;
                }
            } else {
                measuredHeight = 0;
            }
            LayoutParams layoutParams2 = (LayoutParams) this.nt.getLayoutParams();
            i2 = this.nt.getMeasuredHeight();
            measuredWidth = this.nt.getMeasuredWidth();
            int max = measuredHeight + Math.max(layoutParams2.getMarginStart(), ((i3 - i) / 2) - (measuredWidth / 2));
            i5 = Math.max(layoutParams2.topMargin, i4 - (i2 / 2));
            ViewUtils.layoutChildView(this, this.nt, max, i5, max + measuredWidth, i5 + i2);
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: d */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: q */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean qz;
        int sC;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.sC = parcel.readInt();
            this.qz = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.sC);
            parcel.writeInt(this.qz);
        }
    }

    public ActionBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        setBackgroundResource(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, miui.R.styleable.ActionBar, 16843470, 0);
        this.rI = obtainStyledAttributes.getInt(miui.R.styleable.ActionBar_android_navigationMode, 0);
        this.mTitle = obtainStyledAttributes.getText(miui.R.styleable.ActionBar_android_title);
        this.rK = obtainStyledAttributes.getText(miui.R.styleable.ActionBar_android_subtitle);
        this.si = obtainStyledAttributes.getBoolean(R.styleable.ActionBar_titleCenter, false);
        this.rM = obtainStyledAttributes.getDrawable(miui.R.styleable.ActionBar_android_logo);
        this.mIcon = obtainStyledAttributes.getDrawable(miui.R.styleable.ActionBar_android_icon);
        LayoutInflater from = LayoutInflater.from(context);
        this.rN = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_homeLayout, R.layout.action_bar_home);
        this.ql = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_titleTextStyle, 0);
        this.se = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_subtitleTextStyle, 0);
        this.sc = obtainStyledAttributes.getDimensionPixelOffset(miui.R.styleable.ActionBar_android_progressBarPadding, 0);
        this.sd = obtainStyledAttributes.getDimensionPixelOffset(miui.R.styleable.ActionBar_android_itemPadding, 0);
        setDisplayOptions(obtainStyledAttributes.getInt(miui.R.styleable.ActionBar_android_displayOptions, 0));
        int resourceId = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_customNavigationLayout, 0);
        if (resourceId != 0) {
            this.rW = from.inflate(resourceId, this, false);
            this.rI = 0;
        }
        this.mContentHeight = obtainStyledAttributes.getLayoutDimension(miui.R.styleable.ActionBar_android_height, 0);
        obtainStyledAttributes.recycle();
        Context context2 = context;
        this.sk = new ActionMenuItem(context2, 0, 16908332, 0, 0, this.mTitle);
        this.sl = new ActionMenuItem(context2, 0, 16908310, 0, 0, this.mTitle);
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.bj != null && this.sg) {
            ViewGroup.LayoutParams layoutParams = this.bj.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = -1;
            }
        }
    }

    public void setWindowCallback(Callback callback) {
        this.cG = callback;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu(false);
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void initProgress() {
        this.rX = new ProgressBar(this.mContext, null, miui.R.attr.actionBarProgressStyle);
        this.rX.setId(R.id.progress_horizontal);
        this.rX.setMax(10000);
        this.rX.setVisibility(8);
        addView(this.rX);
    }

    public void initIndeterminateProgress() {
        this.rY = new ProgressBar(this.mContext, null, miui.R.attr.actionBarIndeterminateProgressStyle);
        this.rY.setId(R.id.progress_circular);
        this.rY.setVisibility(8);
        this.rY.setIndeterminate(true);
        addView(this.rY);
    }

    public void initImmersionMore(int i, final ActionBarDelegateImpl actionBarDelegateImpl) {
        if (i <= 0) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Try to initialize invalid layout for immersion more button: ");
            stringBuilder.append(i);
            Log.w(str, stringBuilder.toString());
        } else if ((this.rJ & 16) != 0) {
            Log.d(TAG, "Don't show immersion menu button for custom action bar");
        } else if (this.rJ == 0) {
            Log.d(TAG, "Don't show immersion menu button for null display option");
        } else {
            this.rZ = LayoutInflater.from(getContext()).inflate(i, this, false);
            addView(this.rZ);
            final View findViewById = this.rZ.findViewById(R.id.more);
            if (findViewById != null) {
                findViewById.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        actionBarDelegateImpl.showImmersionMenu(findViewById, ActionBarView.this);
                    }
                });
            }
        }
    }

    public boolean showImmersionMore() {
        if (this.rZ == null) {
            return false;
        }
        this.rZ.setVisibility(0);
        return true;
    }

    public boolean hideImmersionMore() {
        if (this.rZ == null) {
            return false;
        }
        this.rZ.setVisibility(8);
        return true;
    }

    public void setSplitActionBar(boolean z) {
        if (this.mSplitActionBar != z) {
            if (this.mMenuView != null) {
                ViewGroup viewGroup = (ViewGroup) this.mMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
                if (z) {
                    if (this.mSplitView != null) {
                        this.mSplitView.addView(this.mMenuView);
                    }
                    this.mMenuView.getLayoutParams().width = -1;
                } else {
                    addView(this.mMenuView);
                    this.mMenuView.getLayoutParams().width = -2;
                }
                this.mMenuView.requestLayout();
            }
            if (this.mSplitView != null) {
                this.mSplitView.setVisibility(z ? 0 : 8);
            }
            if (this.mActionMenuPresenter != null) {
                if (z) {
                    this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
                    this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                } else {
                    this.mActionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(R.bool.abc_action_bar_expanded_action_views_exclusive));
                }
            }
            super.setSplitActionBar(z);
        }
    }

    public boolean isSplitActionBar() {
        return this.mSplitActionBar;
    }

    public int getSplitActionBarHeight(boolean z) {
        if (z) {
            if (this.mSplitView != null) {
                return this.mSplitView.getCollapsedHeight();
            }
            return 0;
        } else if (this.mSplitActionBar) {
            return this.mSplitView.getHeight();
        } else {
            return 0;
        }
    }

    public boolean hasEmbeddedTabs() {
        return this.sg;
    }

    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.bj != null) {
            removeView(this.bj);
        }
        this.bj = scrollingTabContainerView;
        this.sg = scrollingTabContainerView != null;
        if (this.sg && this.rI == 2) {
            addView(this.bj);
            ViewGroup.LayoutParams layoutParams = this.bj.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            bn();
        }
    }

    public void setCallback(OnNavigationListener onNavigationListener) {
        this.sn = onNavigationListener;
    }

    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        if (menu != this.sj) {
            ViewGroup viewGroup;
            ActionMenuView actionMenuView;
            if (this.sj != null) {
                this.sj.removeMenuPresenter(this.mActionMenuPresenter);
                this.sj.removeMenuPresenter(this.so);
            }
            MenuBuilder menuBuilder = (MenuBuilder) menu;
            this.sj = menuBuilder;
            if (this.mMenuView != null) {
                viewGroup = (ViewGroup) this.mMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
            }
            if (this.mActionMenuPresenter == null) {
                this.mActionMenuPresenter = createActionMenuPresenter(callback);
                this.so = createExpandedActionViewMenuPresenter();
            }
            ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -1);
            if (this.mSplitActionBar) {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
                this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                layoutParams.width = -1;
                layoutParams.height = -2;
                layoutParams.gravity = DeviceHelper.IS_TABLET ? 17 : 80;
                g(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                if (this.mSplitView != null) {
                    viewGroup = (ViewGroup) actionMenuView.getParent();
                    if (!(viewGroup == null || viewGroup == this.mSplitView)) {
                        viewGroup.removeView(actionMenuView);
                    }
                    actionMenuView.setVisibility(getAnimatedVisibility());
                    this.mSplitView.addView(actionMenuView, 0, layoutParams);
                    View findViewById = actionMenuView.findViewById(R.id.expanded_menu);
                    if (findViewById != null) {
                        findViewById.requestLayout();
                    }
                } else {
                    actionMenuView.setLayoutParams(layoutParams);
                }
            } else {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(R.bool.abc_action_bar_expanded_action_views_exclusive));
                g(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                viewGroup = (ViewGroup) actionMenuView.getParent();
                if (!(viewGroup == null || viewGroup == this)) {
                    viewGroup.removeView(actionMenuView);
                }
                addView(actionMenuView, layoutParams);
            }
            this.mMenuView = actionMenuView;
        }
    }

    private void g(MenuBuilder menuBuilder) {
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            menuBuilder.addMenuPresenter(this.so);
        } else {
            this.mActionMenuPresenter.initForMenu(this.mContext, null);
            this.so.initForMenu(this.mContext, null);
        }
        this.mActionMenuPresenter.updateMenuView(true);
        this.so.updateMenuView(true);
    }

    public boolean hasExpandedActionView() {
        return (this.so == null || this.so.sx == null) ? false : true;
    }

    public void collapseActionView() {
        MenuItemImpl menuItemImpl;
        if (this.so == null) {
            menuItemImpl = null;
        } else {
            menuItemImpl = this.so.sx;
        }
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    public void setCustomNavigationView(View view) {
        Object obj = (this.rJ & 16) != 0 ? 1 : null;
        if (!(this.rW == null || obj == null)) {
            removeView(this.rW);
        }
        this.rW = view;
        if (this.rW != null && obj != null) {
            addView(this.rW);
        }
    }

    public void setStartView(View view) {
        if (this.sa != null) {
            removeView(this.sa);
        }
        this.sa = view;
        if (this.sa != null) {
            addView(this.sa);
        }
    }

    public void setEndView(View view) {
        if (this.sb != null) {
            removeView(this.sb);
        }
        this.sb = view;
        if (this.sb != null) {
            addView(this.sb);
        }
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public void setTitle(CharSequence charSequence) {
        this.sf = true;
        a(charSequence);
    }

    public void setWindowTitle(CharSequence charSequence) {
        if (!this.sf) {
            a(charSequence);
        }
    }

    private void a(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.cp != null) {
            this.cp.setText(charSequence);
            boolean z = (this.sp != null || (this.rJ & 8) == 0 || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.rK))) ? false : true;
            p(z);
        }
        if (this.sk != null) {
            this.sk.setTitle(charSequence);
        }
        if (this.sl != null) {
            this.sl.setTitle(charSequence);
        }
    }

    public CharSequence getSubtitle() {
        return this.rK;
    }

    public void setSubtitle(CharSequence charSequence) {
        this.rK = charSequence;
        if (this.rS != null) {
            this.rS.setText(charSequence);
            boolean z = false;
            this.rS.setVisibility(charSequence != null ? 0 : 8);
            if (!(this.sp != null || (this.rJ & 8) == 0 || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.rK)))) {
                z = true;
            }
            p(z);
        }
    }

    public void setHomeButtonEnabled(boolean z) {
        if (this.rQ != null) {
            this.rQ.setEnabled(z);
            this.rQ.setFocusable(z);
            if (!z) {
                this.rQ.setContentDescription(null);
            } else if ((this.rJ & 4) != 0) {
                this.rQ.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_up_description));
            } else {
                this.rQ.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_home_description));
            }
        }
    }

    public void setDisplayOptions(int i) {
        int i2 = -1;
        if (this.rJ != -1) {
            i2 = i ^ this.rJ;
        }
        this.rJ = i;
        if ((i2 & 31) != 0) {
            boolean z;
            boolean z2 = false;
            boolean z3 = (i & 2) != 0;
            int i3 = 8;
            if (z3) {
                bu();
                this.rQ.setVisibility(this.sp == null ? 0 : 8);
                if ((i2 & 4) != 0) {
                    z = (i & 4) != 0;
                    this.rQ.q(z);
                    if (z) {
                        setHomeButtonEnabled(true);
                    }
                }
                if ((i2 & 1) != 0) {
                    Drawable logo = getLogo();
                    boolean z4 = (logo == null || (i & 1) == 0) ? false : true;
                    HomeView homeView = this.rQ;
                    if (!z4) {
                        logo = getIcon();
                    }
                    homeView.setIcon(logo);
                }
            } else if (this.rQ != null) {
                removeView(this.rQ);
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    initTitle();
                } else {
                    removeView(this.qi);
                    removeView(this.rT);
                    this.qi = null;
                    this.rT = null;
                }
            }
            if (!(this.qi == null || (i2 & 6) == 0)) {
                z = (this.rJ & 4) != 0;
                if (this.qi.getVisibility() == 0) {
                    View view = this.rT;
                    if (!z3) {
                        i3 = z ? 0 : 4;
                    }
                    view.setVisibility(i3);
                }
                LinearLayout linearLayout = this.qi;
                if (!z3 && z) {
                    z2 = true;
                }
                linearLayout.setEnabled(z2);
            }
            if (!((i2 & 16) == 0 || this.rW == null)) {
                if ((i & 16) != 0) {
                    addView(this.rW);
                } else {
                    removeView(this.rW);
                }
            }
            requestLayout();
        } else {
            invalidate();
        }
        if (this.rQ == null) {
            return;
        }
        if (!this.rQ.isEnabled()) {
            this.rQ.setContentDescription(null);
        } else if ((i & 4) != 0) {
            this.rQ.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_up_description));
        } else {
            this.rQ.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_home_description));
        }
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.rL |= 1;
        if (drawable != null && (((this.rJ & 1) == 0 || getLogo() == null) && this.rQ != null)) {
            this.rQ.setIcon(drawable);
        }
        if (this.sp != null) {
            this.rR.setIcon(this.mIcon.getConstantState().newDrawable(getResources()));
        }
    }

    public void setIcon(int i) {
        setIcon(this.mContext.getResources().getDrawable(i));
    }

    public void setLogo(Drawable drawable) {
        this.rM = drawable;
        this.rL |= 2;
        if (drawable != null && (this.rJ & 1) != 0 && this.rQ != null) {
            this.rQ.setIcon(drawable);
        }
    }

    public void setLogo(int i) {
        setLogo(this.mContext.getResources().getDrawable(i));
    }

    public void setNavigationMode(int i) {
        int i2 = this.rI;
        if (i != i2) {
            switch (i2) {
                case 1:
                    if (this.rV != null) {
                        removeView(this.rV);
                        break;
                    }
                    break;
                case 2:
                    if (this.bj != null && this.sg) {
                        removeView(this.bj);
                        break;
                    }
            }
            switch (i) {
                case 1:
                    if (this.rU == null) {
                        this.rU = new Spinner(this.mContext, null, 16843479);
                        this.rV = (LinearLayout) LayoutInflater.from(this.mContext).inflate(R.layout.action_bar_view_list_nav_layout, null);
                        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                        layoutParams.gravity = 17;
                        this.rV.addView(this.rU, layoutParams);
                    }
                    if (this.rU.getAdapter() != this.sm) {
                        this.rU.setAdapter(this.sm);
                    }
                    this.rU.setOnItemSelectedListener(this.sq);
                    addView(this.rV);
                    break;
                case 2:
                    if (this.bj != null && this.sg) {
                        addView(this.bj);
                        break;
                    }
            }
            this.rI = i;
            requestLayout();
        }
    }

    public void setDropdownAdapter(SpinnerAdapter spinnerAdapter) {
        this.sm = spinnerAdapter;
        if (this.rU != null) {
            this.rU.setAdapter(spinnerAdapter);
        }
    }

    public SpinnerAdapter getDropdownAdapter() {
        return this.sm;
    }

    public void setDropdownSelectedPosition(int i) {
        this.rU.setSelection(i);
    }

    public int getDropdownSelectedPosition() {
        return this.rU.getSelectedItemPosition();
    }

    public View getCustomNavigationView() {
        return this.rW;
    }

    public int getNavigationMode() {
        return this.rI;
    }

    public int getDisplayOptions() {
        return this.rJ;
    }

    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ActionBar.LayoutParams(rF);
    }

    private void initTitle() {
        if (this.rT == null) {
            this.rT = LayoutInflater.from(getContext()).inflate(R.layout.action_bar_title_up, this, false);
            this.rT.setOnClickListener(this.ss);
        }
        addView(this.rT);
        if (this.qi == null) {
            this.qi = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.action_bar_title_item, this, false);
            this.cp = (TextView) this.qi.findViewById(R.id.action_bar_title);
            this.rS = (TextView) this.qi.findViewById(R.id.action_bar_subtitle);
            this.qi.setOnClickListener(this.st);
            if (this.ql != 0) {
                this.cp.setTextAppearance(this.mContext, this.ql);
            }
            if (this.mTitle != null) {
                this.cp.setText(this.mTitle);
            }
            if (this.se != 0) {
                this.rS.setTextAppearance(this.mContext, this.se);
            }
            if (this.rK != null) {
                this.rS.setText(this.rK);
                this.rS.setVisibility(0);
            }
            int i = 4;
            boolean z = true;
            boolean z2 = (this.rJ & 4) != 0;
            boolean z3 = (this.rJ & 2) != 0;
            View view = this.rT;
            if (z3) {
                i = 8;
            } else if (z2) {
                i = 0;
            }
            view.setVisibility(i);
            View view2 = this.rT;
            boolean z4 = z2 && !z3;
            view2.setEnabled(z4);
            LinearLayout linearLayout = this.qi;
            if (!z2 || z3) {
                z = false;
            }
            linearLayout.setEnabled(z);
            bn();
        }
        addView(this.qi);
        post(new Runnable() {
            public void run() {
                if (ActionBarView.this.qi != null) {
                    Rect rect = new Rect();
                    ActionBarView.this.qi.getHitRect(rect);
                    rect.left -= ActionBarView.this.getResources().getDimensionPixelSize(R.dimen.action_bar_horizontal_padding);
                    ActionBarView.this.setTouchDelegate(new TouchDelegate(rect, ActionBarView.this.qi));
                }
            }
        });
        if (this.sp != null || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.rK))) {
            p(false);
        }
    }

    public void setCollapsable(boolean z) {
    }

    public boolean isCollapsed() {
        return this.sh;
    }

    private void bn() {
        int i = (hasEmbeddedTabs() && ActionBarPolicy.get(this.mContext).isTightTitle()) ? 8 : 0;
        if (this.cp != null && this.cp.getVisibility() == 0) {
            this.cp.setVisibility(i);
        }
        if (this.rS != null && this.rS.getVisibility() == 0) {
            this.rS.setVisibility(i);
        }
    }

    private boolean bo() {
        if (this.rW == null || this.rW.getVisibility() != 0) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams = this.rW.getLayoutParams();
        ActionBar.LayoutParams layoutParams2 = layoutParams instanceof ActionBar.LayoutParams ? (ActionBar.LayoutParams) layoutParams : null;
        if (layoutParams2 != null && d(layoutParams2.gravity, ViewUtils.isLayoutRtl(this)) == 8388613) {
            return true;
        }
        return false;
    }

    private boolean bp() {
        return this.si && bo() && ((this.rQ == null || this.rQ.getVisibility() == 8) && !hasEmbeddedTabs());
    }

    private boolean bq() {
        return (this.qi == null || this.qi.getVisibility() == 8 || (this.rJ & 8) == 0) ? false : true;
    }

    private void br() {
        boolean bp = bp();
        ViewGroup viewGroup = (ViewGroup) this.cp.getParent();
        int i = 8388611;
        if (viewGroup instanceof LinearLayout) {
            ((LinearLayout) viewGroup).setGravity((bp ? 1 : 8388611) | 16);
        }
        this.cp.setGravity((bp ? 1 : 8388611) | 16);
        this.cp.setEllipsize(bp ? TruncateAt.MIDDLE : TruncateAt.END);
        if (this.rS != null) {
            TextView textView = this.rS;
            if (bp) {
                i = 1;
            }
            textView.setGravity(i | 16);
            this.rS.setEllipsize(bp ? TruncateAt.MIDDLE : TruncateAt.END);
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = i3;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (!(childAt.getVisibility() == 8 || (childAt == this.mMenuView && this.mMenuView.getChildCount() == 0))) {
                i4++;
            }
            i3++;
        }
        if (i4 == 0) {
            setMeasuredDimension(0, 0);
            this.sh = true;
            return;
        }
        int i5;
        int makeMeasureSpec;
        View view;
        int i6;
        int i7;
        int i8;
        this.sh = false;
        i4 = MeasureSpec.getSize(i);
        int size = this.mContentHeight > 0 ? this.mContentHeight : MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingStart = getPaddingStart();
        int paddingEnd = getPaddingEnd();
        int i9 = size - paddingTop;
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(i9, 1073741824);
        int makeMeasureSpec3 = MeasureSpec.makeMeasureSpec(i9, Integer.MIN_VALUE);
        int i10 = (i4 - paddingStart) - paddingEnd;
        paddingEnd = i10 / 2;
        if (this.sa != null) {
            i10 = measureChildView(this.sa, i10, makeMeasureSpec3, 0);
            paddingStart += this.sa.getMeasuredWidth();
        }
        if (this.sb != null) {
            i10 = measureChildView(this.sb, i10, makeMeasureSpec3, 0);
        }
        HomeView homeView = this.sp != null ? this.rR : this.rQ;
        if (!(this.sa == null || homeView == null)) {
            homeView.setVisibility(8);
        }
        if (homeView == null || homeView.getVisibility() == 8) {
            i5 = paddingEnd;
        } else {
            ViewGroup.LayoutParams layoutParams = homeView.getLayoutParams();
            if (layoutParams.width < 0) {
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE);
            } else {
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
            }
            homeView.measure(makeMeasureSpec, makeMeasureSpec2);
            makeMeasureSpec = homeView.getMeasuredWidth() + homeView.bw();
            i10 = Math.max(0, i10 - makeMeasureSpec);
            i5 = Math.max(0, i10 - makeMeasureSpec);
            paddingStart += makeMeasureSpec;
        }
        if (this.mMenuView != null && this.mMenuView.getParent() == this) {
            i10 = measureChildView(this.mMenuView, i10, makeMeasureSpec3, 0);
            paddingEnd = Math.max(0, paddingEnd - this.mMenuView.getMeasuredWidth());
        }
        if (!(this.rY == null || this.rY.getVisibility() == 8)) {
            i10 = measureChildView(this.rY, i10, makeMeasureSpec3, this.sc * 2);
            paddingEnd = Math.max(0, (paddingEnd - this.rY.getMeasuredWidth()) - (this.sc * 2));
        }
        if (!(this.rZ == null || this.rZ.getVisibility() == 8)) {
            i10 = measureChildView(this.rZ, i10, makeMeasureSpec3, 0);
            paddingEnd = Math.max(0, paddingEnd - this.rZ.getMeasuredWidth());
        }
        boolean bq = bq();
        if (bq) {
            br();
        }
        if (this.sp != null) {
            view = this.sp;
        } else if ((this.rJ & 16) == 0 || this.rW == null) {
            view = null;
        } else {
            view = this.rW;
        }
        if ((this.sa == null && this.sb == null) || view == null) {
            makeMeasureSpec3 = 8;
        } else {
            makeMeasureSpec3 = 8;
            view.setVisibility(8);
        }
        if (view == null || view.getVisibility() == r14) {
            i6 = childCount;
            i7 = size;
            i8 = paddingTop;
        } else {
            ActionBar.LayoutParams layoutParams2;
            int i11;
            ViewGroup.LayoutParams generateLayoutParams = generateLayoutParams(view.getLayoutParams());
            if (generateLayoutParams instanceof ActionBar.LayoutParams) {
                layoutParams2 = (ActionBar.LayoutParams) generateLayoutParams;
            } else {
                layoutParams2 = null;
            }
            if (layoutParams2 != null) {
                i7 = size;
                i11 = layoutParams2.rightMargin + layoutParams2.leftMargin;
                size = layoutParams2.bottomMargin + layoutParams2.topMargin;
            } else {
                i7 = size;
                size = 0;
                i11 = 0;
            }
            i8 = paddingTop;
            int i12 = (this.mContentHeight > 0 && generateLayoutParams.height != -2) ? 1073741824 : Integer.MIN_VALUE;
            if (generateLayoutParams.height >= 0) {
                i9 = Math.min(generateLayoutParams.height, i9);
            }
            paddingTop = Math.max(0, i9 - size);
            size = generateLayoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            i6 = childCount;
            i9 = Math.max(0, (generateLayoutParams.width >= 0 ? Math.min(generateLayoutParams.width, i10) : i10) - i11);
            if (((layoutParams2 != null ? layoutParams2.gravity : rF) & 8388615) == 1 && generateLayoutParams.width == -1) {
                i9 = Math.min(i5, paddingEnd) * 2;
            }
            view.measure(MeasureSpec.makeMeasureSpec(i9, size), MeasureSpec.makeMeasureSpec(paddingTop, i12));
            i10 -= i11 + view.getMeasuredWidth();
        }
        if (this.sp == null && bq) {
            childCount = MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
            i3 = measureChildView(this.rT, i10, childCount, 0);
            paddingStart += this.rT.getMeasuredWidth();
            if (bp()) {
                this.qi.measure(MeasureSpec.makeMeasureSpec(Math.max(0, i4 - (paddingStart * 2)), Integer.MIN_VALUE), childCount);
                i10 = i3 - this.qi.getMeasuredWidth();
            } else {
                i10 = measureChildView(this.qi, i3, childCount, 0);
            }
        }
        if (this.sp == null) {
            switch (this.rI) {
                case 1:
                    if (this.rV != null) {
                        i3 = 0;
                        this.rV.measure(MeasureSpec.makeMeasureSpec(Math.max(0, i10 - (bq ? this.sd * 2 : this.sd)), Integer.MIN_VALUE), makeMeasureSpec2);
                        break;
                    }
                case 2:
                    if (this.bj != null) {
                        this.bj.measure(MeasureSpec.makeMeasureSpec(Math.max(0, i10 - (bq ? this.sd * 2 : this.sd)), this.mContext.getResources().getInteger(R.integer.action_bar_tab_layout_weight) == 0 ? Integer.MIN_VALUE : 1073741824), makeMeasureSpec2);
                    }
                    i3 = 0;
                    break;
            }
        }
        i3 = 0;
        if (this.mContentHeight <= 0) {
            childCount = i3;
            while (true) {
                makeMeasureSpec = i6;
                if (i3 < makeMeasureSpec) {
                    i5 = getChildAt(i3).getMeasuredHeight() + i8;
                    if (i5 > childCount) {
                        childCount = i5;
                    }
                    i3++;
                    i6 = makeMeasureSpec;
                } else {
                    setMeasuredDimension(i4, childCount);
                }
            }
        } else {
            setMeasuredDimension(i4, i7);
        }
        if (!(this.rX == null || this.rX.getVisibility() == 8)) {
            this.rX.measure(MeasureSpec.makeMeasureSpec(i4 - (this.sc * 2), 1073741824), MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (paddingTop2 > 0) {
            int bw;
            int f;
            int measuredWidth;
            int i5;
            ViewGroup.LayoutParams layoutParams;
            int measuredWidth2;
            View view;
            View view2 = this.sp != null ? this.rR : this.rQ;
            if (view2 != null && view2.getVisibility() != 8) {
                bw = view2.bw();
                paddingStart += positionChild(view2, paddingStart + bw, paddingTop, paddingTop2) + bw;
            } else if (this.sa != null) {
                paddingStart += positionChild(this.sa, paddingStart, paddingTop, paddingTop2);
            }
            ActionBar.LayoutParams layoutParams2 = null;
            if (this.sp == null) {
                boolean bq = bq();
                if (bq) {
                    int positionChild = paddingStart + positionChild(this.rT, paddingStart, paddingTop, paddingTop2);
                    if (bp()) {
                        paddingStart = f(this.cp);
                        if (!(this.rS == null || this.rS.getVisibility() == 8)) {
                            f = f(this.rS);
                            if (paddingStart > f) {
                                paddingStart = f;
                            }
                        }
                        bw = paddingStart;
                        measuredWidth = bw + this.qi.getMeasuredWidth();
                        paddingStart = this.qi.getMeasuredHeight();
                        i5 = paddingTop + ((paddingTop2 - paddingStart) / 2);
                        ViewUtils.layoutChildView(this, this.qi, bw, i5, measuredWidth, i5 + paddingStart);
                        paddingStart = positionChild;
                    } else {
                        paddingStart = positionChild(this.qi, positionChild, paddingTop, paddingTop2) + positionChild;
                    }
                }
                switch (this.rI) {
                    case 1:
                        if (this.rV != null) {
                            if (bq) {
                                paddingStart += this.sd;
                            }
                            paddingStart += positionChild(this.rV, paddingStart, paddingTop, paddingTop2) + this.sd;
                            break;
                        }
                        break;
                    case 2:
                        if (this.bj != null) {
                            if (bq) {
                                paddingStart += this.sd;
                            }
                            f = this.bj.getMeasuredWidth();
                            bw = this.bj.getMeasuredHeight();
                            i5 = (getWidth() - f) / 2;
                            if (paddingStart > i5) {
                                i5 = paddingStart;
                            }
                            f += i5;
                            if (this.rW != null) {
                                ActionBar.LayoutParams layoutParams3;
                                layoutParams = this.rW.getLayoutParams();
                                if (layoutParams instanceof ActionBar.LayoutParams) {
                                    layoutParams3 = (ActionBar.LayoutParams) layoutParams;
                                } else {
                                    layoutParams3 = null;
                                }
                                measuredWidth2 = this.rW.getMeasuredWidth();
                                measuredWidth = layoutParams3 != null ? measuredWidth2 + (layoutParams3.leftMargin + layoutParams3.rightMargin) : measuredWidth2;
                            } else {
                                measuredWidth = 0;
                            }
                            measuredWidth2 = (getWidth() - getPaddingEnd()) - measuredWidth;
                            if (f > measuredWidth2) {
                                if (measuredWidth2 < (f + i5) / 2) {
                                    i5 = paddingStart;
                                }
                                paddingStart = measuredWidth2;
                            } else {
                                paddingStart = f;
                            }
                            if (isLayoutRtl) {
                                f = getWidth() - paddingStart;
                            } else {
                                f = i5;
                            }
                            if (isLayoutRtl) {
                                i5 = getWidth() - i5;
                            } else {
                                i5 = paddingStart;
                            }
                            this.bj.layout(f, paddingTop, i5, bw + paddingTop);
                            break;
                        }
                        break;
                }
            }
            f = (i3 - i) - getPaddingEnd();
            if (this.mMenuView != null && this.mMenuView.getParent() == this) {
                positionChildInverse(this.mMenuView, f, paddingTop, paddingTop2);
                f -= this.mMenuView.getMeasuredWidth();
            }
            if (this.sb != null) {
                positionChildInverse(this.sb, f, paddingTop, paddingTop2);
                f -= this.sb.getMeasuredWidth();
            }
            if (!(this.rY == null || this.rY.getVisibility() == 8)) {
                positionChildInverse(this.rY, f - this.sc, paddingTop, paddingTop2);
                f -= this.rY.getMeasuredWidth() - (this.sc * 2);
            }
            if (!(this.rZ == null || this.rZ.getVisibility() == 8)) {
                positionChildInverse(this.rZ, f, paddingTop, paddingTop2);
                f -= this.rZ.getMeasuredWidth();
            }
            if (this.sp != null) {
                view = this.sp;
            } else if ((this.rJ & 16) == 0 || this.rW == null) {
                view = null;
            } else {
                view = this.rW;
            }
            if (!(view == null || view.getVisibility() == 8)) {
                int width;
                layoutParams = view.getLayoutParams();
                if (layoutParams instanceof ActionBar.LayoutParams) {
                    layoutParams2 = (ActionBar.LayoutParams) layoutParams;
                }
                measuredWidth = layoutParams2 != null ? layoutParams2.gravity : rF;
                measuredWidth2 = view.getMeasuredWidth();
                if (layoutParams2 != null) {
                    paddingStart += layoutParams2.getMarginStart();
                    f -= layoutParams2.getMarginEnd();
                    paddingTop = layoutParams2.topMargin;
                    paddingTop2 = layoutParams2.bottomMargin;
                } else {
                    paddingTop = 0;
                    paddingTop2 = 0;
                }
                int i6 = 8388615 & measuredWidth;
                if (i6 == 1) {
                    width = (getWidth() - measuredWidth2) / 2;
                    if (width < paddingStart) {
                        i6 = 8388611;
                    } else if (width + measuredWidth2 > f) {
                        i6 = 8388613;
                    }
                } else if (measuredWidth == -1) {
                    i6 = 8388611;
                }
                width = getPaddingStart();
                i6 = d(i6, isLayoutRtl);
                if (i6 == 1) {
                    paddingStart = (getWidth() - measuredWidth2) / 2;
                } else if (i6 != 8388611) {
                    if (i6 != 8388613) {
                        paddingStart = width;
                    } else {
                        paddingStart = f - measuredWidth2;
                    }
                }
                f = measuredWidth & BaiduSceneResult.STREET_VIEW;
                if (measuredWidth == -1) {
                    f = 16;
                }
                if (f == 16) {
                    width = (((getHeight() - getPaddingBottom()) - getPaddingTop()) - view.getMeasuredHeight()) / 2;
                } else if (f == 48) {
                    width = getPaddingTop() + paddingTop;
                } else if (f != 80) {
                    width = 0;
                } else {
                    width = ((getHeight() - getPaddingBottom()) - view.getMeasuredHeight()) - paddingTop2;
                }
                f = view.getMeasuredWidth();
                if (isLayoutRtl) {
                    i5 = (getWidth() - paddingStart) - f;
                } else {
                    i5 = paddingStart;
                }
                view.layout(i5, width, isLayoutRtl ? getWidth() - paddingStart : f + paddingStart, view.getMeasuredHeight() + width);
            }
            if (this.rX != null) {
                this.rX.bringToFront();
                paddingStart = this.rX.getMeasuredHeight() / 2;
                this.rX.layout(this.sc, -paddingStart, this.sc + this.rX.getMeasuredWidth(), paddingStart);
            }
        }
    }

    private int f(View view) {
        int width = (getWidth() - view.getMeasuredWidth()) / 2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i = 0;
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            i = 0 + ((LinearLayout.LayoutParams) layoutParams).getMarginStart();
        }
        return width - i;
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionBar.LayoutParams(getContext(), attributeSet);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        return layoutParams;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        if (!(this.so == null || this.so.sx == null)) {
            savedState.sC = this.so.sx.getItemId();
        }
        savedState.qz = isOverflowMenuShowing();
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!(savedState.sC == 0 || this.so == null || this.sj == null)) {
            MenuItem findItem = this.sj.findItem(savedState.sC);
            if (findItem != null) {
                findItem.expandActionView();
            }
        }
        if (savedState.qz) {
            postShowOverflowMenu();
        }
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (this.rQ != null) {
            this.rQ.a(drawable);
            return;
        }
        this.rO = drawable;
        this.rP = 0;
    }

    public void setHomeAsUpIndicator(int i) {
        if (this.rQ != null) {
            this.rQ.p(i);
            return;
        }
        this.rO = null;
        this.rP = i;
    }

    private void p(boolean z) {
        if (this.qi != null) {
            this.qi.setVisibility(z ? 0 : 8);
        }
        if (this.rT == null) {
            return;
        }
        if (z) {
            int i = 4;
            Object obj = 1;
            Object obj2 = (this.rJ & 4) != 0 ? 1 : null;
            if ((this.rJ & 2) == 0) {
                obj = null;
            }
            View view = this.rT;
            if (obj != null) {
                i = 8;
            } else if (obj2 != null) {
                i = 0;
            }
            view.setVisibility(i);
            return;
        }
        this.rT.setVisibility(8);
    }

    protected ActionMenuPresenter createActionMenuPresenter(MenuPresenter.Callback callback) {
        ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.mContext, R.layout.action_menu_layout, R.layout.action_menu_item_layout, R.layout.action_bar_expanded_menu_layout, R.layout.action_bar_list_menu_item_layout);
        actionMenuPresenter.setCallback(callback);
        actionMenuPresenter.setId(R.id.action_menu_presenter);
        return actionMenuPresenter;
    }

    protected ExpandedActionViewMenuPresenter createExpandedActionViewMenuPresenter() {
        return new ExpandedActionViewMenuPresenter(this, null);
    }

    public void onWindowShow() {
        this.mSplitView.onWindowShow();
    }

    public void onWindowHide() {
        this.mSplitView.onWindowHide();
    }

    public void setProgressBarVisibility(boolean z) {
        int i;
        if (z) {
            i = -1;
        } else {
            i = -2;
        }
        o(i);
    }

    public void setProgressBarIndeterminateVisibility(boolean z) {
        int i;
        if (z) {
            i = -1;
        } else {
            i = -2;
        }
        o(i);
    }

    public void setProgressBarIndeterminate(boolean z) {
        int i;
        if (z) {
            i = -3;
        } else {
            i = -4;
        }
        o(i);
    }

    public void setProgress(int i) {
        o(0 + i);
    }

    private void o(int i) {
        ProgressBar bs = bs();
        ProgressBar bt = bt();
        if (i == -1) {
            if (bt != null) {
                i = bt.getProgress();
                if (bt.isIndeterminate() || i < 10000) {
                    i = 0;
                } else {
                    i = 4;
                }
                bt.setVisibility(i);
            }
            if (bs != null) {
                bs.setVisibility(0);
            }
        } else if (i == -2) {
            if (bt != null) {
                bt.setVisibility(8);
            }
            if (bs != null) {
                bs.setVisibility(8);
            }
        } else if (i == -3) {
            bt.setIndeterminate(true);
        } else if (i == -4) {
            bt.setIndeterminate(false);
        } else if (i >= 0 && i <= 10000) {
            bt.setProgress(i + 0);
            if (i < 10000) {
                a(bt, bs);
            } else {
                b(bt, bs);
            }
        }
    }

    private void a(ProgressBar progressBar, ProgressBar progressBar2) {
        if (progressBar2 != null && progressBar2.getVisibility() == 4) {
            progressBar2.setVisibility(0);
        }
        if (progressBar != null && progressBar.getProgress() < 10000) {
            progressBar.setVisibility(0);
        }
    }

    private void b(ProgressBar progressBar, ProgressBar progressBar2) {
        if (progressBar2 != null && progressBar2.getVisibility() == 0) {
            progressBar2.setVisibility(4);
        }
        if (progressBar != null && progressBar.getVisibility() == 0) {
            progressBar.setVisibility(4);
        }
    }

    private ProgressBar bs() {
        ProgressBar progressBar = this.rY;
        if (progressBar != null) {
            progressBar.setVisibility(4);
        }
        return progressBar;
    }

    private ProgressBar bt() {
        ProgressBar progressBar = this.rX;
        if (progressBar != null) {
            progressBar.setVisibility(4);
        }
        return progressBar;
    }

    private Drawable getIcon() {
        if ((this.rL & 1) != 1) {
            if (this.mContext instanceof Activity) {
                try {
                    this.mIcon = this.mContext.getPackageManager().getActivityIcon(((Activity) this.mContext).getComponentName());
                } catch (Throwable e) {
                    Log.e(TAG, "Activity component name not found!", e);
                }
            }
            if (this.mIcon == null) {
                this.mIcon = this.mContext.getApplicationInfo().loadIcon(this.mContext.getPackageManager());
            }
            this.rL |= 1;
        }
        return this.mIcon;
    }

    private Drawable getLogo() {
        if ((this.rL & 2) != 2) {
            if (VERSION.SDK_INT >= 9) {
                if (this.mContext instanceof Activity) {
                    try {
                        this.rM = this.mContext.getPackageManager().getActivityLogo(((Activity) this.mContext).getComponentName());
                    } catch (Throwable e) {
                        Log.e(TAG, "Activity component name not found!", e);
                    }
                }
                if (this.rM == null) {
                    this.rM = this.mContext.getApplicationInfo().loadLogo(this.mContext.getPackageManager());
                }
            }
            this.rL |= 2;
        }
        return this.rM;
    }

    private void bu() {
        if (this.rQ == null) {
            this.rQ = (HomeView) LayoutInflater.from(this.mContext).inflate(this.rN, this, false);
            this.rQ.setOnClickListener(this.ss);
            this.rQ.setClickable(true);
            this.rQ.setFocusable(true);
            if (this.rP != 0) {
                this.rQ.p(this.rP);
                this.rP = 0;
            }
            if (this.rO != null) {
                this.rQ.a(this.rO);
                this.rO = null;
            }
            addView(this.rQ);
        }
    }

    private void bv() {
        if (this.rR == null) {
            this.rR = (HomeView) LayoutInflater.from(this.mContext).inflate(this.rN, this, false);
            this.rR.q(true);
            this.rR.setOnClickListener(this.sr);
        }
    }

    /* JADX WARNING: Missing block: B:4:0x0012, code:
            if (r5 != false) goto L_0x0014;
     */
    /* JADX WARNING: Missing block: B:9:0x001c, code:
            if (r5 != false) goto L_0x0017;
     */
    /* JADX WARNING: Missing block: B:12:?, code:
            return 8388611;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int d(int i, boolean z) {
        i &= 8388615;
        if ((nexEngine.ExportHEVCHighTierLevel61 & i) != 0) {
            return i;
        }
        if (i != 3) {
            if (i != 5) {
                return i;
            }
        }
        return 8388613;
    }
}
