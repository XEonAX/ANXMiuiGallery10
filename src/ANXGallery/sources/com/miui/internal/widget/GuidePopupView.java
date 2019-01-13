package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import miui.widget.GuidePopupWindow;

public class GuidePopupView extends FrameLayout implements OnTouchListener {
    public static final int ARROW_BOTTOM_LEFT_MODE = 7;
    public static final int ARROW_BOTTOM_MODE = 0;
    public static final int ARROW_BOTTOM_RIGHT_MODE = 5;
    public static final int ARROW_LEFT_MODE = 3;
    public static final int ARROW_NONE_MODE = -1;
    public static final int ARROW_RIGHT_MODE = 2;
    public static final int ARROW_TOP_LEFT_MODE = 4;
    public static final int ARROW_TOP_MODE = 1;
    public static final int ARROW_TOP_RIGHT_MODE = 6;
    private Context mContext;
    private final Paint rb;
    private View sD;
    private int sM;
    private int sN;
    private OnTouchListener sX;
    private boolean tc;
    private int td;
    private int to;
    private int uA;
    private ColorStateList uB;
    private boolean uC;
    private AnimatorListener uD;
    private AnimatorListener uE;
    private LinearLayout ul;
    private LinearLayout um;
    private boolean un;
    private int uo;
    private GuidePopupWindow uq;
    private ObjectAnimator ur;
    private int us;
    private int ut;
    private int uu;
    private int uv;
    private float uw;
    private float ux;
    private float uy;
    private int uz;

    class WrapperOnClickListener implements OnClickListener {
        public OnClickListener rC;

        WrapperOnClickListener() {
        }

        public void setOnClickListener(OnClickListener onClickListener) {
            this.rC = onClickListener;
        }

        public void onClick(View view) {
            if (this.rC != null) {
                this.rC.onClick(view);
            }
            GuidePopupView.this.uq.dismiss(true);
        }
    }

    public GuidePopupView(Context context) {
        this(context, null);
    }

