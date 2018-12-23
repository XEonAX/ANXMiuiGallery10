package com.miui.extraphoto.refocus;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.PopupWindow;
import com.miui.extraphoto.R;
import com.miui.extraphoto.refocus.widget.RefocusGestureView;

class RefocusPopupWindow extends PopupWindow {
    private final int mHeight;
    private RefocusGestureView mRefocusGestureView = ((RefocusGestureView) getContentView());
    private final int mWidth;

    RefocusPopupWindow(Context context) {
        super(new RefocusGestureView(context), getCustomWidth(context), getCustomHeight(context));
        setBackgroundDrawable(new ColorDrawable(0));
        setTouchable(false);
        setClippingEnabled(false);
        this.mWidth = getCustomWidth(context);
        this.mHeight = getCustomHeight(context);
        this.mRefocusGestureView.setAnimatorListener(new AnimatorListener() {
            public void onAnimationStart(Animator animation) {
            }

            public void onAnimationEnd(Animator animation) {
                RefocusPopupWindow.this.dismiss();
            }

            public void onAnimationCancel(Animator animation) {
            }

            public void onAnimationRepeat(Animator animation) {
            }
        });
    }

    private static int getCustomWidth(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.refocus_gesture_size);
    }

    private static int getCustomHeight(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.refocus_gesture_size);
    }

    public void showAtLocation(View parent, int gravity, int x, int y) {
        this.mRefocusGestureView.cancel();
        x -= this.mWidth / 2;
        y -= this.mHeight / 2;
        if (isShowing()) {
            update(x, y, -1, -1);
        } else {
            super.showAtLocation(parent, gravity, x, y);
        }
        this.mRefocusGestureView.start();
    }
}
