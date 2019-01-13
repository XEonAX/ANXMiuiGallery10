package com.miui.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.miui.internal.R;

public class ArrowPopupContentWrapper extends LinearLayout {
    private Paint rb;
    private Bitmap rc;
    private Bitmap rd;
    private Bitmap re;
    private Bitmap rf;

    public ArrowPopupContentWrapper(Context context) {
        this(context, null);
    }

    public ArrowPopupContentWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowPopupContentWrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rb = new Paint();
        this.rb.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
        this.rb.setAntiAlias(true);
        Resources resources = getResources();
        this.rc = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_1);
        this.rd = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_2);
        this.re = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_3);
        this.rf = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_4);
    }

    protected void dispatchDraw(Canvas canvas) {
        canvas.saveLayer(0.0f, 0.0f, (float) getWidth(), (float) getHeight(), null, 31);
        super.dispatchDraw(canvas);
        canvas.drawBitmap(this.rc, (float) (getPaddingLeft() + 0), (float) (getPaddingTop() + 0), this.rb);
        canvas.drawBitmap(this.rd, (float) ((getWidth() - this.rd.getWidth()) - getPaddingRight()), (float) (getPaddingTop() + 0), this.rb);
        canvas.drawBitmap(this.re, (float) (0 + getPaddingLeft()), (float) ((getHeight() - this.re.getHeight()) - getPaddingBottom()), this.rb);
        canvas.drawBitmap(this.rf, (float) ((getWidth() - this.rf.getWidth()) - getPaddingRight()), (float) ((getHeight() - this.rf.getHeight()) - getPaddingBottom()), this.rb);
        canvas.restore();
    }
}
