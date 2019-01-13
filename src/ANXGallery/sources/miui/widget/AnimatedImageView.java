package miui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.Factory;

public class AnimatedImageView extends ImageView {
    private static final int OF = 56;
    private static final int OG = 32;
    private static final Android_Graphics_Drawable_AnimatedRotateDrawable_class uN = Factory.getInstance().get();
    private Drawable OH;
    private boolean OI;

    public AnimatedImageView(Context context) {
        super(context);
    }

    public AnimatedImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void bM() {
        if (isShown()) {
            stop();
        }
        Drawable drawable = getDrawable();
        if (drawable.getClass().getName().equals("android.graphics.drawable.AnimatedRotateDrawable")) {
            this.OH = drawable;
            uN.setFramesCount(drawable, 56);
            uN.setFramesDuration(drawable, 32);
        } else {
            this.OH = null;
        }
        ee();
    }

    private void ee() {
        if (this.OH == null) {
            return;
        }
        if (isShown() && this.OI) {
            start();
        } else {
            stop();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        bM();
    }

    public void setImageResource(int i) {
        super.setImageResource(i);
        bM();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ee();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ee();
    }

    public void setAnimating(boolean z) {
        this.OI = z;
        ee();
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        ee();
    }

    private void start() {
        if (this.OH != null && this.OH.getClass().getName().equals("android.graphics.drawable.AnimatedRotateDrawable")) {
            uN.start(this.OH);
        }
    }

    private void stop() {
        if (this.OH != null && this.OH.getClass().getName().equals("android.graphics.drawable.AnimatedRotateDrawable")) {
            uN.stop(this.OH);
        }
    }
}
