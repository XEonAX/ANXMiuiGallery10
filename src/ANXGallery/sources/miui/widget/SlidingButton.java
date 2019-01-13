package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;
import miui.view.animation.QuarticEaseInOutInterpolator;

public class SlidingButton extends CheckBox {
    private static final int ANIMATION_DURATION = 260;
    private static final int[] Pm = new int[]{16842912};
    private static final int Rt = 255;
    private boolean OI;
    private AnimatorListener Rk;
    private Drawable aad;
    private Drawable aae;
    private int aaf;
    private Drawable aag;
    private int aah;
    private int aai;
    private int aaj;
    private int aak;
    private int aal;
    private int aam;
    private int aan;
    private boolean aao;
    private boolean aap;
    private int aaq;
    private OnCheckedChangeListener aar;
    private Animator aas;
    private StateListDrawable aat;
    private int mHeight;
    private int mWidth;
    private Rect sY;

    public SlidingButton(Context context) {
        this(context, null);
    }

    public SlidingButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingButton(Context context, AttributeSet attributeSet, int i) {
        Bitmap bitmap;
        super(context, attributeSet, i);
        this.sY = new Rect();
        this.OI = false;
        this.Rk = new AnimatorListenerAdapter() {
            private boolean qB;

            public void onAnimationStart(Animator animator) {
                this.qB = false;
                SlidingButton.this.OI = true;
            }

            public void onAnimationCancel(Animator animator) {
                this.qB = true;
            }

            public void onAnimationEnd(Animator animator) {
                boolean z = false;
                SlidingButton.this.OI = false;
                if (!this.qB) {
                    SlidingButton.this.aas = null;
                    if (SlidingButton.this.aal >= SlidingButton.this.aak) {
                        z = true;
                    }
                    if (z != SlidingButton.this.isChecked()) {
                        SlidingButton.this.setChecked(z);
                        SlidingButton.this.fP();
                    }
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingButton, i, R.style.Widget_SlidingButton);
        setDrawingCacheEnabled(false);
        this.aaq = ViewConfiguration.get(context).getScaledTouchSlop() / 2;
        this.aad = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_frame);
        this.aae = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_sliderOn);
        this.aag = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_sliderOff);
        setBackground(obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_android_background));
        this.mWidth = this.aad.getIntrinsicWidth();
        this.mHeight = this.aad.getIntrinsicHeight();
        this.aah = Math.min(this.mWidth, this.aae.getIntrinsicWidth());
        this.aai = Math.min(this.mHeight, this.aae.getIntrinsicHeight());
        this.aaj = 0;
        this.aak = this.mWidth - this.aah;
        this.aal = this.aaj;
        TypedValue typedValue = new TypedValue();
        obtainStyledAttributes.getValue(R.styleable.SlidingButton_barOff, typedValue);
        TypedValue typedValue2 = new TypedValue();
        obtainStyledAttributes.getValue(R.styleable.SlidingButton_barOn, typedValue2);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_barOff);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_barOn);
        Bitmap g = g(drawable);
        if (typedValue.type == typedValue2.type && typedValue.data == typedValue2.data && typedValue.resourceId == typedValue2.resourceId) {
            bitmap = g;
        } else {
            bitmap = g(drawable2);
        }
        this.aad.setBounds(0, 0, this.mWidth, this.mHeight);
        if (!(bitmap == null || g == null)) {
            Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_mask);
            drawable3.setBounds(0, 0, this.mWidth, this.mHeight);
            Bitmap h = h(drawable3);
            this.aat = a(context, h, bitmap, g);
            h.recycle();
        }
        if (!(bitmap == null || bitmap.isRecycled())) {
            bitmap.recycle();
        }
        if (!(g == null || g.isRecycled())) {
            g.recycle();
        }
        fO();
        if (isChecked()) {
            setSliderOffset(this.aak);
        }
        obtainStyledAttributes.recycle();
    }

    private StateListDrawable a(Context context, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3) {
        Paint paint = new Paint();
        Paint paint2 = new Paint();
        paint2.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        paint2.setColorFilter(new PorterDuffColorFilter(AttributeResolver.resolveColor(context, miui.R.attr.colorAccent), Mode.SRC_IN));
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        Drawable a = a(bitmap, bitmap2, paint2);
        Drawable a2 = a(bitmap, bitmap3, paint);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(Pm, a);
        stateListDrawable.addState(EMPTY_STATE_SET, a2);
        stateListDrawable.setExitFadeDuration(context.getResources().getInteger(R.integer.button_exit_fade_duration));
        stateListDrawable.setBounds(0, 0, this.mWidth, this.mHeight);
        stateListDrawable.setCallback(this);
        return stateListDrawable;
    }

    private Drawable a(Bitmap bitmap, Bitmap bitmap2, Paint paint) {
        Bitmap createBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, null);
        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        Drawable bitmapDrawable = new BitmapDrawable(getContext().getResources(), createBitmap);
        bitmapDrawable.setBounds(0, 0, this.mWidth, this.mHeight);
        return bitmapDrawable;
    }

    private Bitmap g(Drawable drawable) {
        drawable.setBounds(0, 0, this.mWidth, this.mHeight);
        Bitmap createBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.draw(canvas);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public void setOnPerformCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.aar = onCheckedChangeListener;
    }

    private Bitmap h(Drawable drawable) {
        Rect bounds = drawable.getBounds();
        Bitmap createBitmap = Bitmap.createBitmap(bounds.width(), bounds.height(), Config.ALPHA_8);
        Canvas canvas = new Canvas(createBitmap);
        drawable.draw(canvas);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public void setChecked(boolean z) {
        if (isChecked() != z) {
            super.setChecked(z);
            this.aal = z ? this.aak : this.aaj;
            this.aaf = z ? Rt : 0;
            invalidate();
        }
    }

    public void setButtonDrawable(Drawable drawable) {
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        fO();
    }

    private void fO() {
        if (this.aae != null) {
            this.aae.setState(getDrawableState());
            this.aat.setState(getDrawableState());
        }
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mWidth, this.mHeight);
    }

    public boolean performClick() {
        super.performClick();
        fP();
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        Rect rect = this.sY;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        rect.set(isLayoutRtl ? (this.mWidth - this.aal) - this.aah : this.aal, 0, isLayoutRtl ? this.mWidth - this.aal : this.aal + this.aah, this.mHeight);
        switch (action) {
            case 0:
                if (rect.contains(x, y)) {
                    this.aao = true;
                    setPressed(true);
                } else {
                    this.aao = false;
                }
                this.aam = x;
                this.aan = x;
                this.aap = false;
                break;
            case 1:
            case 3:
                if (action != 3 || ((x >= rect.left && x <= rect.right) || (y >= rect.top && y <= rect.bottom))) {
                    if (!this.aao) {
                        animateToggle();
                    } else if (this.aap) {
                        C(this.aal >= this.aak / 2);
                    } else {
                        animateToggle();
                    }
                }
                this.aao = false;
                this.aap = false;
                setPressed(false);
                break;
            case 2:
                if (this.aao) {
                    aJ(x - this.aam);
                    this.aam = x;
                    if (Math.abs(x - this.aan) >= this.aaq) {
                        this.aap = true;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    public void setPressed(boolean z) {
        super.setPressed(z);
        invalidate();
    }

    private void fP() {
        if (this.aar != null) {
            final boolean isChecked = isChecked();
            post(new Runnable() {
                public void run() {
                    if (SlidingButton.this.aar != null) {
                        SlidingButton.this.aar.onCheckedChanged(SlidingButton.this, isChecked);
                    }
                }
            });
        }
    }

    private void animateToggle() {
        C(isChecked() ^ 1);
    }

    private void C(boolean z) {
        if (this.aas != null) {
            this.aas.cancel();
            this.aas = null;
        }
        String str = "SliderOffset";
        int[] iArr = new int[1];
        iArr[0] = z ? this.aak : this.aaj;
        Animator ofInt = ObjectAnimator.ofInt(this, str, iArr);
        ofInt.setInterpolator(new QuarticEaseInOutInterpolator());
        ofInt.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 260 : 0);
        this.aas = ofInt;
        this.aas.addListener(this.Rk);
        this.aas.start();
    }

    private void aJ(int i) {
        if (ViewUtils.isLayoutRtl(this)) {
            i = -i;
        }
        this.aal += i;
        if (this.aal < this.aaj) {
            this.aal = this.aaj;
        } else if (this.aal > this.aak) {
            this.aal = this.aak;
        }
        setSliderOffset(this.aal);
    }

    public int getSliderOffset() {
        return this.aal;
    }

    public void setSliderOffset(int i) {
        this.aal = i;
        invalidate();
    }

    public int getSliderOnAlpha() {
        return this.aaf;
    }

    public void setSliderOnAlpha(int i) {
        this.aaf = i;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        int i = isEnabled() ? Rt : BaiduSceneResult.BANK_CARD;
        Drawable drawable = this.aat;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        this.aad.draw(canvas);
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i2 = isLayoutRtl ? (this.mWidth - this.aal) - this.aah : this.aal;
        int i3 = isLayoutRtl ? this.mWidth - this.aal : this.aah + this.aal;
        int i4 = (this.mHeight - this.aai) / 2;
        int i5 = this.aai + i4;
        if (isChecked()) {
            this.aae.setBounds(i2, i4, i3, i5);
            this.aae.draw(canvas);
        } else {
            this.aag.setBounds(i2, i4, i3, i5);
            this.aag.draw(canvas);
        }
        setAlpha(((float) i) / 255.0f);
    }

    public boolean hasOverlappingRendering() {
        return false;
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.aat;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.aat != null) {
            this.aat.jumpToCurrentState();
        }
    }
}
