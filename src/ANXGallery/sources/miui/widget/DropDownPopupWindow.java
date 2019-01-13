package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_Widget_PopupWindow_class;
import com.miui.internal.variable.Android_Widget_PopupWindow_class.Factory;
import com.miui.internal.widget.ActionModeView;

public class DropDownPopupWindow {
    private PopupWindow Rb;
    private ContainerView Rc;
    private ContentController Rd;
    private ContainerController Re;
    private Controller Rf;
    private int Rg = ActionModeView.ANIMATION_DURATION;
    private int Rh = ActionModeView.ANIMATION_DURATION;
    private boolean Ri;
    private AnimatorUpdateListener Rj = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) DropDownPopupWindow.this.vv.getAnimatedValue()).floatValue();
            if (DropDownPopupWindow.this.Re != null) {
                DropDownPopupWindow.this.Re.onAniamtionUpdate(DropDownPopupWindow.this.Rc, floatValue);
            }
            if (DropDownPopupWindow.this.Rd != null) {
                DropDownPopupWindow.this.Rd.onAniamtionUpdate(DropDownPopupWindow.this.mContentView, floatValue);
            }
        }
    };
    private AnimatorListener Rk = new AnimatorListener() {
        private void eE() {
            if (DropDownPopupWindow.this.Ri) {
                DropDownPopupWindow.this.eC();
            }
        }

        public void onAnimationStart(Animator animator) {
            if (DropDownPopupWindow.this.Ri && DropDownPopupWindow.this.Rf != null) {
                DropDownPopupWindow.this.Rf.onDismiss();
            }
        }

        public void onAnimationEnd(Animator animator) {
            eE();
        }

        public void onAnimationCancel(Animator animator) {
            eE();
        }

        public void onAnimationRepeat(Animator animator) {
        }
    };
    private View mContentView;
    private Context mContext;
    private View oF;
    private ValueAnimator vv;

    public interface Controller {
        void onAniamtionUpdate(View view, float f);

        void onDismiss();

        void onShow();
    }

    public interface ContainerController extends Controller {
        boolean onAddContent(View view, View view2);
    }

    private class ContainerView extends FrameLayout {
        public ContainerView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!super.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
                DropDownPopupWindow.this.dismiss();
            }
            return true;
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 1) {
                return false;
            }
            DropDownPopupWindow.this.dismiss();
            return true;
        }
    }

    public interface ContentController extends Controller {
        View getContentView();
    }

    public static class DefaultContainerController implements ContainerController {
        public void onShow() {
        }

        public void onDismiss() {
        }

        public void onAniamtionUpdate(View view, float f) {
            Drawable background = view.getBackground();
            if (background != null) {
                background.setAlpha((int) (255.0f * f));
            }
        }

        public boolean onAddContent(View view, View view2) {
            return false;
        }
    }

    public static class ViewContentController implements ContentController {
        private int Rm;
        private View Rn;
        private Context mContext;

        public ViewContentController(DropDownPopupWindow dropDownPopupWindow, int i) {
            this(dropDownPopupWindow.getContext(), i);
            dropDownPopupWindow.setContentController(this);
        }

        public ViewContentController(Context context, int i) {
            this.mContext = context;
            this.Rm = i;
        }

        protected void initContent() {
            if (this.Rn == null) {
                this.Rn = LayoutInflater.from(this.mContext).inflate(this.Rm, null);
                onContentInit(this.Rn);
            }
        }

        protected void onContentInit(View view) {
        }

        public void onShow() {
        }

        public void onDismiss() {
        }

        public void onAniamtionUpdate(View view, float f) {
            if (view != null) {
                view.setTranslationY(((float) (-view.getHeight())) * (1.0f - f));
            }
        }

        public View getContentView() {
            initContent();
            return this.Rn;
        }
    }

    public static class ListController extends ViewContentController {
        private ListView cn;

        public ListController(DropDownPopupWindow dropDownPopupWindow) {
            super(dropDownPopupWindow, R.layout.drop_down_popup_list);
        }

        public ListController(DropDownPopupWindow dropDownPopupWindow, int i) {
            super(dropDownPopupWindow, i);
        }

        public ListController(Context context) {
            this(context, R.layout.drop_down_popup_list);
        }

        public ListController(Context context, int i) {
            super(context, i);
        }

        protected void onContentInit(View view) {
            this.cn = (ListView) view.findViewById(16908298);
        }

        public ListView getListView() {
            initContent();
            return this.cn;
        }
    }

    public void setContainerController(ContainerController containerController) {
        this.Re = containerController;
    }

    public void setContentController(ContentController contentController) {
        this.Rd = contentController;
    }

    public void setDropDownController(Controller controller) {
        this.Rf = controller;
    }

    public Context getContext() {
        return this.mContext;
    }

    public DropDownPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this.mContext = context;
        this.Rb = new PopupWindow(context, attributeSet, 0, i);
        this.Rc = new ContainerView(context, attributeSet, i);
        this.Rb.setAnimationStyle(0);
        eB();
    }

    private void eB() {
        this.Rb.setContentView(this.Rc);
        this.Rb.setWidth(-1);
        this.Rb.setHeight(-1);
        Android_Widget_PopupWindow_class android_Widget_PopupWindow_class = Factory.getInstance().get();
        android_Widget_PopupWindow_class.setLayoutInScreenEnabled(this.Rb, true);
        android_Widget_PopupWindow_class.setLayoutInsetDecor(this.Rb, true);
        this.Rb.setSoftInputMode(3);
        this.Rb.setOutsideTouchable(false);
        this.Rb.setFocusable(true);
        this.Rb.setTouchInterceptor(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (motionEvent.getAction() != 0 || (x >= 0 && x < DropDownPopupWindow.this.Rc.getWidth() && y >= 0 && y < DropDownPopupWindow.this.Rc.getHeight())) {
                    return false;
                }
                DropDownPopupWindow.this.dismiss();
                return true;
            }
        });
        this.Rc.setFocusableInTouchMode(true);
        this.Rc.setBackgroundColor(this.mContext.getResources().getColor(R.color.arrow_popup_window_dim_color));
    }

    public void setAnchor(View view) {
        this.oF = view;
    }

    public void show() {
        if (!this.Rb.isShowing()) {
            if (this.Rd != null) {
                this.mContentView = this.Rd.getContentView();
                if (this.mContentView != null && (this.Re == null || !this.Re.onAddContent(this.Rc, this.mContentView))) {
                    this.Rc.removeAllViews();
                    this.Rc.addView(this.mContentView, new LayoutParams(-1, -2));
                }
            }
            if (this.Re != null) {
                this.Re.onShow();
            }
            c(0.0f, 1.0f, this.Rg);
            if (this.oF == null || !this.oF.isAttachedToWindow()) {
                this.Rb.showAtLocation(this.Rc, 8388659, 0, 0);
                return;
            }
            eD();
            int[] iArr = new int[2];
            this.oF.getLocationInWindow(iArr);
            this.Rb.showAtLocation(this.Rc, 0, 0, iArr[1] + this.oF.getHeight());
        } else if (this.oF != null) {
            this.Rb.update(this.oF, 0, 0);
        } else {
            this.Rb.update(0, 0);
        }
    }

    private void c(float f, float f2, int i) {
        if (this.vv != null) {
            this.vv.cancel();
        }
        if (this.Re != null || this.Rd != null) {
            if (this.vv == null) {
                this.vv = ValueAnimator.ofFloat(new float[]{f, f2});
            } else {
                this.vv.setFloatValues(new float[]{f, f2});
            }
            this.vv.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? (long) i : 0);
            this.vv.addUpdateListener(this.Rj);
            this.vv.addListener(this.Rk);
            this.vv.start();
        }
    }

    private void eC() {
        if (this.Rb != null) {
            this.Rb.dismiss();
        }
        if (this.Re != null) {
            this.Re.onDismiss();
        }
        if (this.Rd != null) {
            this.Rd.onDismiss();
        }
        this.Ri = false;
    }

    public void dismiss() {
        this.Ri = true;
        c(1.0f, 0.0f, this.Rh);
    }

    private void eD() {
        View view = this.oF;
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int i = rect.bottom - rect.top;
        int aV = aV();
        if (rect.top > aV) {
            aV = 0;
        }
        i = ((i + aV) - iArr[1]) - view.getHeight();
        if (i > 0) {
            this.Rb.setHeight(i);
        }
    }

    private int aV() {
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