    public GuidePopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.guidePopupViewStyle);
    }

    public GuidePopupView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.un = true;
        this.uB = null;
        this.rb = new Paint();
        this.uD = new AnimatorListenerAdapter() {
            private boolean mCancel;

            public void onAnimationStart(Animator animator) {
                this.mCancel = false;
            }

            public void onAnimationCancel(Animator animator) {
                this.mCancel = true;
            }

            public void onAnimationEnd(Animator animator) {
                if (!this.mCancel) {
                    GuidePopupView.this.ur = null;
                }
            }
        };
        this.uE = new AnimatorListenerAdapter() {
            private boolean mCancel;

            public void onAnimationStart(Animator animator) {
                this.mCancel = false;
                GuidePopupView.this.tc = true;
            }

            public void onAnimationCancel(Animator animator) {
                this.mCancel = true;
            }

            public void onAnimationEnd(Animator animator) {
                if (!this.mCancel) {
                    GuidePopupView.this.tc = false;
                    GuidePopupView.this.ur = null;
                    GuidePopupView.this.uq.dismiss();
                    GuidePopupView.this.setArrowMode(-1);
                }
            }
        };
        this.to = -1;
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GuidePopupView, i, 0);
        this.uw = obtainStyledAttributes.getDimension(R.styleable.GuidePopupView_startPointRadius, 0.0f);
        this.ux = obtainStyledAttributes.getDimension(R.styleable.GuidePopupView_lineLength, 0.0f);
        this.uy = obtainStyledAttributes.getDimension(R.styleable.GuidePopupView_textCircleRadius, 0.0f);
        this.uz = obtainStyledAttributes.getColor(R.styleable.GuidePopupView_android_colorBackground, 0);
        this.rb.setColor(obtainStyledAttributes.getColor(R.styleable.GuidePopupView_paintColor, -1));
        this.uA = obtainStyledAttributes.getDimensionPixelSize(R.styleable.GuidePopupView_android_textSize, 15);
        this.uB = obtainStyledAttributes.getColorStateList(R.styleable.GuidePopupView_android_textColor);
        obtainStyledAttributes.recycle();
        this.td = (int) (this.ux + (this.uy * 2.5f));
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.ul = (LinearLayout) findViewById(R.id.text_group);
        this.um = (LinearLayout) findViewById(R.id.mirrored_text_group);
    }

    /* JADX WARNING: Missing block: B:14:0x0067, code:
            if (((float) (r1 - r7)) < r11.uy) goto L_0x0096;
     */
    /* JADX WARNING: Missing block: B:17:0x0072, code:
            r2 = 6;
     */
    /* JADX WARNING: Missing block: B:19:0x007a, code:
            if (((float) (r1 - r7)) < r11.uy) goto L_0x00a1;
     */
    /* JADX WARNING: Missing block: B:23:0x008b, code:
            if (((float) (r0 - r4)) < r11.uy) goto L_0x0072;
     */
    /* JADX WARNING: Missing block: B:26:0x0096, code:
            r2 = 7;
     */
    /* JADX WARNING: Missing block: B:28:0x009e, code:
            if (((float) (r0 - r4)) < r11.uy) goto L_0x00a1;
     */
    /* JADX WARNING: Missing block: B:29:0x00a1, code:
            r2 = 5;
     */
    /* JADX WARNING: Missing block: B:30:0x00a3, code:
            r2 = r5;
     */
    /* JADX WARNING: Missing block: B:31:0x00a4, code:
            setArrowMode(r2);
     */
    /* JADX WARNING: Missing block: B:32:0x00a7, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void bF() {
        int width = getWidth();
        int height = getHeight();
        int i = 4;
        r3 = new int[4];
        int i2 = 0;
        r3[0] = this.ut;
        r3[1] = (height - this.ut) - this.uv;
        r3[2] = this.us;
        r3[3] = (width - this.us) - this.uu;
        int i3 = this.us + (this.uu / 2);
        int i4 = this.ut + (this.uv / 2);
        int i5 = Integer.MIN_VALUE;
        int i6 = 0;
        while (i2 < 4) {
            if (r3[i2] >= this.td) {
                break;
            }
            if (r3[i2] > i5) {
                i5 = r3[i2];
                i6 = i2;
            }
            i2++;
        }
        i2 = i6;
        switch (i2) {
            case 0:
                if (((float) i3) >= this.uy) {
                    break;
                }
                break;
            case 1:
                if (((float) i3) >= this.uy) {
                    break;
                }
                break;
            case 2:
                if (((float) i4) >= this.uy) {
                    break;
                }
                break;
            case 3:
                if (((float) i4) >= this.uy) {
                    break;
                }
                break;
        }
    }

    private void bx() {
        bK();
        a(this.to, this.ul, this.sM, this.sN);
        if (this.uC) {
            a(bL(), this.um, -this.sM, -this.sN);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.uu == 0 || this.uv == 0) {
            setAnchor(this.sD);
        }
        this.uy = (float) Math.max(Math.sqrt(Math.pow((double) this.ul.getMeasuredWidth(), 2.0d) + Math.pow((double) this.ul.getMeasuredHeight(), 2.0d)) / 2.0d, (double) this.uy);
        if (this.uC) {
            this.uy = (float) Math.max(Math.sqrt(Math.pow((double) this.um.getMeasuredWidth(), 2.0d) + Math.pow((double) this.um.getMeasuredHeight(), 2.0d)) / 2.0d, (double) this.uy);
        }
        if (this.to == -1) {
            bF();
        } else {
            bx();
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        canvas.save();
        canvas.translate((float) this.us, (float) this.ut);
        this.sD.setDrawingCacheEnabled(true);
        this.sD.buildDrawingCache();
        canvas.drawBitmap(this.sD.getDrawingCache(), 0.0f, 0.0f, null);
        this.sD.setDrawingCacheEnabled(false);
        canvas.restore();
        a(canvas, this.to, this.sM, this.sN);
        if (this.uC) {
            a(canvas, bL(), -this.sM, -this.sN);
        }
    }

    private void a(Canvas canvas, int i, int i2, int i3) {
        float f;
        this.rb.setAntiAlias(true);
        this.rb.setStyle(Style.FILL);
        float f2 = (float) ((this.us + (this.uu / 2)) + i2);
        float f3 = (float) ((this.ut + (this.uv / 2)) + i3);
        switch (i) {
            case 0:
                f = 180.0f;
                break;
            case 2:
                f = 90.0f;
                break;
            case 3:
                f = -90.0f;
                break;
            case 4:
                f = -45.0f;
                break;
            case 5:
                f = 135.0f;
                break;
            case 6:
                f = 45.0f;
                break;
            case 7:
                f = -135.0f;
                break;
            default:
                f = 0.0f;
                break;
        }
        canvas.save();
        canvas.rotate(f, f2, f3);
        canvas.translate(0.0f, (float) this.uo);
        i = canvas.save();
        float f4 = f3;
        canvas.clipRect(f2 - 2.0f, f4, f2 + 2.0f, f3 + this.uw, Op.DIFFERENCE);
        canvas.drawCircle(f2, f3, this.uw, this.rb);
        canvas.restoreToCount(i);
        this.rb.setStyle(Style.STROKE);
        this.rb.setStrokeWidth(4.0f);
        canvas.drawLine(f2, f4, f2, f3 + this.ux, this.rb);
        f3 = (f3 + this.ux) + this.uy;
        this.rb.setStyle(Style.STROKE);
        this.rb.setStrokeWidth(4.0f);
        canvas.drawCircle(f2, f3, this.uy, this.rb);
        canvas.restore();
    }

    private void a(int i, LinearLayout linearLayout, int i2, int i3) {
        float f = (((float) this.uo) + this.ux) + this.uy;
        int i4 = this.us + (this.uu / 2);
        int i5 = this.ut + (this.uv / 2);
        int i6 = 0;
        switch (i) {
            case 0:
            case 5:
            case 7:
                i6 = i4 - (linearLayout.getMeasuredWidth() / 2);
                i4 = (int) ((((float) i5) - f) - ((float) (linearLayout.getMeasuredHeight() / 2)));
                break;
            case 1:
            case 4:
            case 6:
                i6 = i4 - (linearLayout.getMeasuredWidth() / 2);
                i4 = (int) ((((float) i5) + f) - ((float) (linearLayout.getMeasuredHeight() / 2)));
                break;
            case 2:
                i6 = (int) ((((float) i4) - f) - ((float) (linearLayout.getMeasuredWidth() / 2)));
                i4 = i5 - (linearLayout.getMeasuredHeight() / 2);
                break;
            case 3:
                i6 = (int) ((((float) i4) + f) - ((float) (linearLayout.getMeasuredWidth() / 2)));
                i4 = i5 - (linearLayout.getMeasuredHeight() / 2);
                break;
            default:
                i4 = 0;
                break;
        }
        i5 = (int) (((double) f) * Math.sin(0.7853981633974483d));
        int i7 = (int) (f - ((float) i5));
        switch (i) {
            case 4:
                i6 += i5;
                i4 -= i7;
                break;
            case 5:
                i6 -= i5;
                i4 += i7;
                break;
            case 6:
                i6 -= i5;
                i4 -= i7;
                break;
            case 7:
                i6 += i5;
                i4 += i7;
                break;
        }
        i6 += i2;
        i4 += i3;
        linearLayout.layout(i6, i4, linearLayout.getMeasuredWidth() + i6, linearLayout.getMeasuredHeight() + i4);
    }

    private void bK() {
        if (this.un) {
            int i = this.uu / 2;
            int i2 = this.uv / 2;
            int sqrt = (int) Math.sqrt(Math.pow((double) i, 2.0d) + Math.pow((double) i2, 2.0d));
            switch (this.to) {
                case 0:
                case 1:
                    this.uo = i2;
                    break;
                case 2:
                case 3:
                    this.uo = i;
                    break;
                default:
                    this.uo = sqrt;
                    break;
            }
            return;
        }
        this.uo = 0;
    }

    private int bL() {
        if (this.to == -1) {
            return -1;
        }
        if (this.to % 2 == 0) {
            return this.to + 1;
        }
        return this.to - 1;
    }

    public void animateToShow() {
        setAlpha(0.0f);
        invalidate();
        getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                GuidePopupView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                if (GuidePopupView.this.ur != null) {
                    GuidePopupView.this.ur.cancel();
                }
                GuidePopupView.this.ur = ObjectAnimator.ofFloat(GuidePopupView.this, View.ALPHA, new float[]{1.0f});
                GuidePopupView.this.ur.setDuration(300);
                GuidePopupView.this.ur.addListener(GuidePopupView.this.uD);
                GuidePopupView.this.ur.start();
                return true;
            }
        });
    }

    public void animateToDismiss() {
        if (!this.tc) {
            if (this.ur != null) {
                this.ur.cancel();
            }
            this.ur = ObjectAnimator.ofFloat(this, View.ALPHA, new float[]{0.0f});
            this.ur.setDuration(200);
            this.ur.addListener(this.uE);
            this.ur.start();
        }
    }

    public int getArrowMode() {
        return this.to;
    }

    public void setArrowMode(int i) {
        this.to = i;
    }

    public void setArrowMode(int i, boolean z) {
        setArrowMode(i);
        this.uC = z;
        if (this.uC) {
            this.um.setVisibility(0);
        } else {
            this.um.setVisibility(8);
        }
    }

    public void setAnchor(View view) {
        this.sD = view;
        this.uu = this.sD.getWidth();
        this.uv = this.sD.getHeight();
        int[] iArr = new int[2];
        this.sD.getLocationInWindow(iArr);
        this.us = iArr[0];
        this.ut = iArr[1];
    }

    public void setOffset(int i, int i2) {
        this.sM = i;
        this.sN = i2;
        this.un = false;
    }

    public void clearOffset() {
        setOffset(0, 0);
        this.un = true;
    }

    public void setGuidePopupWindow(GuidePopupWindow guidePopupWindow) {
        this.uq = guidePopupWindow;
    }

    public int getColorBackground() {
        return this.uz;
    }

    public void addGuideTextView(LinearLayout linearLayout, String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("\n");
            if (split != null && split.length != 0) {
                for (CharSequence text : split) {
                    TextView textView = (TextView) inflate(this.mContext, R.layout.guide_popup_text_view, null);
                    textView.setText(text);
                    textView.setTextSize(0, (float) this.uA);
                    if (this.uB != null) {
                        textView.setTextColor(this.uB);
                    }
                    linearLayout.addView(textView);
                }
            }
        }
    }

    public void setTouchInterceptor(OnTouchListener onTouchListener) {
        this.sX = onTouchListener;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        Rect rect = new Rect(this.us, this.ut, this.us + this.sD.getWidth(), this.ut + this.sD.getHeight());
        if (motionEvent.getAction() == 0 && rect.contains(x, y)) {
            this.sD.callOnClick();
            return true;
        }
        this.uq.dismiss(true);
        return true;
    }
}
