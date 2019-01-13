package miui.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Scroller;
import miui.R;
import miui.util.Log;

@TargetApi(21)
public class NestedScrollingLayout extends FrameLayout {
    private static final String TAG = "NestedScrollingLayout";
    private static final int Vh = 300;
    private int Vi;
    private int Vj;
    private int Vk;
    private int Vl;
    private boolean Vm;
    protected View mScrollableView;
    private Scroller wp;

    public NestedScrollingLayout(Context context) {
        this(context, null);
    }

    public NestedScrollingLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollingLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.wp = new Scroller(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NestedScrollingLayout);
        this.Vi = obtainStyledAttributes.getResourceId(R.styleable.NestedScrollingLayout_scrollableView, 16908298);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mScrollableView = findViewById(this.Vi);
        if (this.mScrollableView != null) {
            this.mScrollableView.setNestedScrollingEnabled(true);
            return;
        }
        throw new IllegalArgumentException("The scrollableView attribute is required and must refer to a valid child.");
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        fc();
    }

    public void setScrollingRange(int i, int i2) {
        if (i > i2) {
            Log.w(TAG, "wrong scrolling range: [%d, %d], making from=to");
            i = i2;
        }
        this.Vk = i;
        this.Vl = i2;
        if (this.Vj < this.Vk) {
            this.Vj = this.Vk;
            fc();
        }
        if (this.Vj > this.Vl) {
            this.Vj = this.Vl;
            fc();
        }
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(view, view2, i);
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        super.onNestedPreScroll(view, i, i2, iArr);
        int max = Math.max(this.Vk, Math.min(this.Vl, this.Vj - i2));
        iArr[1] = this.Vj - max;
        this.Vj = max;
        fc();
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2 = z && this.Vj < this.Vl && this.Vj > this.Vk;
        if (z2) {
            as(f2 > 0.0f ? this.Vk : this.Vl);
        }
        this.Vm = z2;
        return z2;
    }

    public void onStopNestedScroll(View view) {
        super.onStopNestedScroll(view);
        if (!this.Vm) {
            as(this.Vj > (this.Vk + this.Vl) / 2 ? this.Vl : this.Vk);
        }
        this.Vm = false;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.wp.computeScrollOffset()) {
            this.Vj = this.wp.getCurrY();
            fc();
            postInvalidateOnAnimation();
        }
    }

    private void as(int i) {
        if (i != this.Vj) {
            this.wp.startScroll(0, this.Vj, 0, i - this.Vj, 300);
            postInvalidate();
        }
    }

    private void fc() {
        onScrollingProgressUpdated(this.Vj);
    }

    protected void onScrollingProgressUpdated(int i) {
    }
}
