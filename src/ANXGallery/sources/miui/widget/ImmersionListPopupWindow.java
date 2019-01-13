package miui.widget;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.LayoutAnimationController;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_Widget_PopupWindow_class;
import com.miui.internal.variable.Android_Widget_PopupWindow_class.Factory;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;
import miui.view.inputmethod.InputMethodHelper;

public class ImmersionListPopupWindow extends PopupWindow {
    private static final String TAG = "ImmersionListPopupWindow";
    private static final float Tt = 8.0f;
    private static final float Tu = 8.0f;
    private boolean TA;
    private int TB;
    private WindowManager TE;
    private DataSetObserver TF = new DataSetObserver() {
        public void onChanged() {
            ImmersionListPopupWindow.this.TA = false;
            if (ImmersionListPopupWindow.this.isShowing()) {
                ImmersionListPopupWindow.this.update(ImmersionListPopupWindow.this.eT(), ImmersionListPopupWindow.this.getHeight());
                ImmersionListPopupWindow.this.eU();
            }
        }
    };
    private FrameLayout Tv;
    private boolean Tw;
    private OnItemClickListener Tx;
    private int Ty;
    private int Tz;
    private ListView cn;
    private ListAdapter mAdapter;
    private View mContentView;
    private Context mContext;
    private final Rect oX;
    private final int sM;
    private final int sN;

    public ImmersionListPopupWindow(Context context) {
        super(context);
        this.mContext = context;
        Resources resources = context.getResources();
        this.Ty = resources.getDimensionPixelSize(R.dimen.list_menu_dialog_maximum_width);
        this.Tz = resources.getDimensionPixelSize(R.dimen.list_menu_dialog_minimum_width);
        int i = (int) (resources.getDisplayMetrics().density * 8.0f);
        this.sM = i;
        this.sN = i;
        this.oX = new Rect();
        setFocusable(true);
        this.Tv = new FrameLayout(context);
        this.Tv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ImmersionListPopupWindow.this.dismiss();
            }
        });
        Drawable resolveDrawable = AttributeResolver.resolveDrawable(this.mContext, miui.R.attr.immersionWindowBackground);
        if (resolveDrawable != null) {
            resolveDrawable.getPadding(this.oX);
            this.Tv.setBackground(resolveDrawable);
        }
        super.setContentView(this.Tv);
        Android_Widget_PopupWindow_class android_Widget_PopupWindow_class = Factory.getInstance().get();
        android_Widget_PopupWindow_class.setLayoutInScreenEnabled(this, true);
        android_Widget_PopupWindow_class.setLayoutInsetDecor(this, true);
        i = 0;
        setBackgroundDrawable(new ColorDrawable(0));
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            i = R.style.Animation_PopupWindow_ImmersionMenu;
        }
        setAnimationStyle(i);
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.TF);
        }
        this.mAdapter = listAdapter;
        if (this.mAdapter != null) {
            this.mAdapter.registerDataSetObserver(this.TF);
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.Tx = onItemClickListener;
    }

    public void setContentView(View view) {
        this.mContentView = view;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public void show(View view, ViewGroup viewGroup) {
        if (view == null) {
            Log.e(TAG, "show: anchor is null");
            return;
        }
        if (this.mContentView == null) {
            this.mContentView = new ListView(this.mContext);
            this.mContentView.setId(16908298);
        }
        if (!(this.Tv.getChildCount() == 1 && this.Tv.getChildAt(0) == this.mContentView)) {
            this.Tv.removeAllViews();
            this.Tv.addView(this.mContentView);
            LayoutParams layoutParams = (LayoutParams) this.mContentView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.gravity = 16;
        }
        this.cn = (ListView) this.mContentView.findViewById(16908298);
        if (this.cn == null) {
            Log.e(TAG, "list not found");
            return;
        }
        this.cn.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                int headerViewsCount = i - ImmersionListPopupWindow.this.cn.getHeaderViewsCount();
                if (headerViewsCount >= 0 && headerViewsCount < ImmersionListPopupWindow.this.mAdapter.getCount()) {
                    ImmersionListPopupWindow.this.Tx.onItemClick(adapterView, view, headerViewsCount, j);
                }
            }
        });
        this.cn.setAdapter(this.mAdapter);
        setWidth(eT());
        InputMethodHelper.getInstance().getManager().hideSoftInputFromWindow(view.getWindowToken(), 0);
        p(view);
    }

    private int eT() {
        if (!this.TA) {
            this.TB = a(this.mAdapter, null, this.mContext, this.Ty);
            this.TA = true;
        }
        return (Math.max(this.TB, this.Tz) + this.oX.left) + this.oX.right;
    }

    private void p(View view) {
        this.Tw = ViewUtils.isLayoutRtl(view);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        Rect rect;
        if (!this.Tw) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (VERSION.SDK_INT > 23) {
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                showAtLocation(view, 8388661, (((displayMetrics.widthPixels - iArr[0]) - view.getWidth()) - this.oX.right) + this.sM, (iArr[1] - this.oX.top) + this.sN);
                return;
            }
            rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            showAtLocation(view, 8388661, (((rect.right - iArr2[0]) - view.getWidth()) - this.oX.right) + this.sM, ((iArr2[1] - this.oX.top) + this.sN) - rect.top);
        } else if (VERSION.SDK_INT > 23) {
            showAtLocation(view, 8388659, (iArr[0] - this.oX.left) + this.sM, (iArr[1] - this.oX.top) + this.sN);
        } else {
            rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            showAtLocation(view, 8388659, (iArr2[0] - this.oX.left) + this.sM, ((iArr2[1] - this.oX.top) + this.sN) - rect.top);
        }
    }

    public void fastShow(View view, ViewGroup viewGroup) {
        setWidth(eT());
        p(view);
    }

    @Deprecated
    protected void installHeaderView(View view, ViewGroup viewGroup) {
    }

    private WindowManager getWindowManager() {
        if (this.TE == null) {
            this.TE = (WindowManager) this.mContext.getSystemService("window");
        }
        return this.TE;
    }

    private static int a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        ViewGroup viewGroup2 = viewGroup;
        int i3 = 0;
        int i4 = i3;
        View view = null;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (viewGroup2 == null) {
                viewGroup2 = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, viewGroup2);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            itemViewType = view.getMeasuredWidth();
            if (itemViewType >= i) {
                return i;
            }
            if (itemViewType > i4) {
                i4 = itemViewType;
            }
            i2++;
        }
        return i4;
    }

    @Deprecated
    protected LayoutAnimationController createDefaultFadeInAnimation() {
        return null;
    }

    @Deprecated
    protected LayoutAnimationController createDefaultFadeOutAnimation() {
        return null;
    }

    @Deprecated
    protected Animator getBackgroundAnimator(LayoutAnimationController layoutAnimationController, boolean z) {
        return null;
    }

    public void dismiss(boolean z) {
        dismiss();
    }

    @Deprecated
    protected Drawable getBlurBackground(Context context, View view) {
        return null;
    }

    private void eU() {
        if (VERSION.SDK_INT < 26 && !this.Tw) {
            ViewGroup viewGroup = (ViewGroup) getContentView().getRootView();
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) viewGroup.getLayoutParams();
            if ((layoutParams.gravity & 8388611) == 8388611) {
                layoutParams.gravity &= -8388612;
                layoutParams.gravity |= 8388613;
                getWindowManager().updateViewLayout(viewGroup, layoutParams);
            }
        }
    }
}
