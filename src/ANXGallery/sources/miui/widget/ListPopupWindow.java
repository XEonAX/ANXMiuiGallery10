package miui.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class ListPopupWindow {
    private static final boolean DEBUG = false;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = "ListPopupWindow";
    private static final int TP = 250;
    public static final int WRAP_CONTENT = -2;
    private Rect Mq;
    private DataSetObserver TF;
    private final ResizePopupRunnable TQ;
    private final PopupTouchInterceptor TS;
    private final PopupScrollListener TU;
    private final ListSelectorHider TX;
    int TY;
    private ArrowPopupWindow Ua;
    private DropDownListView Ub;
    private int Uc;
    private int Ud;
    private int Ue;
    private int Uf;
    private boolean Ug;
    private boolean Uh;
    private boolean Ui;
    private View Uj;
    private int Uk;
    private View Ul;
    private Drawable Um;
    private OnItemClickListener Un;
    private OnItemSelectedListener Uo;
    private Runnable Up;
    private boolean Uq;
    private ListAdapter mAdapter;
    private Context mContext;
    private Handler mHandler;

    private static class DropDownListView extends ListView {
        public static final int INVALID_POSITION = -1;
        static final int Us = -1;
        private boolean Ut;
        private boolean Uu;

        public DropDownListView(Context context, boolean z) {
            super(context, null, 16842861);
            this.Uu = z;
            setCacheColorHint(0);
        }

        private int h(int i, boolean z) {
            ListAdapter adapter = getAdapter();
            if (adapter == null || isInTouchMode()) {
                return -1;
            }
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z) {
                    i = Math.max(0, i);
                    while (i < count && !adapter.isEnabled(i)) {
                        i++;
                    }
                } else {
                    i = Math.min(i, count - 1);
                    while (i >= 0 && !adapter.isEnabled(i)) {
                        i--;
                    }
                }
                if (i < 0 || i >= count) {
                    return -1;
                }
                return i;
            } else if (i < 0 || i >= count) {
                return -1;
            } else {
                return i;
            }
        }

        public boolean isInTouchMode() {
            return (this.Uu && this.Ut) || super.isInTouchMode();
        }

        public boolean hasWindowFocus() {
            return this.Uu || super.hasWindowFocus();
        }

        public boolean isFocused() {
            return this.Uu || super.isFocused();
        }

        public boolean hasFocus() {
            return this.Uu || super.hasFocus();
        }

        final int a(int i, int i2, int i3, int i4, int i5) {
            i2 = getListPaddingTop();
            i3 = getListPaddingBottom();
            int dividerHeight = getDividerHeight();
            Drawable divider = getDivider();
            ListAdapter adapter = getAdapter();
            if (adapter == null) {
                return i2 + i3;
            }
            i2 += i3;
            if (dividerHeight <= 0 || divider == null) {
                dividerHeight = 0;
            }
            int count = adapter.getCount();
            int i6 = i2;
            i2 = 0;
            int i7 = i2;
            int i8 = i7;
            View view = null;
            while (i2 < count) {
                int itemViewType = adapter.getItemViewType(i2);
                if (itemViewType != i7) {
                    view = null;
                    i7 = itemViewType;
                }
                view = adapter.getView(i2, view, this);
                itemViewType = view.getLayoutParams().height;
                if (itemViewType > 0) {
                    itemViewType = MeasureSpec.makeMeasureSpec(itemViewType, 1073741824);
                } else {
                    itemViewType = MeasureSpec.makeMeasureSpec(0, 0);
                }
                view.measure(i, itemViewType);
                if (i2 > 0) {
                    i6 += dividerHeight;
                }
                i6 += view.getMeasuredHeight();
                if (i6 >= i4) {
                    if (i5 >= 0 && i2 > i5 && i8 > 0 && i6 != i4) {
                        i4 = i8;
                    }
                    return i4;
                }
                if (i5 >= 0 && i2 >= i5) {
                    i8 = i6;
                }
                i2++;
            }
            return i6;
        }
    }

    private class ListSelectorHider implements Runnable {
        private ListSelectorHider() {
        }

        /* synthetic */ ListSelectorHider(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    private class PopupDataSetObserver extends DataSetObserver {
        private PopupDataSetObserver() {
        }

        /* synthetic */ PopupDataSetObserver(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        public void onInvalidated() {
            ListPopupWindow.this.dismiss(true);
        }
    }

    private class PopupScrollListener implements OnScrollListener {
        private PopupScrollListener() {
        }

        /* synthetic */ PopupScrollListener(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.isInputMethodNotNeeded() && ListPopupWindow.this.Ua.getContentView() != null) {
                ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.TQ);
                ListPopupWindow.this.TQ.run();
            }
        }
    }

    private class PopupTouchInterceptor implements OnTouchListener {
        private PopupTouchInterceptor() {
        }

        /* synthetic */ PopupTouchInterceptor(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.Ua != null && ListPopupWindow.this.Ua.isShowing() && x >= 0 && x < ListPopupWindow.this.Ua.getContentWidth() && y >= 0 && y < ListPopupWindow.this.Ua.getContentHeight()) {
                ListPopupWindow.this.mHandler.postDelayed(ListPopupWindow.this.TQ, 250);
            } else if (action == 1) {
                ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.TQ);
            }
            return false;
        }
    }

    private class ResizePopupRunnable implements Runnable {
        private ResizePopupRunnable() {
        }

        /* synthetic */ ResizePopupRunnable(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void run() {
            if (ListPopupWindow.this.Ub != null && ListPopupWindow.this.Ub.getCount() > ListPopupWindow.this.Ub.getChildCount() && ListPopupWindow.this.Ub.getChildCount() <= ListPopupWindow.this.TY) {
                ListPopupWindow.this.Ua.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, 16843519);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843519);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this.TQ = new ResizePopupRunnable(this, null);
        this.TS = new PopupTouchInterceptor(this, null);
        this.TU = new PopupScrollListener(this, null);
        this.TX = new ListSelectorHider(this, null);
        this.TY = Integer.MAX_VALUE;
        this.Uc = -2;
        this.Ud = -2;
        this.Uh = false;
        this.Ui = false;
        this.Uk = 0;
        this.mHandler = new Handler();
        this.Mq = new Rect();
        this.mContext = context;
        this.Ua = new ArrowPopupWindow(context, attributeSet, i);
    }

    public ArrowPopupWindow getPopupWindow() {
        return this.Ua;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (this.TF == null) {
            this.TF = new PopupDataSetObserver(this, null);
        } else if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.TF);
        }
        this.mAdapter = listAdapter;
        if (this.mAdapter != null) {
            listAdapter.registerDataSetObserver(this.TF);
        }
        if (this.Ub != null) {
            this.Ub.setAdapter(this.mAdapter);
        }
    }

    public int getPromptPosition() {
        return this.Uk;
    }

    public void setPromptPosition(int i) {
        this.Uk = i;
    }

    public boolean isModal() {
        return this.Uq;
    }

    public void setModal(boolean z) {
        this.Uq = true;
        this.Ua.setFocusable(z);
    }

    public void setForceIgnoreOutsideTouch(boolean z) {
        this.Ui = z;
    }

    public boolean isDropDownAlwaysVisible() {
        return this.Uh;
    }

    public void setDropDownAlwaysVisible(boolean z) {
        this.Uh = z;
    }

    public int getSoftInputMode() {
        return this.Ua.getSoftInputMode();
    }

    public void setSoftInputMode(int i) {
        this.Ua.setSoftInputMode(i);
    }

    public void setListSelector(Drawable drawable) {
        this.Um = drawable;
    }

    public Drawable getBackground() {
        return this.Ua.getBackground();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.Ua.setBackgroundDrawable(drawable);
    }

    public int getAnimationStyle() {
        return this.Ua.getAnimationStyle();
    }

    public void setAnimationStyle(int i) {
        this.Ua.setAnimationStyle(i);
    }

    public View getAnchorView() {
        return this.Ul;
    }

    public void setAnchorView(View view) {
        this.Ul = view;
    }

    public int getHorizontalOffset() {
        return this.Ue;
    }

    public void setHorizontalOffset(int i) {
        this.Ue = i;
    }

    public int getVerticalOffset() {
        if (this.Ug) {
            return this.Uf;
        }
        return 0;
    }

    public void setVerticalOffset(int i) {
        this.Uf = i;
        this.Ug = true;
    }

    public int getWidth() {
        return this.Ud;
    }

    public void setWidth(int i) {
        this.Ud = i;
    }

    public void setContentWidth(int i) {
        Drawable background = this.Ua.getBackground();
        if (background != null) {
            background.getPadding(this.Mq);
            this.Ud = (this.Mq.left + this.Mq.right) + i;
            return;
        }
        setWidth(i);
    }

    public int getHeight() {
        return this.Uc;
    }

    public void setHeight(int i) {
        this.Uc = i;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.Un = onItemClickListener;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.Uo = onItemSelectedListener;
    }

    public void setPromptView(View view) {
        boolean isShowing = isShowing();
        if (isShowing) {
            eV();
        }
        this.Uj = view;
        if (isShowing) {
            show();
        }
    }

    public void postShow() {
        this.mHandler.post(this.Up);
    }

    public void show() {
        int eW = eW();
        if (this.Ud != -1) {
            if (this.Ud == -2) {
                this.Ua.setContentWidth(getAnchorView().getWidth());
            } else {
                this.Ua.setContentWidth(this.Ud);
            }
        }
        if (this.Uc != -1) {
            if (this.Uc == -2) {
                this.Ua.setContentHeight(eW);
            } else {
                this.Ua.setContentHeight(this.Uc);
            }
        }
        boolean z = true;
        this.Ua.setFocusable(true);
        ArrowPopupWindow arrowPopupWindow;
        if (this.Ua.isShowing()) {
            arrowPopupWindow = this.Ua;
            if (this.Ui || this.Uh) {
                z = false;
            }
            arrowPopupWindow.setOutsideTouchable(z);
            this.Ua.update(getAnchorView(), this.Ue, this.Uf, -1, -1);
            return;
        }
        this.Ua.setWindowLayoutMode(-1, -1);
        arrowPopupWindow = this.Ua;
        if (this.Ui || this.Uh) {
            z = false;
        }
        arrowPopupWindow.setOutsideTouchable(z);
        this.Ua.setTouchInterceptor(this.TS);
        this.Ua.show(getAnchorView(), this.Ue, this.Uf);
        this.Ub.setSelection(-1);
        if (!this.Uq || this.Ub.isInTouchMode()) {
            clearListSelection();
        }
        if (!this.Uq) {
            this.mHandler.post(this.TX);
        }
    }

    public void dismiss() {
        dismiss(true);
    }

    public void dismiss(boolean z) {
        this.Ua.dismiss(z);
        eV();
        this.Ub = null;
        this.mHandler.removeCallbacks(this.TQ);
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.Ua.setOnDismissListener(onDismissListener);
    }

    private void eV() {
        if (this.Uj != null) {
            ViewParent parent = this.Uj.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.Uj);
            }
        }
    }

    public int getInputMethodMode() {
        return this.Ua.getInputMethodMode();
    }

    public void setInputMethodMode(int i) {
        this.Ua.setInputMethodMode(i);
    }

    public void setSelection(int i) {
        DropDownListView dropDownListView = this.Ub;
        if (isShowing() && dropDownListView != null) {
            dropDownListView.Ut = false;
            dropDownListView.setSelection(i);
            if (dropDownListView.getChoiceMode() != 0) {
                dropDownListView.setItemChecked(i, true);
            }
        }
    }

    public void clearListSelection() {
        DropDownListView dropDownListView = this.Ub;
        if (dropDownListView != null) {
            dropDownListView.Ut = true;
            dropDownListView.requestLayout();
        }
    }

    public boolean isShowing() {
        return this.Ua.isShowing();
    }

    public boolean isInputMethodNotNeeded() {
        return this.Ua.getInputMethodMode() == 2;
    }

    public boolean performItemClick(int i) {
        if (!isShowing()) {
            return false;
        }
        if (this.Un != null) {
            AdapterView adapterView = this.Ub;
            int i2 = i;
            this.Un.onItemClick(adapterView, adapterView.getChildAt(i - adapterView.getFirstVisiblePosition()), i2, adapterView.getAdapter().getItemId(i));
        }
        return true;
    }

    public Object getSelectedItem() {
        if (isShowing()) {
            return this.Ub.getSelectedItem();
        }
        return null;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.Ub.getSelectedItemPosition();
        }
        return -1;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.Ub.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public View getSelectedView() {
        if (isShowing()) {
            return this.Ub.getSelectedView();
        }
        return null;
    }

    public ListView getListView() {
        return this.Ub;
    }

    void aq(int i) {
        this.TY = i;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (isShowing() && i != 62 && (this.Ub.getSelectedItemPosition() >= 0 || !(i == 66 || i == 23))) {
            int count;
            int selectedItemPosition = this.Ub.getSelectedItemPosition();
            int isAboveAnchor = this.Ua.isAboveAnchor() ^ 1;
            ListAdapter listAdapter = this.mAdapter;
            int i2 = Integer.MAX_VALUE;
            if (listAdapter != null) {
                int i3;
                boolean areAllItemsEnabled = listAdapter.areAllItemsEnabled();
                if (areAllItemsEnabled) {
                    i3 = 0;
                } else {
                    i3 = this.Ub.h(0, true);
                }
                if (areAllItemsEnabled) {
                    count = listAdapter.getCount() - 1;
                } else {
                    count = this.Ub.h(listAdapter.getCount() - 1, false);
                }
                i2 = i3;
            } else {
                count = Integer.MIN_VALUE;
            }
            if ((isAboveAnchor == 0 || i != 19 || selectedItemPosition > i2) && !(isAboveAnchor == 0 && i == 20 && selectedItemPosition >= count)) {
                this.Ub.Ut = false;
                if (this.Ub.onKeyDown(i, keyEvent)) {
                    this.Ua.setInputMethodMode(2);
                    this.Ub.requestFocusFromTouch();
                    show();
                    if (!(i == 23 || i == 66)) {
                        switch (i) {
                            case 19:
                            case 20:
                                break;
                        }
                    }
                    return true;
                } else if (isAboveAnchor == 0 || i != 20) {
                    if (isAboveAnchor == 0 && i == 19 && selectedItemPosition == i2) {
                        return true;
                    }
                    return false;
                } else if (selectedItemPosition == count) {
                    return true;
                }
            }
            clearListSelection();
            this.Ua.setInputMethodMode(1);
            show();
            return true;
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!isShowing() || this.Ub.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean onKeyUp = this.Ub.onKeyUp(i, keyEvent);
        if (onKeyUp && (i == 23 || i == 66)) {
            dismiss(true);
        }
        return onKeyUp;
    }

    private int eW() {
        int measuredHeight;
        int i;
        boolean z = true;
        if (this.Ub == null) {
            Context context = this.mContext;
            this.Up = new Runnable() {
                public void run() {
                    View anchorView = ListPopupWindow.this.getAnchorView();
                    if (anchorView != null && anchorView.getWindowToken() != null) {
                        ListPopupWindow.this.show();
                    }
                }
            };
            this.Ub = new DropDownListView(context, this.Uq ^ true);
            if (this.Um != null) {
                this.Ub.setSelector(this.Um);
            }
            this.Ub.setAdapter(this.mAdapter);
            this.Ub.setOnItemClickListener(this.Un);
            this.Ub.setFocusable(true);
            this.Ub.setFocusableInTouchMode(true);
            this.Ub.setOnItemSelectedListener(new OnItemSelectedListener() {
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i != -1) {
                        DropDownListView a = ListPopupWindow.this.Ub;
                        if (a != null) {
                            a.Ut = false;
                        }
                    }
                }

                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.Ub.setOnScrollListener(this.TU);
            if (this.Uo != null) {
                this.Ub.setOnItemSelectedListener(this.Uo);
            }
            View view = this.Ub;
            View view2 = this.Uj;
            if (view2 != null) {
                View linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.Uk) {
                    case 0:
                        linearLayout.addView(view2);
                        linearLayout.addView(view, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(view, layoutParams);
                        linearLayout.addView(view2);
                        break;
                    default:
                        String str = TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Invalid hint position ");
                        stringBuilder.append(this.Uk);
                        Log.e(str, stringBuilder.toString());
                        break;
                }
                view2.measure(MeasureSpec.makeMeasureSpec(this.Ud, Integer.MIN_VALUE), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = (view2.getMeasuredHeight() + layoutParams2.topMargin) + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
            }
            this.Ua.setContentView(view);
        } else {
            View view3 = this.Uj;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = (view3.getMeasuredHeight() + layoutParams3.topMargin) + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.Ua.getBackground();
        if (background != null) {
            background.getPadding(this.Mq);
            i = this.Mq.top + this.Mq.bottom;
            if (!this.Ug) {
                this.Uf = -this.Mq.top;
            }
        } else {
            this.Mq.setEmpty();
            i = 0;
        }
        if (this.Ua.getInputMethodMode() != 2) {
            z = false;
        }
        int maxAvailableHeight = getMaxAvailableHeight(getAnchorView(), this.Uf, z);
        if (this.Uh || this.Uc == -1) {
            return maxAvailableHeight + i;
        }
        int makeMeasureSpec;
        switch (this.Ud) {
            case -2:
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.Mq.left + this.Mq.right), Integer.MIN_VALUE);
                break;
            case -1:
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.Mq.left + this.Mq.right), 1073741824);
                break;
            default:
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.Ud, 1073741824);
                break;
        }
        makeMeasureSpec = this.Ub.a(makeMeasureSpec, 0, -1, maxAvailableHeight - measuredHeight, -1);
        if (makeMeasureSpec > 0) {
            measuredHeight += i;
        }
        return makeMeasureSpec + measuredHeight;
    }

    public int getMaxAvailableHeight(View view, int i, boolean z) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i2 = rect.bottom;
        if (z) {
            i2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
        }
        int max = Math.max((i2 - (iArr[1] + view.getHeight())) - i, (iArr[1] - rect.top) + i);
        if (this.Ua.getBackground() == null) {
            return max;
        }
        this.Ua.getBackground().getPadding(this.Mq);
        return max - (this.Mq.top + this.Mq.bottom);
    }
}
