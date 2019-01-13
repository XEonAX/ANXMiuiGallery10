package com.miui.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ProgressBar;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.Factory;
import com.miui.internal.variable.Android_Graphics_Drawable_StateListDrawable_class;
import miui.R;
import miui.reflect.Method;
import miui.util.ViewUtils;

public class ProgressBarDelegate {
    static final String TAG = "ProgressBarDelegate";
    private static final Method uH = Method.of(ProgressBar.class, "setIndeterminate", "(Z)V");
    private static final Method uI = Method.of(ProgressBar.class, "setIndeterminateDrawable", "(Landroid/graphics/drawable/Drawable;)V");
    private static final Method uJ = Method.of(ProgressBar.class, "setProgressDrawable", "(Landroid/graphics/drawable/Drawable;)V");
    private static final Method uK = Method.of(ProgressBar.class, "onSizeChanged", "(IIII)V");
    private static Method uL = null;
    private static Method uM = null;
    private static final Android_Graphics_Drawable_AnimatedRotateDrawable_class uN = Factory.getInstance().get();
    private static final Android_Graphics_Drawable_StateListDrawable_class uO = Android_Graphics_Drawable_StateListDrawable_class.Factory.getInstance().get();
    private static final int uP = 10000;
    private final ProgressBar uQ;
    private final Class<? extends ProgressBar> uR;
    private boolean uS = false;
    private Drawable uT;
    private Drawable uU;
    private boolean uV;
    private Drawable uW;
    private boolean uX;
    private float uY;

    static {
        if (VERSION.SDK_INT >= 23) {
            try {
                uL = Method.of(LayerDrawable.class, "getLayerGravity", "(I)I");
                uM = Method.of(LayerDrawable.class, "setLayerGravity", "(II)V");
            } catch (Throwable e) {
                Log.e(TAG, "Fail to find method in LayerDrawable class", e);
            }
        }
    }

    private ProgressBarDelegate(ProgressBar progressBar, Class<? extends ProgressBar> cls) {
        this.uQ = progressBar;
        this.uR = cls;
    }

