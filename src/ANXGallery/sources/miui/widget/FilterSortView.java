package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;

public class FilterSortView extends LinearLayout {

    public static class TabView extends LinearLayout {
        private boolean SF;
        private FilterSortView SJ;
        private boolean Sz;
        private ImageView sE;
        private TextView vp;

        public TabView(Context context) {
            this(context, null);
        }

        public TabView(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public TabView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            LayoutInflater.from(context).inflate(R.layout.filter_sort_tab_view, this, true);
            this.vp = (TextView) findViewById(16908308);
            this.sE = (ImageView) findViewById(R.id.arrow);
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FilterSortView, i, 0);
                CharSequence string = obtainStyledAttributes.getString(R.styleable.FilterSortView_android_text);
                boolean z = obtainStyledAttributes.getBoolean(R.styleable.FilterSortView_descending, true);
                obtainStyledAttributes.recycle();
                a(string, z);
            }
        }

        private void a(CharSequence charSequence, boolean z) {
            setGravity(17);
            if (getBackground() == null) {
                setBackground(getResources().getDrawable(R.drawable.filter_sort_tab_view_bg_light));
            }
            this.vp.setText(charSequence);
            w(z);
        }

        private void v(boolean z) {
            this.SJ = (FilterSortView) getParent();
            if (z && this.SJ != null) {
                int childCount = this.SJ.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    TabView tabView = (TabView) this.SJ.getChildAt(i);
                    if (tabView != this && tabView.Sz) {
                        tabView.v(false);
                    }
                }
            }
            this.Sz = z;
            this.vp.setSelected(z);
            this.sE.setSelected(z);
        }

        private void w(boolean z) {
            this.SF = z;
            if (z) {
                this.sE.setRotationX(0.0f);
            } else {
                this.sE.setRotationX(180.0f);
            }
        }

        public boolean isDescending() {
            return this.SF;
        }

        public void setOnClickListener(final OnClickListener onClickListener) {
            super.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (TabView.this.Sz) {
                        TabView.this.w(true ^ TabView.this.SF);
                    } else {
                        TabView.this.v(true);
                    }
                    onClickListener.onClick(view);
                }
            });
        }
    }

    public FilterSortView(Context context) {
        super(context);
    }

    public FilterSortView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FilterSortView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TabView addTab(CharSequence charSequence) {
        return addTab(charSequence, true);
    }

    public TabView addTab(CharSequence charSequence, boolean z) {
        View tabView = new TabView(getContext());
        tabView.setBackground(getResources().getDrawable(R.drawable.filter_sort_tab_view_bg_light));
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.weight = 1.0f;
        addView(tabView, layoutParams);
        tabView.a(charSequence, z);
        return tabView;
    }

    public void setFilteredTab(TabView tabView) {
        tabView.v(true);
    }
}
