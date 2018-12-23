package com.miui.extraphoto.refocus;

import android.app.Dialog;
import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import com.miui.extraphoto.R;

class LoadingDialog extends Dialog {
    private int mHeight;
    private int mWidth;

    public LoadingDialog(Context context) {
        super(context, R.style.LoadingDialog);
        setCancelable(false);
        int size = context.getResources().getDimensionPixelSize(R.dimen.relighting_loading_progress_size);
        this.mWidth = size;
        this.mHeight = size;
        setContentView(new LoadingDialogView(context), new LayoutParams(this.mWidth, this.mHeight));
    }

    public void setLayoutParams() {
    }

    public void show(int x, int y) {
        WindowManager.LayoutParams layoutParams = getWindow().getAttributes();
        layoutParams.gravity = 8388659;
        layoutParams.width = this.mWidth;
        layoutParams.height = this.mHeight;
        layoutParams.x = x - (this.mWidth / 2);
        layoutParams.y = y - (this.mHeight / 2);
        super.show();
    }
}