    public void postConstruct(AttributeSet attributeSet, int i) {
        Context context = this.uQ.getContext();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ProgressBar, i, 0);
        Drawable drawable = this.uW;
        if (drawable != null && drawable.getClass().getName().equals("android.graphics.drawable.AnimatedRotateDrawable")) {
            uN.setFramesCount(drawable, obtainStyledAttributes.getInt(com.miui.internal.R.styleable.ProgressBar_indeterminateFramesCount, 48));
            uN.setFramesDuration(drawable, obtainStyledAttributes.getInt(com.miui.internal.R.styleable.ProgressBar_indeterminateFramesDuration, 25));
        }
        this.uS = true;
        Drawable drawable2 = obtainStyledAttributes.getDrawable(com.miui.internal.R.styleable.ProgressBar_progressMask);
        if (drawable2 != null) {
            b(drawable2);
            setProgressMaskDrawable(drawable2);
        } else {
            bM();
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842803}, 0, 0);
        this.uY = obtainStyledAttributes2.getFloat(0, 0.5f);
        obtainStyledAttributes2.recycle();
    }

    public void setIndeterminate(boolean z) {
        if (z != this.uQ.isIndeterminate()) {
            r(z);
            s(z);
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        if (this.uU != drawable) {
            this.uU = drawable;
            this.uV = true;
            bM();
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (this.uW != drawable) {
            this.uW = drawable;
            this.uX = true;
            bM();
        }
    }

    public synchronized void setProgressMaskDrawable(Drawable drawable) {
        if (this.uT != drawable) {
            this.uT = drawable;
            this.uV = true;
            this.uX = true;
            bM();
        }
    }

    public Drawable getProgressMaskDrawable() {
        return this.uT;
    }

    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.uV = true;
        this.uX = true;
        bM();
        a(i, i2, i3, i4);
    }

    public void drawableStateChanged() {
        boolean isEnabled = this.uQ.isEnabled();
        if (!isEnabled) {
            this.uQ.getProgressDrawable().setAlpha(255);
        }
        this.uQ.setAlpha(isEnabled ? 1.0f : this.uY);
    }

    private void bM() {
        r(this.uQ.isIndeterminate());
    }

    private void r(boolean z) {
        if (this.uS) {
            ProgressBar progressBar = this.uQ;
            int height = (progressBar.getHeight() - progressBar.getPaddingTop()) - progressBar.getPaddingBottom();
            int width = (progressBar.getWidth() - progressBar.getPaddingLeft()) - progressBar.getPaddingRight();
            if (height < width) {
                int i = width;
                width = height;
                height = i;
            }
            if (this.uT != null) {
                this.uT.setBounds(0, 0, height, width);
            }
            if (z && this.uX) {
                this.uX = true;
                Drawable a = a(progressBar.getResources(), this.uW, this.uT, height, width, true);
                if (a != null && height > 0 && width > 0) {
                    int i2;
                    if (ViewUtils.isLayoutRtl(this.uQ)) {
                        i2 = height - height;
                        height += 0;
                    } else {
                        i2 = 0;
                    }
                    a.setBounds(i2, 0, height, width);
                }
                c(a);
            } else if (!z && this.uV) {
                this.uV = true;
                d(a(progressBar.getResources(), this.uU, this.uT, height, width, false));
            }
        }
    }

    private static Drawable a(Resources resources, Drawable drawable, Drawable drawable2, int i, int i2, boolean z) {
        Drawable drawable3 = drawable;
        if ((drawable3 instanceof NinePatchDrawable) || (drawable3 instanceof BitmapDrawable)) {
            return new ClipDrawable(a(resources, drawable, drawable2, i, i2), 8388611, 1);
        }
        Drawable a;
        if (drawable3 instanceof ClipDrawable) {
            a = a(resources, drawable, drawable2, i, i2);
            if (a == drawable3) {
                return a;
            }
            drawable3 = new ClipDrawable(a, 8388611, 1);
        } else {
            int i3 = 0;
            int numberOfLayers;
            Drawable layerDrawable;
            if (drawable3 instanceof LayerDrawable) {
                int id;
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable3;
                numberOfLayers = layerDrawable2.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i4 = 0; i4 < numberOfLayers; i4++) {
                    id = layerDrawable2.getId(i4);
                    Drawable drawable4 = layerDrawable2.getDrawable(i4);
                    if (id == 16908301 || id == 16908303) {
                        drawableArr[i4] = a(resources, drawable4, drawable2, i, i2, z);
                    } else {
                        drawableArr[i4] = drawable4;
                    }
                }
                layerDrawable = new LayerDrawable(drawableArr);
                for (int i5 = 0; i5 < numberOfLayers; i5++) {
                    layerDrawable.setId(i5, layerDrawable2.getId(i5));
                    if (!(uL == null || uM == null)) {
                        id = uL.invokeInt(LayerDrawable.class, layerDrawable2, Integer.valueOf(i5));
                        uM.invoke(LayerDrawable.class, layerDrawable, Integer.valueOf(i5), Integer.valueOf(id));
                    }
                }
                return layerDrawable;
            } else if (drawable3 instanceof StateListDrawable) {
                StateListDrawable stateListDrawable = (StateListDrawable) drawable3;
                a = new StateListDrawable();
                int stateCount = uO.getStateCount(stateListDrawable);
                while (i3 < stateCount) {
                    a.addState(uO.getStateSet(stateListDrawable, i3), a(resources, uO.getStateDrawable(stateListDrawable, i3), drawable2, i, i2, z));
                    i3++;
                }
                return a;
            } else if (drawable3 instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawable3;
                numberOfLayers = animationDrawable.getNumberOfFrames();
                Drawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                while (i3 < numberOfLayers) {
                    layerDrawable = a(resources, animationDrawable.getFrame(i3), drawable2, i, i2, z);
                    layerDrawable.setLevel(uP);
                    animationDrawable2.addFrame(layerDrawable, animationDrawable.getDuration(i3));
                    i3++;
                }
                if (z) {
                    animationDrawable2.setLevel(uP);
                } else {
                    animationDrawable2.setLevel(animationDrawable.getLevel());
                }
                return animationDrawable2;
            } else {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Unknown Drawable subclass, src=");
                stringBuilder.append(drawable3);
                Log.w(str, stringBuilder.toString());
            }
        }
        return drawable3;
    }

    private static Drawable a(Resources resources, Drawable drawable, Drawable drawable2, int i, int i2) {
        if (drawable == null || drawable2 == null || i <= 0 || i2 <= 0) {
            return drawable;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        drawable.setLevel(uP);
        drawable.setBounds(0, 0, i, i2);
        drawable.draw(canvas);
        drawable2.draw(canvas);
        return new BitmapDrawable(resources, createBitmap);
    }

    private void b(Drawable drawable) {
        Paint paint;
        if (drawable instanceof NinePatchDrawable) {
            paint = ((NinePatchDrawable) drawable).getPaint();
        } else if (drawable instanceof BitmapDrawable) {
            paint = ((BitmapDrawable) drawable).getPaint();
        } else {
            paint = null;
        }
        if (paint != null) {
            paint.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
            return;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("The drawable should be NinePatchDrawable or BitmapDrawable. drawable=");
        stringBuilder.append(drawable);
        Log.w(str, stringBuilder.toString());
    }

    public static ProgressBarDelegate create(ProgressBar progressBar, Class<? extends ProgressBar> cls) {
        return new ProgressBarDelegate(progressBar, cls);
    }

    private void s(boolean z) {
        uH.invoke(this.uR, this.uQ, Boolean.valueOf(z));
    }

    private void c(Drawable drawable) {
        uI.invoke(this.uR, this.uQ, drawable);
    }

    private void d(Drawable drawable) {
        uJ.invoke(this.uR, this.uQ, drawable);
    }

    private void a(int i, int i2, int i3, int i4) {
        uK.invoke(this.uR, this.uQ, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
    }
}
