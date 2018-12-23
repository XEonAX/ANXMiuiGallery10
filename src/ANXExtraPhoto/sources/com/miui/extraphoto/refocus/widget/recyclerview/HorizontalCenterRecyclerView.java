package com.miui.extraphoto.refocus.widget.recyclerview;

import android.content.Context;
import android.util.AttributeSet;

public class HorizontalCenterRecyclerView extends SimpleRecyclerView {
    private int mLastWidth;

    public HorizontalCenterRecyclerView(Context context) {
        super(context);
    }

    public HorizontalCenterRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public HorizontalCenterRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (getChildCount() > 0) {
            int i;
            int newWidth = 0;
            for (i = 0; i < getChildCount(); i++) {
                newWidth += getChildAt(i).getMeasuredWidth();
            }
            if (this.mLastWidth != newWidth) {
                this.mLastWidth = newWidth;
                i = getMeasuredWidth() - newWidth;
                if (i > 0 && getPaddingLeft() != i / 2) {
                    setPadding(i / 2, 0, i / 2, 0);
                    super.onLayout(changed, l, t, r, b);
                }
            }
        }
    }
}
