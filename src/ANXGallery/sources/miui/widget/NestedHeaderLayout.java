package miui.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import miui.R;

@TargetApi(21)
public class NestedHeaderLayout extends NestedScrollingLayout {
    private int Vf;
    private float Vg;
    private View oa;

    public NestedHeaderLayout(Context context) {
        this(context, null);
    }

    public NestedHeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedHeaderLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NestedHeaderLayout);
        this.Vf = obtainStyledAttributes.getResourceId(R.styleable.NestedHeaderLayout_headerView, R.id.header_view);
        this.Vg = obtainStyledAttributes.getDimension(R.styleable.NestedHeaderLayout_rangeOffset, 0.0f);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.oa = findViewById(this.Vf);
        if (this.oa == null) {
            throw new IllegalArgumentException("The headerView attribute is required and must refer to a valid child.");
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setScrollingRange((int) (((float) (-this.oa.getMeasuredHeight())) + this.Vg), 0);
    }

    protected void onScrollingProgressUpdated(int i) {
        super.onScrollingProgressUpdated(i);
        this.oa.offsetTopAndBottom(i - this.oa.getTop());
        this.mScrollableView.offsetTopAndBottom((i + this.oa.getMeasuredHeight()) - this.mScrollableView.getTop());
    }
}
