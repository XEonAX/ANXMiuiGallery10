package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import miui.view.EditActionMode;
import miui.widget.ArrowPopupWindow;

public class ArrowPopupView extends FrameLayout implements OnTouchListener {
    public static final int ARROW_BOTTOM_MODE = 0;
    public static final int ARROW_LEFT_MODE = 3;
    public static final int ARROW_NONE_MODE = -1;
    public static final int ARROW_RIGHT_MODE = 2;
    public static final int ARROW_TOP_MODE = 1;
    private static final String TAG = "ArrowPopupView";
    private static final int tk = 4;
    private static final int tl = 8;
    private Drawable ny;
    private LinearLayout qi;
    private View sD;
    private ImageView sE;
    private FrameLayout sF;
    private LinearLayout sG;
    private TextView sH;
    private Button sI;
    private Button sJ;
    private WrapperOnClickListener sK;
    private WrapperOnClickListener sL;
    private int sM;
    private int sN;
    private Drawable sO;
    private Drawable sP;
    private Drawable sQ;
    private Drawable sR;
    private Drawable sS;
    private Drawable sT;
    private Drawable sU;
    private Drawable sV;
    private ArrowPopupWindow sW;
    private OnTouchListener sX;
    private Rect sY;
    private RectF sZ;
    private AnimatorSet ta;
    private AnimationSet tb;
    private boolean tc;
    private int td;
    private int te;
    private int tf;
    private int tg;
    private int th;
    private boolean ti;
    private int tj;
    private AnimationListener tm;
    private AnimationListener tn;
    private int to;

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
            ArrowPopupView.this.sW.dismiss(true);
        }
    }

    public ArrowPopupView(Context context) {
        this(context, null);
    }

    public ArrowPopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.arrowPopupViewStyle);
    }

    public ArrowPopupView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.sY = new Rect();
        this.sZ = new RectF();
        this.ti = false;
        this.tm = new AnimationListener() {
            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                ArrowPopupView.this.tb = null;
                if (ArrowPopupView.this.ti) {
                    ArrowPopupView.this.bE();
                }
            }

            public void onAnimationRepeat(Animation animation) {
            }
        };
        this.tn = new AnimationListener() {
            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                ArrowPopupView.this.tc = false;
                ArrowPopupView.this.tb = null;
                ArrowPopupView.this.sW.dismiss();
                ArrowPopupView.this.setArrowMode(-1);
            }

            public void onAnimationRepeat(Animation animation) {
            }
        };
        this.to = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ArrowPopupView, i, 0);
        this.ny = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_contentBackground);
        this.sO = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_backgroundLeft);
        this.sP = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_backgroundRight);
        this.sQ = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_titleBackground);
        this.sR = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_topArrow);
        this.sS = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_topArrowWithTitle);
        this.sT = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_bottomArrow);
        this.sU = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_rightArrow);
        this.sV = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_leftArrow);
        obtainStyledAttributes.recycle();
        this.td = context.getResources().getDimensionPixelOffset(R.dimen.arrow_popup_window_min_border);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.sE = (ImageView) findViewById(R.id.popup_arrow);
        this.sF = (FrameLayout) findViewById(16908290);
        this.sG = (LinearLayout) findViewById(R.id.content_wrapper);
        this.sG.setBackground(this.ny);
        if (!(this.sO == null || this.sP == null)) {
            Rect rect = new Rect();
            this.sO.getPadding(rect);
            this.sG.setPadding(rect.top, rect.top, rect.top, rect.top);
        }
        this.qi = (LinearLayout) findViewById(R.id.title_layout);
        this.qi.setBackground(this.sQ);
        this.sH = (TextView) findViewById(16908310);
        this.sI = (Button) findViewById(EditActionMode.BUTTON2);
        this.sJ = (Button) findViewById(EditActionMode.BUTTON1);
        this.sK = new WrapperOnClickListener();
        this.sL = new WrapperOnClickListener();
        this.sI.setOnClickListener(this.sK);
        this.sJ.setOnClickListener(this.sL);
    }

    public void setContentView(View view) {
        setContentView(view, new LayoutParams(-2, -2));
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        this.sF.removeAllViews();
        if (view != null) {
            this.sF.addView(view, layoutParams);
        }
    }

    public View getContentView() {
        if (this.sF.getChildCount() > 0) {
            return this.sF.getChildAt(0);
        }
        return null;
    }

    public void setContentView(int i) {
        setContentView(LayoutInflater.from(getContext()).inflate(i, null));
    }

    public void setTitle(CharSequence charSequence) {
        this.qi.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        this.sH.setText(charSequence);
    }

    public void setNegativeButton(CharSequence charSequence, OnClickListener onClickListener) {
        this.sJ.setText(charSequence);
        this.sJ.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        this.sL.setOnClickListener(onClickListener);
    }

    public void setPositiveButton(CharSequence charSequence, OnClickListener onClickListener) {
        this.sI.setText(charSequence);
        this.sI.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        this.sK.setOnClickListener(onClickListener);
    }

    public Button getPositiveButton() {
        return this.sI;
    }

    public Button getNegativeButton() {
        return this.sJ;
    }

    private void bx() {
        if (this.to == 0 || this.to == 1) {
            bA();
        } else {
            bB();
        }
        View contentView = getContentView();
        if (contentView != null) {
            LayoutParams layoutParams = contentView.getLayoutParams();
            if (contentView.getMeasuredHeight() > this.sG.getMeasuredHeight() - this.qi.getMeasuredHeight()) {
                layoutParams.height = this.sG.getMeasuredHeight() - this.qi.getMeasuredHeight();
                contentView.setLayoutParams(layoutParams);
            } else if (contentView.getMeasuredWidth() > this.sG.getMeasuredWidth()) {
                layoutParams.width = this.sG.getMeasuredWidth();
                contentView.setLayoutParams(layoutParams);
            }
            if (layoutParams.height <= 0 || layoutParams.width <= 0) {
                Log.w(TAG, "Invalid LayoutPrams of content view, please check the anchor view");
            }
        }
    }

    private boolean g(View view) {
        boolean z = false;
        if (VERSION.SDK_INT >= 28) {
            try {
                Method declaredMethod = Class.forName("android.view.View").getDeclaredMethod("getRootWindowInsets", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(view, new Object[0]);
                if (invoke != null) {
                    declaredMethod = Class.forName("android.view.WindowInsets").getDeclaredMethod("getDisplayCutout", new Class[0]);
                    declaredMethod.setAccessible(true);
                    if (declaredMethod.invoke(invoke, new Object[0]) != null) {
                        z = true;
                    }
                    return z;
                }
            } catch (Throwable e) {
                Log.e(TAG, "NoSuchMethodException in isNotchOverOreo()", e);
            } catch (Throwable e2) {
                Log.e(TAG, "IllegalAccessException in isNotchOverOreo()", e2);
            } catch (Throwable e22) {
                Log.e(TAG, "InvocationTargetException in isNotchOverOreo()", e22);
            } catch (Throwable e222) {
                Log.e(TAG, "ClassNotFoundException in isNotchOverOreo()", e222);
            }
        }
        return false;
    }

    private boolean h(View view) {
        if (bz() && g(view)) {
            WindowManager.LayoutParams attributes = ((Activity) this.sW.getContext()).getWindow().getAttributes();
            try {
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("layoutInDisplayCutoutMode");
                declaredField.setAccessible(true);
                Integer num = (Integer) declaredField.get(attributes);
                if (by()) {
                    if (!num.equals(Integer.valueOf(2))) {
                        return true;
                    }
                } else if (num.equals(Integer.valueOf(1))) {
                    return true;
                }
            } catch (Throwable e) {
                Log.e(TAG, "NoSuchFieldException in isNotchShow()", e);
            } catch (Throwable e2) {
                Log.e(TAG, "NoSuchFieldException in isNotchShow()", e2);
            }
        }
        return false;
    }

    private boolean by() {
        boolean z = false;
        if (!bz()) {
            return false;
        }
        if ((((Activity) this.sW.getContext()).getWindow().getAttributes().flags & 1024) == 0) {
            z = true;
        }
        return z;
    }

    private boolean bz() {
        return this.sW != null && (this.sW.getContext() instanceof Activity);
    }

    private static int a(Resources resources) {
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void bA() {
        int width = this.sD.getWidth();
        int height = this.sD.getHeight();
        int width2 = getWidth();
        int height2 = getHeight();
        int measuredWidth = this.sG.getMeasuredWidth() > this.sG.getMinimumWidth() ? this.sG.getMeasuredWidth() : this.sG.getMinimumWidth();
        int measuredHeight = this.sG.getMeasuredHeight() > this.sG.getMinimumHeight() ? this.sG.getMeasuredHeight() : this.sG.getMinimumHeight();
        int bC = bC();
        int bD = bD();
        int[] iArr = new int[2];
        this.sD.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        getLocationInWindow(iArr);
        this.te = ((width / 2) + i) - iArr[0];
        int i3 = width2 - this.te;
        this.tg = (i + ((width - bC) / 2)) - iArr[0];
        this.tf = getTop() + this.sN;
        if (this.to == 0) {
            this.tf += ((i2 - iArr[1]) - measuredHeight) + (this.sG.getPaddingBottom() - bD);
            width = this.sN + ((i2 - iArr[1]) - bD);
        } else if (this.to == 1) {
            this.tf += (((i2 + height) - iArr[1]) - this.sG.getPaddingTop()) + bD;
            width = this.tf;
        } else {
            width = 0;
        }
        height = measuredWidth / 2;
        int i4 = measuredWidth - height;
        if (this.te >= height && i3 >= i4) {
            this.te -= height;
        } else if (i3 < i4) {
            this.te = width2 - measuredWidth;
        } else if (this.te < height) {
            this.te = 0;
        }
        this.te += this.sM;
        this.tg += this.sM;
        if (this.tg < 0) {
            this.tg = 0;
        } else if (this.tg + bC > width2) {
            this.tg -= (this.tg + bC) - width2;
        }
        if (h(this.sD)) {
            height = a(this.sD.getResources());
            this.tf -= height;
            width -= height;
        }
        this.sG.layout(Math.max(this.te, 0), Math.max(this.tf, 0), Math.min(this.te + measuredWidth, width2), Math.min(this.tf + measuredHeight, height2));
        this.sE.layout(this.tg, width, this.tg + bC, bD + width);
    }

    private void bB() {
        int i;
        int[] iArr = new int[2];
        this.sD.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        getLocationInWindow(iArr);
        int width = this.sD.getWidth();
        int height = this.sD.getHeight();
        int width2 = getWidth();
        int height2 = getHeight();
        int measuredWidth = this.sG.getMeasuredWidth() > this.sG.getMinimumWidth() ? this.sG.getMeasuredWidth() : this.sG.getMinimumWidth();
        int measuredHeight = this.sG.getMeasuredHeight() > this.sG.getMinimumHeight() ? this.sG.getMeasuredHeight() : this.sG.getMinimumHeight();
        int bC = bC();
        int bD = bD();
        this.tf = ((height / 2) + i3) - iArr[1];
        int i4 = height2 - this.tf;
        this.th = (i3 + ((height - bD) / 2)) - iArr[1];
        int i5 = measuredHeight / 2;
        i3 = measuredHeight - i5;
        this.te = getLeft() + this.sM;
        if (this.to == 2) {
            this.te += (((i2 - measuredWidth) + this.sG.getPaddingRight()) - bC) - iArr[0];
            i = ((i2 - bC) - iArr[0]) + this.sM;
        } else if (this.to == 3) {
            this.te += (((i2 + width) - this.sG.getPaddingLeft()) + bC) - iArr[0];
            i = this.te;
        } else {
            i = 0;
        }
        if (this.tf >= i5 && i4 >= i3) {
            this.tf = (this.tf - i5) + this.sN;
        } else if (i4 < i3) {
            this.tf = (height2 - measuredHeight) + this.sN;
        } else if (this.tf < i5) {
            this.tf = this.sN;
        }
        this.th += this.sN;
        if (this.th < 0) {
            this.th = 0;
        } else if (this.th + bD > height2) {
            this.th -= (this.th + bD) - height2;
        }
        if (h(this.sD)) {
            int a = a(this.sD.getResources());
            this.tf -= a;
            this.th -= a;
        }
        this.sG.layout(Math.max(this.te, 0), Math.max(this.tf, 0), Math.min(this.te + measuredWidth, width2), Math.min(this.tf + measuredHeight, height2));
        this.sE.layout(i, this.th, bC + i, this.th + bD);
    }

    private int bC() {
        int measuredWidth = this.sE.getMeasuredWidth();
        if (measuredWidth == 0) {
            return this.sE.getDrawable().getIntrinsicWidth();
        }
        return measuredWidth;
    }

    private int bD() {
        int measuredHeight = this.sE.getMeasuredHeight();
        if (measuredHeight == 0) {
            return this.sE.getDrawable().getIntrinsicHeight();
        }
        return measuredHeight;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.to == -1) {
            bF();
        }
        bx();
    }

    protected void onDraw(Canvas canvas) {
        if (this.ny == null) {
            float f;
            int measuredWidth;
            int right;
            int width = this.te + (this.sG.getWidth() / 2);
            int height = this.tf + (this.sG.getHeight() / 2);
            switch (this.to) {
                case 0:
                    f = 180.0f;
                    measuredWidth = this.tg + (this.sE.getMeasuredWidth() / 2);
                    right = this.sG.getRight() - measuredWidth;
                    measuredWidth -= this.te;
                    break;
                case 1:
                    int measuredWidth2 = this.tg + (this.sE.getMeasuredWidth() / 2);
                    right = measuredWidth2 - this.te;
                    measuredWidth = this.sG.getRight() - measuredWidth2;
                    f = 0.0f;
                    break;
                case 2:
                    f = 90.0f;
                    measuredWidth = this.th + (this.sE.getMeasuredHeight() / 2);
                    right = measuredWidth - this.tf;
                    measuredWidth = this.sG.getBottom() - measuredWidth;
                    break;
                case 3:
                    f = -90.0f;
                    measuredWidth = this.th + (this.sE.getMeasuredHeight() / 2);
                    right = this.sG.getBottom() - measuredWidth;
                    measuredWidth -= this.tf;
                    break;
                default:
                    f = 0.0f;
                    measuredWidth = 0;
                    right = measuredWidth;
                    break;
            }
            int save = canvas.save();
            canvas.rotate(f, (float) width, (float) height);
            switch (this.to) {
                case 0:
                case 1:
                    canvas.translate((float) this.te, (float) this.tf);
                    this.sO.setBounds(0, 0, right, this.sG.getHeight());
                    canvas.translate(0.0f, (float) (this.to == 1 ? this.tj : -this.tj));
                    this.sO.draw(canvas);
                    canvas.translate((float) right, 0.0f);
                    this.sP.setBounds(0, 0, measuredWidth, this.sG.getHeight());
                    this.sP.draw(canvas);
                    break;
                case 2:
                case 3:
                    canvas.translate((float) (width - (this.sG.getHeight() / 2)), (float) (height - (this.sG.getWidth() / 2)));
                    this.sO.setBounds(0, 0, right, this.sG.getWidth());
                    canvas.translate(0.0f, (float) (this.to == 3 ? this.tj : -this.tj));
                    this.sO.draw(canvas);
                    canvas.translate((float) right, 0.0f);
                    this.sP.setBounds(0, 0, measuredWidth, this.sG.getWidth());
                    this.sP.draw(canvas);
                    break;
            }
            canvas.restoreToCount(save);
        }
    }

    @Deprecated
    public float getRollingPercent() {
        return 1.0f;
    }

    @Deprecated
    public void setRollingPercent(float f) {
    }

    private void a(float[] fArr) {
        float f;
        int top = this.sE.getTop();
        int bottom = this.sE.getBottom();
        int left = this.sE.getLeft();
        int right = this.sE.getRight();
        float f2 = 0.0f;
        switch (this.to) {
            case 0:
                f2 = (float) (left + ((right - left) / 2));
                f = (float) bottom;
                break;
            case 1:
                f2 = (float) (left + ((right - left) / 2));
                f = (float) top;
                break;
            case 2:
                f2 = (float) right;
                f = (float) (top + ((bottom - top) / 2));
                break;
            case 3:
                f2 = (float) left;
                f = (float) (top + ((bottom - top) / 2));
                break;
            default:
                f = 0.0f;
                break;
        }
        fArr[0] = f2;
        fArr[1] = f;
    }

    public void animateToShow() {
        invalidate();
        getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                ArrowPopupView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ArrowPopupView.this.ta != null) {
                    ArrowPopupView.this.ta.cancel();
                }
                if (ArrowPopupView.this.tb != null) {
                    ArrowPopupView.this.tb.cancel();
                }
                ArrowPopupView.this.tb = new AnimationSet(true);
                float[] fArr = new float[2];
                ArrowPopupView.this.a(fArr);
                Animation scaleAnimation = new ScaleAnimation(0.6f, 1.0f, 0.6f, 1.0f, 0, fArr[0], 0, fArr[1]);
                Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                    scaleAnimation.setDuration(280);
                    alphaAnimation.setDuration(280);
                } else {
                    ArrowPopupView.this.tb.setDuration(0);
                }
                ArrowPopupView.this.tb.addAnimation(scaleAnimation);
                ArrowPopupView.this.tb.addAnimation(alphaAnimation);
                ArrowPopupView.this.tb.setAnimationListener(ArrowPopupView.this.tm);
                ArrowPopupView.this.tb.setInterpolator(new DecelerateInterpolator(2.0f));
                ArrowPopupView.this.startAnimation(ArrowPopupView.this.tb);
                return true;
            }
        });
    }

    public void animateToDismiss() {
        if (!this.tc) {
            if (this.ta != null) {
                this.ta.cancel();
            }
            if (this.tb != null) {
                this.tb.cancel();
            }
            this.tb = new AnimationSet(true);
            float[] fArr = new float[2];
            a(fArr);
            Animation scaleAnimation = new ScaleAnimation(1.0f, 0.6f, 1.0f, 0.6f, 0, fArr[0], 0, fArr[1]);
            Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                scaleAnimation.setDuration(150);
                alphaAnimation.setDuration(150);
            } else {
                this.tb.setDuration(0);
            }
            this.tb.addAnimation(scaleAnimation);
            this.tb.addAnimation(alphaAnimation);
            this.tb.setAnimationListener(this.tn);
            this.tb.setInterpolator(new AccelerateInterpolator(2.0f));
            startAnimation(this.tb);
        }
    }

    private void bE() {
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            if (this.tb != null) {
                this.tb.cancel();
            }
            if (this.ta != null) {
                this.ta.cancel();
            }
            this.ta = new AnimatorSet();
            this.ta.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    ArrowPopupView.this.sW.dismiss();
                }
            });
            float f = 4.0f * getContext().getResources().getDisplayMetrics().density;
            Property property = View.TRANSLATION_Y;
            int i = this.to;
            if (i != 0) {
                switch (i) {
                    case 2:
                        f = -f;
                        property = View.TRANSLATION_X;
                        break;
                    case 3:
                        property = View.TRANSLATION_X;
                        break;
                }
            }
            f = -f;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.sG, property, new float[]{0.0f, f, 0.0f});
            ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat.setDuration(1200);
            ofFloat.setRepeatCount(8);
            ofFloat.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ArrowPopupView.this.tj = ((Float) valueAnimator.getAnimatedValue()).intValue();
                    int abs = Math.abs(ArrowPopupView.this.tj);
                    ArrowPopupView.this.invalidate(ArrowPopupView.this.sG.getLeft() - abs, ArrowPopupView.this.sG.getTop() - abs, ArrowPopupView.this.sG.getRight() + abs, ArrowPopupView.this.sG.getBottom() + abs);
                }
            });
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.sE, property, new float[]{0.0f, f, 0.0f});
            ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat2.setDuration(1200);
            ofFloat2.setRepeatCount(8);
            this.ta.playTogether(new Animator[]{ofFloat, ofFloat2});
            this.ta.start();
        }
    }

    private void bF() {
        int[] iArr = new int[2];
        this.sD.getLocationInWindow(iArr);
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = this.sG.getMeasuredWidth();
        int measuredHeight = this.sG.getMeasuredHeight();
        int height2 = this.sD.getHeight();
        int width2 = this.sD.getWidth();
        r9 = new int[4];
        int i = 0;
        r9[0] = iArr[1] - measuredHeight;
        r9[1] = ((height - iArr[1]) - height2) - measuredHeight;
        r9[2] = iArr[0] - measuredWidth;
        r9[3] = ((width - iArr[0]) - width2) - measuredWidth;
        int i2 = Integer.MIN_VALUE;
        int i3 = 0;
        while (i < 4) {
            if (r9[i] >= this.td) {
                i3 = i;
                break;
            }
            if (r9[i] > i2) {
                i2 = r9[i];
                i3 = i;
            }
            i++;
        }
        setArrowMode(i3);
    }

    public int getArrowMode() {
        return this.to;
    }

    public void setArrowMode(int i) {
        this.to = i;
        switch (i) {
            case 0:
                this.sE.setImageDrawable(this.sT);
                return;
            case 1:
                this.sE.setImageDrawable(this.qi.getVisibility() == 0 ? this.sS : this.sR);
                return;
            case 2:
                this.sE.setImageDrawable(this.sU);
                return;
            case 3:
                this.sE.setImageDrawable(this.sV);
                return;
            default:
                return;
        }
    }

    public void setAnchor(View view) {
        this.sD = view;
    }

    public void setOffset(int i, int i2) {
        this.sM = i;
        this.sN = i2;
    }

    public void setArrowPopupWindow(ArrowPopupWindow arrowPopupWindow) {
        this.sW = arrowPopupWindow;
    }

    public void setTouchInterceptor(OnTouchListener onTouchListener) {
        this.sX = onTouchListener;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        Rect rect = this.sY;
        this.sG.getHitRect(rect);
        boolean z = true;
        if (motionEvent.getAction() != 0 || rect.contains(x, y)) {
            if (this.sX == null || !this.sX.onTouch(view, motionEvent)) {
                z = false;
            }
            return z;
        }
        this.sW.dismiss(true);
        return true;
    }

    public void enableShowingAnimation(boolean z) {
        this.ti = z;
    }
}
