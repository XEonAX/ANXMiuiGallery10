package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;
import com.miui.internal.R;
import miui.util.ViewUtils;

public class ScrollingTabTextView extends TextView {
    private ColorStateList vs;
    private int vt;
    private int vu;
    private ValueAnimator vv;
    private int vw;
    private boolean vx;

    public ScrollingTabTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        bQ();
    }

    private void bQ() {
        this.vs = getTextColors();
        this.vt = this.vs.getColorForState(ENABLED_STATE_SET, getResources().getColor(R.color.action_bar_tab_text_color_normal_light));
        this.vu = this.vs.getColorForState(ENABLED_SELECTED_STATE_SET, getResources().getColor(R.color.action_bar_tab_text_color_selected_light));
    }

    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        bQ();
    }

    protected void onDraw(Canvas canvas) {
        if (this.vv == null || !this.vv.isRunning()) {
            super.onDraw(canvas);
            return;
        }
        int i;
        int scrollX;
        if ((!this.vx || isSelected()) && (this.vx || !isSelected())) {
            i = this.vu;
        } else {
            i = this.vt;
        }
        setTextColor(i);
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i2 = this.vw;
        int height = getHeight();
        if (isLayoutRtl) {
            scrollX = getScrollX() + 0;
            i2 += getScrollX();
        } else {
            scrollX = 0;
        }
        canvas.save();
        canvas.clipRect(scrollX, 0, i2, height);
        super.onDraw(canvas);
        canvas.restore();
        if (i == this.vt) {
            i = this.vu;
        } else if (i == this.vu) {
            i = this.vt;
        }
        setTextColor(i);
        i = this.vw;
        i2 = getWidth();
        if (isLayoutRtl) {
            i += getScrollX();
            i2 += getScrollX();
        }
        canvas.save();
        canvas.clipRect(i, 0, i2, height);
        super.onDraw(canvas);
        canvas.restore();
        setTextColor(this.vs);
    }

    public void startScrollAnimation(boolean z) {
        int width;
        int i;
        if (this.vv == null) {
            this.vv = new ValueAnimator();
        } else {
            this.vv.cancel();
        }
        this.vx = z;
        if (this.vx) {
            width = getWidth();
            i = 0;
        } else {
            i = getWidth();
            width = 0;
        }
        this.vv.setIntValues(new int[]{i, width});
        this.vv.setDuration(200);
        this.vv.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScrollingTabTextView.this.vw = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ScrollingTabTextView.this.invalidate();
            }
        });
        this.vv.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ScrollingTabTextView.this.vw = ScrollingTabTextView.this.getWidth();
            }
        });
        this.vv.start();
    }
}
