package com.miui.gallery.collage.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import com.miui.gallery.R;

class ControlPopupWindow extends PopupWindow {
    private Context mContext;
    private ControlListener mControlListener;
    private int mHeight;
    private int mMargin;
    private OnClickListener mOnClickListener = new OnClickListener() {
        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.rotate /*2131886194*/:
                    if (ControlPopupWindow.this.mControlListener != null) {
                        ControlPopupWindow.this.mControlListener.onRotate();
                        return;
                    }
                    return;
                case R.id.replace /*2131886359*/:
                    if (ControlPopupWindow.this.mControlListener != null) {
                        ControlPopupWindow.this.mControlListener.onReplace();
                        return;
                    }
                    return;
                case R.id.mirror /*2131886360*/:
                    if (ControlPopupWindow.this.mControlListener != null) {
                        ControlPopupWindow.this.mControlListener.onMirror();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private int mWidth;

    interface ControlListener {
        void onDismiss();

        void onMirror();

        void onReplace();

        void onRotate();
    }

    ControlPopupWindow(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        View contentView = View.inflate(context, R.layout.collage_dialog, null);
        setContentView(contentView);
        setBackgroundDrawable(new ColorDrawable(0));
        setOutsideTouchable(false);
        setFocusable(false);
        setAnimationStyle(R.style.f17Gallery.PopupWindow);
        setOnDismissListener(new OnDismissListener() {
            public void onDismiss() {
                if (ControlPopupWindow.this.mControlListener != null) {
                    ControlPopupWindow.this.mControlListener.onDismiss();
                }
            }
        });
        this.mWidth = context.getResources().getDimensionPixelSize(R.dimen.collage_control_popup_width);
        this.mHeight = context.getResources().getDimensionPixelSize(R.dimen.collage_control_popup_height);
        this.mMargin = context.getResources().getDimensionPixelSize(R.dimen.collage_dialog_margin);
        setWidth(this.mWidth);
        setHeight(this.mHeight);
        ImageView rotate = (ImageView) contentView.findViewById(R.id.rotate);
        ImageView mirror = (ImageView) contentView.findViewById(R.id.mirror);
        ((ImageView) contentView.findViewById(R.id.replace)).setOnClickListener(this.mOnClickListener);
        rotate.setOnClickListener(this.mOnClickListener);
        mirror.setOnClickListener(this.mOnClickListener);
    }

    void setControlListener(ControlListener controlListener) {
        this.mControlListener = controlListener;
    }

    public void showAtLocation(View parent, View relativeView) {
        int y;
        int[] relativeLocation = new int[2];
        int[] parentLocation = new int[2];
        relativeView.getLocationInWindow(relativeLocation);
        parent.getLocationInWindow(parentLocation);
        if (((float) (relativeLocation[1] + (relativeView.getHeight() / 2))) < ((float) (parentLocation[1] + (parent.getHeight() / 2)))) {
            y = (relativeLocation[1] + relativeView.getHeight()) + this.mMargin;
        } else {
            y = (relativeLocation[1] - this.mHeight) - this.mMargin;
        }
        if (y < 0) {
            y = Math.round(((float) relativeLocation[1]) - (((float) this.mHeight) / 2.0f));
        }
        if (y < 0) {
            y = relativeLocation[1] + this.mMargin;
        }
        int x = (relativeLocation[0] + (relativeView.getWidth() / 2)) - (this.mWidth / 2);
        if (isShowing()) {
            update(x, y, this.mWidth, this.mHeight);
        } else {
            super.showAtLocation(parent, 8388659, x, y);
        }
    }
}
