package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import miui.R;
import miui.util.AttributeResolver;
import miui.util.DrawableUtil;

public class FloatingActionButton extends ImageView {
    private static final int SS = 218103808;
    private static final float SU = 0.0f;
    private static final float SW = 5.45f;
    private static final float Ta = 5.45f;
    private static final int Tb = 25;
    private final int Tc;
    private final int Td;
    private final int Te;
    private final boolean Tf;
    private Drawable Tg;
    private int Th;
    private boolean Ti;

    private static class OvalShapeWithPadding extends OvalShape {
        private WeakReference<View> Tj;

        public OvalShapeWithPadding() {
            this.Tj = new WeakReference(null);
        }

        public OvalShapeWithPadding(View view) {
            this.Tj = new WeakReference(view);
        }

        public void draw(Canvas canvas, Paint paint) {
            View view = (View) this.Tj.get();
            if (view != null) {
                int width = view.getWidth();
                int paddingLeft = view.getPaddingLeft();
                width = ((width - paddingLeft) - view.getPaddingRight()) / 2;
                canvas.drawCircle((float) (paddingLeft + width), (float) (view.getPaddingTop() + width), (float) width, paint);
            }
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float f = getContext().getResources().getDisplayMetrics().density;
        this.Td = (int) (SU * f);
        int i2 = (int) (f * 5.45f);
        this.Te = i2;
        this.Tc = i2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton, i, R.style.Widget_FloatingActionButton);
        this.Tf = obtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_fabShadowEnabled, true);
        this.Ti = obtainStyledAttributes.hasValue(R.styleable.FloatingActionButton_fabColor);
        this.Th = obtainStyledAttributes.getColor(R.styleable.FloatingActionButton_fabColor, AttributeResolver.resolveColor(getContext(), R.attr.colorAccent));
        obtainStyledAttributes.recycle();
        eP();
        eS();
    }

    private void eP() {
        if (getBackground() == null) {
            Drawable resolveDrawable = AttributeResolver.resolveDrawable(getContext(), com.miui.internal.R.attr.actionButtonMainBackground);
            if (!DrawableUtil.isPlaceholder(resolveDrawable)) {
                this.Tg = resolveDrawable;
                this.Ti = false;
                super.setBackground(this.Tg);
                return;
            } else if (this.Ti) {
                super.setBackground(eR());
                return;
            } else {
                super.setBackground(eQ());
                return;
            }
        }
        this.Ti = false;
    }

    private Drawable eQ() {
        if (this.Tg == null) {
            this.Th = AttributeResolver.resolveColor(getContext(), R.attr.colorAccent);
            this.Ti = true;
            this.Tg = eR();
        }
        return this.Tg;
    }

    private Drawable eR() {
        Drawable shapeDrawable = new ShapeDrawable(new OvalShapeWithPadding(this));
        if (this.Tf) {
            int ap = ap(this.Th);
            setLayerType(VERSION.SDK_INT >= 28 ? 2 : 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer((float) this.Tc, (float) this.Td, (float) this.Te, ap);
        }
        shapeDrawable.getPaint().setColor(this.Th);
        new ShapeDrawable(new OvalShapeWithPadding(this)).getPaint().setColor(SS);
        Drawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable, r1});
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(PRESSED_ENABLED_STATE_SET, layerDrawable);
        stateListDrawable.addState(ENABLED_SELECTED_STATE_SET, layerDrawable);
        stateListDrawable.addState(EMPTY_STATE_SET, shapeDrawable);
        return stateListDrawable;
    }

    private void eS() {
        if (this.Tf && this.Ti) {
            setPadding(Math.max(0, this.Tc - this.Td), Math.max(0, this.Tc - this.Te), Math.max(0, this.Tc + this.Td), Math.max(0, this.Tc + this.Te));
        } else {
            setPadding(0, 0, 0, 0);
        }
    }

    private int ap(int i) {
        return Color.argb(25, Color.red(i), Math.max(0, Color.green(i) - 30), Color.blue(i));
    }

    public void setBackground(Drawable drawable) {
        this.Ti = false;
        if (drawable == null) {
            drawable = eQ();
        }
        super.setBackground(drawable);
        eS();
    }

    public void setBackgroundResource(int i) {
        this.Ti = false;
        if (i == 0) {
            super.setBackground(eQ());
        } else {
            super.setBackgroundResource(i);
        }
        eS();
    }

    public void setBackgroundColor(int i) {
        if (!(this.Ti && this.Th == i)) {
            this.Th = i;
            super.setBackground(eR());
            eS();
        }
        this.Ti = true;
    }
}
