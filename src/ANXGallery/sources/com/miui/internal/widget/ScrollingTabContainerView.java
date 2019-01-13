package com.miui.internal.widget;

import android.app.ActionBar.Tab;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.ActionBarPolicy;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;

public class ScrollingTabContainerView extends HorizontalScrollView implements OnItemClickListener, FragmentViewPagerChangeListener {
    private int mContentHeight;
    private final LayoutInflater mInflater;
    private Paint rb = new Paint();
    Runnable uZ;
    int va;
    int vb;
    private TabClickListener vc;
    private LinearLayout vd;
    private Spinner ve;
    private boolean vf;
    private int vg;
    private Bitmap vh;
    private boolean vi;
    private float vj;
    private int vk = -1;
    private boolean vl;

    private class TabAdapter extends BaseAdapter {
        private TabAdapter() {
        }

        /* synthetic */ TabAdapter(ScrollingTabContainerView scrollingTabContainerView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public int getCount() {
            return ScrollingTabContainerView.this.vd.getChildCount();
        }

        public Object getItem(int i) {
            return ((TabView) ScrollingTabContainerView.this.vd.getChildAt(i)).getTab();
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.b((Tab) getItem(i), true);
            }
            ((TabView) view).bindTab((Tab) getItem(i));
            return view;
        }
    }

    private class TabClickListener implements OnClickListener {
        private TabClickListener() {
        }

        /* synthetic */ TabClickListener(ScrollingTabContainerView scrollingTabContainerView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onClick(View view) {
            ((TabView) view).getTab().select();
            int childCount = ScrollingTabContainerView.this.vd.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.vd.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    public static class TabView extends LinearLayout {
        private View bJ;
        private ImageView nt;
        private Tab vo;
        private TextView vp;
        private ImageView vq;
        private ScrollingTabContainerView vr;

        public TabView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        void b(ScrollingTabContainerView scrollingTabContainerView, Tab tab, boolean z) {
            this.vr = scrollingTabContainerView;
            this.vo = tab;
            if (z) {
                setGravity(8388627);
            }
            update();
        }

        public void bindTab(Tab tab) {
            this.vo = tab;
            update();
        }

        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            i = this.vr != null ? this.vr.va : 0;
            if (i > 0 && getMeasuredWidth() > i) {
                super.onMeasure(MeasureSpec.makeMeasureSpec(i, 1073741824), i2);
            }
        }

        public void update() {
            Tab tab = this.vo;
            View customView = tab.getCustomView();
            if (customView != null) {
                TabView parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        parent.removeView(customView);
                    }
                    addView(customView);
                }
                this.bJ = customView;
                if (this.vp != null) {
                    this.vp.setVisibility(8);
                }
                if (this.nt != null) {
                    this.nt.setVisibility(8);
                    this.nt.setImageDrawable(null);
                    return;
                }
                return;
            }
            if (this.bJ != null) {
                removeView(this.bJ);
                this.bJ = null;
            }
            Context context = getContext();
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (icon != null) {
                if (this.nt == null) {
                    View imageView = new ImageView(context);
                    LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    imageView.setLayoutParams(layoutParams);
                    addView(imageView, 0);
                    this.nt = imageView;
                }
                this.nt.setImageDrawable(icon);
                this.nt.setVisibility(0);
            } else if (this.nt != null) {
                this.nt.setVisibility(8);
                this.nt.setImageDrawable(null);
            }
            if (text != null) {
                if (this.vp == null) {
                    View scrollingTabTextView = new ScrollingTabTextView(context, null, 16843509);
                    scrollingTabTextView.setEllipsize(TruncateAt.END);
                    LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    scrollingTabTextView.setLayoutParams(layoutParams2);
                    addView(scrollingTabTextView);
                    this.vp = scrollingTabTextView;
                }
                this.vp.setText(text);
                this.vp.setVisibility(0);
                if (this.vq == null) {
                    View imageView2 = new ImageView(context);
                    imageView2.setImageDrawable(AttributeResolver.resolveDrawable(context, R.attr.actionBarTabBadgeIcon));
                    imageView2.setVisibility(8);
                    LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 48;
                    Drawable background = getBackground();
                    if (background != null) {
                        int intrinsicHeight = background.getIntrinsicHeight();
                        int lineHeight = this.vp.getLineHeight();
                        if (intrinsicHeight > lineHeight) {
                            layoutParams3.topMargin = (intrinsicHeight - lineHeight) / 2;
                        }
                    }
                    imageView2.setLayoutParams(layoutParams3);
                    addView(imageView2);
                    this.vq = imageView2;
                }
            } else if (this.vp != null) {
                this.vp.setVisibility(8);
                this.vp.setText(null);
            }
            if (this.nt != null) {
                this.nt.setContentDescription(tab.getContentDescription());
            }
        }

