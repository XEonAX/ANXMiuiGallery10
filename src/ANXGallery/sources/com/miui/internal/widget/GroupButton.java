package com.miui.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.miui.internal.R;
import miui.util.ViewUtils;

public class GroupButton extends Button {
    private static final int[] ue = new int[]{R.attr.state_first_v};
    private static final int[] uf = new int[]{R.attr.state_middle_v};
    private static final int[] ug = new int[]{R.attr.state_last_v};
    private static final int[] uh = new int[]{R.attr.state_first_h};
    private static final int[] ui = new int[]{R.attr.state_middle_h};
    private static final int[] uj = new int[]{R.attr.state_last_h};
    private static final int[] uk = new int[]{R.attr.state_single_h};

    public GroupButton(Context context) {
        super(context);
    }

    public GroupButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GroupButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected int[] onCreateDrawableState(int i) {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return super.onCreateDrawableState(i);
        }
        if (!(viewGroup instanceof LinearLayout)) {
            return super.onCreateDrawableState(i);
        }
        int orientation = ((LinearLayout) viewGroup).getOrientation();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i2 = 0;
        int i3 = 0;
        int i4 = i3;
        int i5 = 1;
        int i6 = i5;
        while (i3 < viewGroup.getChildCount()) {
            if (viewGroup.getChildAt(i3).getVisibility() == 0) {
                i4++;
                if (i3 < indexOfChild) {
                    i5 = 0;
                }
                if (i3 > indexOfChild) {
                    i6 = 0;
                }
            }
            i3++;
        }
        if (i4 == 1) {
            i2 = 1;
        }
        int[] onCreateDrawableState;
        if (orientation == 1) {
            onCreateDrawableState = super.onCreateDrawableState(i + 2);
            mergeDrawableStates(onCreateDrawableState, uk);
            if (i2 == 0) {
                if (i5 != 0) {
                    mergeDrawableStates(onCreateDrawableState, ue);
                } else if (i6 != 0) {
                    mergeDrawableStates(onCreateDrawableState, ug);
                } else {
                    mergeDrawableStates(onCreateDrawableState, uf);
                }
            }
            return onCreateDrawableState;
        }
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (i2 != 0) {
            mergeDrawableStates(onCreateDrawableState, uk);
        } else if (i5 != 0) {
            mergeDrawableStates(onCreateDrawableState, isLayoutRtl ? uj : uh);
        } else if (i6 != 0) {
            mergeDrawableStates(onCreateDrawableState, isLayoutRtl ? uh : uj);
        } else {
            mergeDrawableStates(onCreateDrawableState, ui);
        }
        return onCreateDrawableState;
    }
}
