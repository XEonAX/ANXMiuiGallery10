package com.miui.extraphoto.refocus;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.view.View;
import android.widget.PopupWindow;

public class RelightingPopupWindow extends PopupWindow {
    private static final int DISAPPEAR_TIME = 1000;
    private static final String TAG = "RelightingPopupWindow";
    private Handler mHandler = new Handler();
    private RelightingAdjustView mRelightingAdjustView;

    public RelightingPopupWindow(Context context) {
        super(new RelightingAdjustView(context));
        setBackgroundDrawable(new ColorDrawable(0));
        setWidth(-1);
        setHeight(-1);
        setTouchable(false);
        setClippingEnabled(false);
        this.mRelightingAdjustView = (RelightingAdjustView) getContentView();
    }

    public void showAtLocation(View parent, int gravity, int x, int y) {
        this.mHandler.removeCallbacksAndMessages(null);
        if (!isShowing()) {
            super.showAtLocation(parent, gravity, x, y);
        }
    }

    public void showAtLocationDelay(View parent, int gravity, int x, int y) {
        showAtLocation(parent, gravity, x, y);
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                RelightingPopupWindow.this.dismiss();
            }
        }, 1000);
    }

    public void setPosition(float centerX, float centerY, float currentX, float currentY) {
        this.mRelightingAdjustView.setPosition(centerX, centerY, currentX, currentY);
    }

    public void setAvailableArea(float left, float top, float width, float height) {
        this.mRelightingAdjustView.setAvailableArea(left, top, width, height);
    }

    public int getRadius() {
        return Math.round(this.mRelightingAdjustView.getRadius() * 2.0f);
    }
}
