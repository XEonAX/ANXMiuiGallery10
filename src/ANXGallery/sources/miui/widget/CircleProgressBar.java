package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import com.miui.internal.widget.ActionModeView;

public class CircleProgressBar extends ProgressBar {
    private static final int Pp = 10;
    private static final int Pq = 300;
    private static final int Pr = 300;
    private int PB;
    private Bitmap PC;
    private Canvas PD;
    private int PI;
    private int PJ;
    private int PN;
    private Drawable PO;
    private RectF Ps;
    private Path Pt;
    private Animator Pu;
    private int[] Pv;
    private Drawable[] Pw;
    private Drawable[] Px;
    private Drawable[] Py;
    private OnProgressChangedListener Pz;
    private Paint rb;

    public interface OnProgressChangedListener {
        void onProgressChanged();
    }

    public CircleProgressBar(Context context) {
        this(context, null);
    }

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Pt = new Path();
        this.PN = ActionModeView.ANIMATION_DURATION;
        setIndeterminate(false);
        this.rb = new Paint();
        this.rb.setColor(-16777216);
    }

    public void setProgressLevels(int[] iArr) {
        this.Pv = iArr;
    }

    public int getProgressLevelCount() {
        return this.Pv == null ? 1 : 1 + this.Pv.length;
    }

    public void setDrawablesForLevels(Drawable[] drawableArr, Drawable[] drawableArr2, Drawable[] drawableArr3) {
        this.Pw = drawableArr;
        this.Px = drawableArr2;
        this.Py = drawableArr3;
        if (drawableArr != null) {
            for (Drawable mutate : drawableArr) {
                mutate.mutate();
            }
        }
        if (drawableArr2 != null) {
            for (Drawable mutate2 : drawableArr2) {
                mutate2.mutate();
            }
        }
        if (drawableArr3 != null) {
            for (Drawable mutate22 : drawableArr3) {
                mutate22.mutate();
            }
        }
        if (drawableArr2 != null) {
            for (Drawable drawable : drawableArr2) {
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getPaint().setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
                } else if (drawable instanceof NinePatchDrawable) {
                    ((NinePatchDrawable) drawable).getPaint().setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
                } else {
                    throw new IllegalArgumentException("'middles' must a bitmap or nine patch drawable.");
                }
            }
            this.Ps = new RectF((float) (drawableArr2[0].getBounds().left - 5), (float) (drawableArr2[0].getBounds().top - 5), (float) (drawableArr2[0].getBounds().right + 5), (float) (drawableArr2[0].getBounds().bottom + 5));
        }
    }

    public void setDrawablesForLevels(int[] iArr, int[] iArr2, int[] iArr3) {
        setDrawablesForLevels(b(iArr), b(iArr2), b(iArr3));
    }

    private Drawable[] b(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        Resources resources = getContext().getResources();
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = resources.getDrawable(iArr[i]);
            drawableArr[i].setBounds(0, 0, drawableArr[i].getIntrinsicWidth(), drawableArr[i].getIntrinsicHeight());
        }
        return drawableArr;
    }

    private Drawable ai(int i) {
        return this.Pw == null ? null : this.Pw[i];
    }

    private Drawable aj(int i) {
        return this.Px == null ? null : this.Px[i];
    }

    private Drawable ak(int i) {
        return this.Py == null ? null : this.Py[i];
    }

    public void setRotateVelocity(int i) {
        this.PN = i;
    }

    public void setProgressByAnimator(int i) {
        setProgressByAnimator(i, null);
    }

    public void setOnProgressChangedListener(OnProgressChangedListener onProgressChangedListener) {
        this.Pz = onProgressChangedListener;
    }

    public void setProgressByAnimator(int i, AnimatorListener animatorListener) {
        stopProgressAnimator();
        int abs = Math.abs((int) ((((float) (i - getProgress())) / ((float) getMax())) * 360.0f));
        this.Pu = ObjectAnimator.ofInt(this, "progress", new int[]{i});
        this.Pu.setDuration((long) al(abs));
        this.Pu.setInterpolator(getInterpolator());
        if (animatorListener != null) {
            this.Pu.addListener(animatorListener);
        }
        this.Pu.start();
    }

    public void stopProgressAnimator() {
        if (this.Pu != null && this.Pu.isRunning()) {
            this.Pu.cancel();
        }
    }

    private int al(int i) {
        return (i * 1000) / this.PN;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int progressLevelCount = getProgressLevelCount();
        for (int i = 0; i < progressLevelCount; i++) {
            if (this.Pw != null) {
                this.Pw[i].setState(getDrawableState());
            }
            if (this.Px != null) {
                this.Px[i].setState(getDrawableState());
            }
            if (this.Py != null) {
                this.Py[i].setState(getDrawableState());
            }
        }
        invalidate();
    }

    public synchronized void setProgress(int i) {
        int i2;
        super.setProgress(i);
        if (this.Pv == null) {
            i2 = 0;
        } else {
            i2 = this.Pv.length;
            int i3 = 0;
            while (i3 < i2) {
                if (i < this.Pv[i3]) {
                    break;
                }
                i3++;
            }
            i3 = -1;
            if (i3 != -1) {
                i2 = i3;
            }
        }
        if (i2 != this.PB) {
            this.PI = this.PB;
            this.PB = i2;
            setPrevAlpha(255);
            Animator ofInt = ObjectAnimator.ofInt(this, "prevAlpha", new int[]{0});
            ofInt.setDuration(300);
            ofInt.setInterpolator(new LinearInterpolator());
            ofInt.start();
        }
        if (this.Pz != null) {
            this.Pz.onProgressChanged();
        }
    }

    private float en() {
        return ((float) getProgress()) / ((float) getMax());
    }

    private int getIntrinsicWidth() {
        int intrinsicWidth = aj(0).getIntrinsicWidth();
        if (this.Py != null) {
            intrinsicWidth = Math.max(intrinsicWidth, this.Py[0].getIntrinsicWidth());
        }
        if (this.Pw != null) {
            return Math.max(intrinsicWidth, this.Pw[0].getIntrinsicWidth());
        }
        return intrinsicWidth;
    }

    private int getIntrinsicHeight() {
        int intrinsicHeight = aj(0).getIntrinsicHeight();
        if (this.Py != null) {
            intrinsicHeight = Math.max(intrinsicHeight, this.Py[0].getIntrinsicHeight());
        }
        if (this.Pw != null) {
            return Math.max(intrinsicHeight, this.Pw[0].getIntrinsicHeight());
        }
        return intrinsicHeight;
    }

    protected synchronized void onMeasure(int i, int i2) {
        setMeasuredDimension(getIntrinsicWidth(), getIntrinsicHeight());
    }

    protected synchronized void onDraw(Canvas canvas) {
        a(canvas, ai(this.PB), ak(this.PB), aj(this.PB), en(), 255 - this.PJ);
        if (this.PJ >= 10) {
            a(canvas, ai(this.PI), ak(this.PI), aj(this.PI), en(), this.PJ);
        }
    }

    private void a(Canvas canvas, Drawable drawable, Drawable drawable2, Drawable drawable3, float f, int i) {
        if (drawable != null) {
            drawable.setAlpha(i);
            drawable.draw(canvas);
        }
        if (canvas.isHardwareAccelerated()) {
            canvas.saveLayer((float) drawable3.getBounds().left, (float) drawable3.getBounds().top, (float) drawable3.getBounds().right, (float) drawable3.getBounds().bottom, null, 31);
            this.rb.setStyle(Style.STROKE);
            this.rb.setStrokeWidth((float) drawable3.getBounds().width());
            this.Pt.reset();
            this.Pt.addArc(this.Ps, -90.0f, f * 360.0f);
            canvas.drawPath(this.Pt, this.rb);
            this.rb.setStyle(Style.FILL);
            this.rb.setStrokeWidth(0.0f);
            drawable3.setAlpha(i);
            drawable3.draw(canvas);
            canvas.restore();
        } else {
            if (this.PC == null) {
                this.PC = Bitmap.createBitmap(drawable3.getBounds().width(), drawable3.getBounds().height(), Config.ARGB_8888);
                this.PD = new Canvas(this.PC);
            }
            this.PC.eraseColor(0);
            this.PD.save();
            this.PD.translate((float) (-drawable3.getBounds().left), (float) (-drawable3.getBounds().top));
            this.PD.drawArc(this.Ps, -90.0f, 360.0f * f, true, this.rb);
            drawable3.setAlpha(i);
            drawable3.draw(this.PD);
            this.PD.restore();
            canvas.drawBitmap(this.PC, (float) drawable3.getBounds().left, (float) drawable3.getBounds().top, null);
        }
        drawable = this.PO;
        if (drawable != null) {
            canvas.save();
            int width = ((getWidth() - getPaddingLeft()) - getPaddingRight()) / 2;
            int height = ((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2;
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            canvas.rotate((360.0f * ((float) getProgress())) / ((float) getMax()), (float) width, (float) height);
            intrinsicWidth /= 2;
            intrinsicHeight /= 2;
            drawable.setBounds(width - intrinsicWidth, height - intrinsicHeight, width + intrinsicWidth, height + intrinsicHeight);
            drawable.draw(canvas);
            canvas.restore();
        }
        if (drawable2 != null) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
        }
    }

    public void setPrevAlpha(int i) {
        this.PJ = i;
        invalidate();
    }

    public int getPrevAlpha() {
        return this.PJ;
    }

    public void setThumb(int i) {
        setThumb(getResources().getDrawable(i));
    }

    public void setThumb(Drawable drawable) {
        this.PO = drawable;
    }
}