        public Tab getTab() {
            return this.vo;
        }

        public TextView getTextView() {
            return this.vp;
        }
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        this.mInflater = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, miui.R.styleable.ActionBar, 16843470, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(miui.R.styleable.ActionBar_tabIndicator);
        this.vi = obtainStyledAttributes.getBoolean(miui.R.styleable.ActionBar_translucentTabIndicator, true);
        this.vh = e(drawable);
        obtainStyledAttributes.recycle();
        if (this.vi) {
            this.rb.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        }
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.vb = actionBarPolicy.getStackedTabMaxWidth();
        this.vd = (LinearLayout) this.mInflater.inflate(R.layout.action_bar_tabbar, this, false);
        addView(this.vd, new FrameLayout.LayoutParams(-2, -1));
    }

    public void setEmbeded(boolean z) {
        this.vl = z;
        setHorizontalFadingEdgeEnabled(z);
    }

    private Bitmap e(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Bitmap createBitmap;
        if (this.vi) {
            createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ALPHA_8);
        } else {
            createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.vh != null) {
            canvas.drawBitmap(this.vh, this.vj, (float) (getHeight() - this.vh.getHeight()), this.rb);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.vd.getChildAt(this.vg) != null) {
            setTabIndicatorPosition(this.vg);
        }
    }

    public void onMeasure(int i, int i2) {
        i2 = MeasureSpec.getMode(i);
        int i3 = 1;
        boolean z = i2 == 1073741824;
        setFillViewport(z);
        int childCount = this.vd.getChildCount();
        if (childCount <= 1 || !(i2 == 1073741824 || i2 == Integer.MIN_VALUE)) {
            this.va = -1;
        } else {
            if (childCount > 2) {
                this.va = (int) (((float) MeasureSpec.getSize(i)) * 0.4f);
            } else {
                this.va = (int) (((float) MeasureSpec.getSize(i)) * 0.6f);
            }
            this.va = Math.min(this.va, this.vb);
        }
        i2 = MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
        if (z || !this.vf) {
            i3 = 0;
        }
        if (i3 != 0) {
            this.vd.measure(0, i2);
            if (this.vd.getMeasuredWidth() > MeasureSpec.getSize(i)) {
                bN();
            } else {
                bO();
            }
        } else {
            bO();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, i2);
        i = getMeasuredWidth();
        if (z && measuredWidth != i) {
            setTabSelected(this.vg);
        }
    }

    public float getTabIndicatorPosition() {
        return this.vj;
    }

    public void setTabIndicatorPosition(int i) {
        setTabIndicatorPosition(i, 0.0f);
    }

    public void setTabIndicatorPosition(int i, float f) {
        if (this.vh != null) {
            float width;
            View childAt = this.vd.getChildAt(i);
            View childAt2 = this.vd.getChildAt(i + 1);
            if (childAt2 == null) {
                width = (float) childAt.getWidth();
            } else {
                width = ((float) (childAt.getWidth() + childAt2.getWidth())) / 2.0f;
            }
            this.vj = ((float) (childAt.getLeft() + ((childAt.getWidth() - this.vh.getWidth()) / 2))) + (width * f);
            invalidate();
        }
    }

    private boolean isCollapsed() {
        return this.ve != null && this.ve.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.vf = z;
    }

    private void bN() {
        if (!isCollapsed()) {
            if (this.ve == null) {
                this.ve = bP();
            }
            removeView(this.vd);
            addView(this.ve, new LayoutParams(-2, -1));
            if (this.ve.getAdapter() == null) {
                this.ve.setAdapter(new TabAdapter(this, null));
            }
            if (this.uZ != null) {
                removeCallbacks(this.uZ);
                this.uZ = null;
            }
            this.ve.setSelection(this.vg);
        }
    }

    private boolean bO() {
        if (!isCollapsed()) {
            return false;
        }
        removeView(this.ve);
        addView(this.vd, new LayoutParams(-2, -1));
        setTabSelected(this.ve.getSelectedItemPosition());
        return false;
    }

    public void setTabSelected(int i) {
        this.vg = i;
        int childCount = this.vd.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.vd.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i);
            }
            i2++;
        }
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
        requestLayout();
    }

    private Spinner bP() {
        Spinner spinner = new Spinner(getContext(), null, 16843479);
        spinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        return spinner;
    }

    protected void onConfigurationChanged(Configuration configuration) {
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(getContext());
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.vb = actionBarPolicy.getStackedTabMaxWidth();
    }

    public void animateToTab(int i) {
        final View childAt = this.vd.getChildAt(i);
        if (this.uZ != null) {
            removeCallbacks(this.uZ);
        }
        this.uZ = new Runnable() {
            public void run() {
                int left = childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2);
                if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                    ScrollingTabContainerView.this.smoothScrollTo(left, 0);
                } else {
                    ScrollingTabContainerView.this.scrollTo(left, 0);
                }
                ScrollingTabContainerView.this.uZ = null;
            }
        };
        post(this.uZ);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.uZ != null) {
            post(this.uZ);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.uZ != null) {
            removeCallbacks(this.uZ);
        }
    }

    private TabView b(Tab tab, boolean z) {
        TabView tabView = (TabView) this.mInflater.inflate(R.layout.action_bar_tab, this.vd, false);
        tabView.b(this, tab, z);
        if (z) {
            tabView.setBackground(null);
            tabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.mContentHeight));
        } else {
            tabView.setFocusable(true);
            if (this.vc == null) {
                this.vc = new TabClickListener(this, null);
            }
            tabView.setOnClickListener(this.vc);
        }
        return tabView;
    }

    public void addTab(Tab tab, boolean z) {
        View b = b(tab, false);
        this.vd.addView(b);
        if (this.ve != null) {
            ((TabAdapter) this.ve.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            b.setSelected(true);
            this.vk = this.vd.getChildCount() - 1;
        }
        if (this.vf) {
            requestLayout();
        }
    }

    public void addTab(Tab tab, int i, boolean z) {
        View b = b(tab, false);
        this.vd.addView(b, i);
        if (this.ve != null) {
            ((TabAdapter) this.ve.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            b.setSelected(true);
            this.vk = this.vd.getChildCount() - 1;
        }
        if (this.vf) {
            requestLayout();
        }
    }

    public void updateTab(int i) {
        ((TabView) this.vd.getChildAt(i)).update();
        if (this.ve != null) {
            ((TabAdapter) this.ve.getAdapter()).notifyDataSetChanged();
        }
        if (this.vf) {
            requestLayout();
        }
    }

    public void setBadgeVisibility(int i, boolean z) {
        if (i <= this.vd.getChildCount() - 1) {
            ImageView a = ((TabView) this.vd.getChildAt(i)).vq;
            if (a != null) {
                if (z) {
                    a.setVisibility(0);
                } else {
                    a.setVisibility(8);
                }
            }
        }
    }

    public void setTextAppearance(int i, int i2) {
        if (i >= 0 && i <= this.vd.getChildCount() - 1) {
            TextView b = ((TabView) this.vd.getChildAt(i)).vp;
            if (b != null) {
                b.setTextAppearance(b.getContext(), i2);
            }
        }
    }

    public void removeTabAt(int i) {
        this.vd.removeViewAt(i);
        if (this.ve != null) {
            ((TabAdapter) this.ve.getAdapter()).notifyDataSetChanged();
        }
        if (this.vf) {
            requestLayout();
        }
    }

    public void removeAllTabs() {
        this.vd.removeAllViews();
        if (this.ve != null) {
            ((TabAdapter) this.ve.getAdapter()).notifyDataSetChanged();
        }
        if (this.vf) {
            requestLayout();
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ((TabView) view).getTab().select();
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        setTabIndicatorPosition(i, f);
    }

    public void onPageSelected(int i) {
        TabView tabView = (TabView) this.vd.getChildAt(i);
        if (tabView != null) {
            tabView.sendAccessibilityEvent(4);
        }
        setTabIndicatorPosition(i);
        if (this.vl && this.vk != -1) {
            boolean z = true;
            if (Math.abs(this.vk - i) == 1) {
                ScrollingTabTextView scrollingTabTextView = (ScrollingTabTextView) ((TabView) this.vd.getChildAt(this.vk)).getTextView();
                ScrollingTabTextView scrollingTabTextView2 = (ScrollingTabTextView) tabView.getTextView();
                if (!(scrollingTabTextView == null || scrollingTabTextView2 == null)) {
                    if (ViewUtils.isLayoutRtl(this)) {
                    }
                    z = false;
                    scrollingTabTextView.startScrollAnimation(z);
                    scrollingTabTextView2.startScrollAnimation(z);
                }
            }
        }
        this.vk = i;
    }

    public void onPageScrollStateChanged(int i) {
    }
}
