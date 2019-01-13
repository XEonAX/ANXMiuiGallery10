package com.miui.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.miui.internal.R;

public class DialogParentPanel extends LinearLayout {
    private TypedValue rg;
    private TypedValue rh;
    private TypedValue ri;
    private TypedValue rj;
    private TypedValue tq;
    private TypedValue tr;
    private TypedValue ts;
    private TypedValue tt;

    public DialogParentPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Window);
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMinor)) {
            this.rh = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMinor, this.rh);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMajor)) {
            this.ri = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMajor, this.ri);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMajor)) {
            this.rg = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMajor, this.rg);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMinor)) {
            this.rj = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMinor, this.rj);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxWidthMinor)) {
            this.tq = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxWidthMinor, this.tq);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxWidthMajor)) {
            this.tr = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxWidthMajor, this.tr);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxHeightMajor)) {
            this.tt = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxHeightMajor, this.tt);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxHeightMinor)) {
            this.ts = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxHeightMinor, this.ts);
        }
        obtainStyledAttributes.recycle();
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(m(i), n(i2));
    }

    private int m(int i) {
        return a(i, true, this.rh, this.rg, this.tq, this.tr);
    }

    private int n(int i) {
        return a(i, false, this.rj, this.ri, this.ts, this.tt);
    }

    private int a(int i, boolean z, TypedValue typedValue, TypedValue typedValue2, TypedValue typedValue3, TypedValue typedValue4) {
        if (MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return i;
        }
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        Object obj = displayMetrics.widthPixels < displayMetrics.heightPixels ? 1 : null;
        if (obj == null) {
            typedValue = typedValue2;
        }
        int a = a(displayMetrics, typedValue, z);
        if (a > 0) {
            return MeasureSpec.makeMeasureSpec(a, 1073741824);
        }
        if (obj == null) {
            typedValue3 = typedValue4;
        }
        int a2 = a(displayMetrics, typedValue3, z);
        if (a2 > 0) {
            return MeasureSpec.makeMeasureSpec(Math.min(a2, MeasureSpec.getSize(i)), Integer.MIN_VALUE);
        }
        return i;
    }

    private int a(DisplayMetrics displayMetrics, TypedValue typedValue, boolean z) {
        if (typedValue != null) {
            if (typedValue.type == 5) {
                return (int) typedValue.getDimension(displayMetrics);
            }
            if (typedValue.type == 6) {
                float f = (float) (z ? displayMetrics.widthPixels : displayMetrics.heightPixels);
                return (int) typedValue.getFraction(f, f);
            }
        }
        return 0;
    }
}
