package com.miui.internal.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.AlertControllerWrapper.AlertParams.ActionItem;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.widget.ActionBarContainer;
import com.miui.internal.widget.ActionBarContextView;
import com.miui.internal.widget.ActionBarView;
import com.miui.internal.widget.SingleCenterTextView;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import miui.app.ActionBar;
import miui.os.SystemProperties;
import miui.reflect.Method;
import miui.reflect.NoSuchMethodException;
import miui.util.Log;
import miui.view.EditActionMode;
import miui.widget.EditableListViewWrapper;
import miui.widget.ProgressBar;

public class AlertControllerImpl implements Callback {
    private static final String TAG = "AlertController";
    private static final int cd = 768;
    private static final Method ce = t();
    private static final int cf = 0;
    private ActionBar aR;
    private Message cA;
    private ScrollView cB;
    private DialogInterface cC;
    private OnClickListener cD = new OnClickListener() {
        public void onClick(View view) {
            Message obtain;
            if (view == AlertControllerImpl.this.cs && AlertControllerImpl.this.cu != null) {
                obtain = Message.obtain(AlertControllerImpl.this.cu);
            } else if (view == AlertControllerImpl.this.cv && AlertControllerImpl.this.cx != null) {
                obtain = Message.obtain(AlertControllerImpl.this.cx);
            } else if (view != AlertControllerImpl.this.cy || AlertControllerImpl.this.cA == null) {
                obtain = null;
            } else {
                obtain = Message.obtain(AlertControllerImpl.this.cA);
            }
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertControllerImpl.this.mHandler.obtainMessage(1, AlertControllerImpl.this.cC).sendToTarget();
        }
    };
    private boolean cE;
    private MenuPresenter.Callback cF = new MenuPresenter.Callback() {
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            return false;
        }
    };
    private Window.Callback cG = new Window.Callback() {
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return false;
        }

        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return false;
        }

        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            return false;
        }

        public View onCreatePanelView(int i) {
            return null;
        }

        public boolean onCreatePanelMenu(int i, Menu menu) {
            return false;
        }

        public boolean onPreparePanel(int i, View view, Menu menu) {
            return false;
        }

        public boolean onMenuOpened(int i, Menu menu) {
            return false;
        }

        public boolean onMenuItemSelected(int i, MenuItem menuItem) {
            return false;
        }

        public void onWindowAttributesChanged(LayoutParams layoutParams) {
        }

        public void onContentChanged() {
        }

        public void onWindowFocusChanged(boolean z) {
        }

        public void onAttachedToWindow() {
        }

        public void onDetachedFromWindow() {
        }

        public void onPanelClosed(int i, Menu menu) {
        }

        public boolean onSearchRequested() {
            return false;
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        public void onActionModeStarted(ActionMode actionMode) {
        }

        public void onActionModeFinished(ActionMode actionMode) {
        }
    };
    private final Runnable cb = new Runnable() {
        public void run() {
            MenuBuilder createMenu = AlertControllerImpl.this.createMenu();
            if (AlertControllerImpl.this.a(createMenu) && AlertControllerImpl.this.b(createMenu)) {
                AlertControllerImpl.this.setMenu(createMenu);
            } else {
                AlertControllerImpl.this.setMenu(null);
            }
        }
    };
    private final int cg;
    private final int ch;
    private final int ci;
    private final int cj;
    private final int ck;
    private final Window cl;
    private ViewGroup cm;
    private ListView cn;
    private EditableListViewWrapper co;
    private TextView cp;
    private TextView cq;
    private Button cr;
    private Button cs;
    private CharSequence ct;
    private Message cu;
    private Button cv;
    private CharSequence cw;
    private Message cx;
    private Button cy;
    private CharSequence cz;
    private ActionBarView mActionBarView;
    private ArrayList<ActionItem> mActionItems;
    private ListAdapter mAdapter;
    private CharSequence mCheckBoxMessage;
    private int mCheckedItem = -1;
    private boolean[] mCheckedItems;
    private Context mContext;
    private View mCustomTitleView;
    private Handler mHandler;
    private Drawable mIcon;
    private int mIconId = 0;
    private boolean mIsChecked;
    private MenuBuilder mMenu;
    private CharSequence mMessage;
    private DialogInterface.OnClickListener mOnActionItemClickListener;
    private CharSequence mTitle;
    private View mView;

    private static final class ButtonHandler extends Handler {
        private static final int cK = 1;
        private WeakReference<DialogInterface> cL;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.cL = new WeakReference(dialogInterface);
        }

        public void handleMessage(Message message) {
            DialogInterface dialogInterface;
            if (message.obj instanceof DialogInterface) {
                dialogInterface = (DialogInterface) message.obj;
            } else {
                dialogInterface = (DialogInterface) this.cL.get();
            }
            if (!(dialogInterface instanceof Dialog) || ((Dialog) dialogInterface).isShowing()) {
                int i = message.what;
                if (i != 1) {
                    switch (i) {
                        case -3:
                        case -2:
                        case -1:
                            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.cL.get(), message.what);
                            break;
                    }
                }
                ((DialogInterface) message.obj).dismiss();
                return;
            }
            Log.w(AlertControllerImpl.TAG, "dialog has already been dismissed, disregard message process");
        }
    }

    private static Method t() {
        try {
            return Method.of(Window.class, "addExtraFlags", "(I)V");
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public AlertControllerImpl(Context context, DialogInterface dialogInterface, Window window) {
        this.mContext = context;
        this.cC = dialogInterface;
        this.cl = window;
        this.cl.requestFeature(1);
        if (VERSION.SDK_INT < 28 && SystemProperties.getInt("ro.miui.notch", 0) == 1 && ce != null) {
            ce.invoke(Window.class, this.cl, Integer.valueOf(cd));
        }
        this.mHandler = new ButtonHandler(dialogInterface);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
        this.ck = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_layout, R.layout.alert_dialog);
        this.cg = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, R.layout.select_dialog);
        this.ch = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, R.layout.select_dialog_multichoice);
        this.ci = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, miui.R.layout.select_dialog_singlechoice);
        this.cj = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, R.layout.select_dialog_item);
        obtainStyledAttributes.recycle();
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void installContent() {
        if (this.mView == null || !a(this.mView)) {
            this.cl.setFlags(nexEngine.ExportHEVCHighTierLevel51, nexEngine.ExportHEVCHighTierLevel51);
        }
        u();
        this.cm = (ViewGroup) this.cl.findViewById(R.id.parentPanel);
        v();
    }

    private void u() {
        if (this.mActionItems != null) {
            View inflate = View.inflate(this.mContext, R.layout.screen_action_bar, null);
            this.mActionBarView = (ActionBarView) inflate.findViewById(R.id.action_bar);
            this.mActionBarView.setWindowCallback(this.cG);
            ActionBarContainer actionBarContainer = (ActionBarContainer) inflate.findViewById(R.id.split_action_bar);
            if (actionBarContainer != null) {
                this.mActionBarView.setSplitView(actionBarContainer);
                this.mActionBarView.setSplitActionBar(true);
                this.mActionBarView.setSplitWhenNarrow(true);
                ActionBarContextView actionBarContextView = (ActionBarContextView) inflate.findViewById(R.id.action_context_bar);
                actionBarContextView.setSplitView(actionBarContainer);
                actionBarContextView.setSplitActionBar(true);
                actionBarContextView.setSplitWhenNarrow(true);
            }
            View.inflate(this.mContext, this.ck, (ViewGroup) inflate.findViewById(16908290));
            this.cl.setContentView(inflate);
            this.cl.getDecorView().post(this.cb);
            this.aR = new ActionBarImpl((Dialog) this.cC);
            this.aR.setDisplayOptions(0);
            this.mActionBarView.setCollapsable(true);
            return;
        }
        this.cl.setContentView(this.ck);
        if (!DeviceHelper.IS_TABLET) {
            this.cl.setGravity(80);
            this.cl.setLayout(-1, -2);
        }
    }

    private void setMenu(MenuBuilder menuBuilder) {
        if (menuBuilder != this.mMenu) {
            this.mMenu = menuBuilder;
            if (this.mActionBarView != null) {
                this.mActionBarView.setMenu(menuBuilder, this.cF);
            }
        }
    }

    MenuBuilder createMenu() {
        MenuBuilder menuBuilder = new MenuBuilder(this.mContext);
        menuBuilder.setCallback(this);
        return menuBuilder;
    }

    private boolean a(MenuBuilder menuBuilder) {
        Iterator it = this.mActionItems.iterator();
        while (it.hasNext()) {
            ActionItem actionItem = (ActionItem) it.next();
            menuBuilder.add(0, actionItem.id, 0, actionItem.label).setIcon(actionItem.icon).setShowAsAction(2);
        }
        return true;
    }

    private boolean b(MenuBuilder menuBuilder) {
        return true;
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (this.mOnActionItemClickListener != null) {
            this.mOnActionItemClickListener.onClick(this.cC, menuItem.getItemId());
        }
        return true;
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.mIconId = 0;
    }

    public void setIcon(int i) {
        this.mIconId = i;
        this.mIcon = null;
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.cp != null) {
            this.cp.setText(charSequence);
        }
    }

    public void setCustomTitle(View view) {
        this.mCustomTitleView = view;
    }

    public void setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        if (this.cq != null) {
            this.cq.setText(charSequence);
            a(this.cq, charSequence);
        }
    }

    /* JADX WARNING: Missing block: B:8:0x0014, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(TextView textView, CharSequence charSequence) {
        if (this.mView == null && this.mCheckBoxMessage == null && (textView instanceof SingleCenterTextView)) {
            ((SingleCenterTextView) textView).setEnableSingleCenter(true);
        }
    }

    public void setView(View view) {
        this.mView = view;
    }

    public void setCheckBox(boolean z, CharSequence charSequence) {
        this.mIsChecked = z;
        this.mCheckBoxMessage = charSequence;
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.mHandler.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.cz = charSequence;
                this.cA = message;
                return;
            case -2:
                this.cw = charSequence;
                this.cx = message;
                return;
            case -1:
                this.ct = charSequence;
                this.cu = message;
                return;
            default:
                throw new IllegalStateException("Button does not exist");
        }
    }

    public void setActionItems(ArrayList<ActionItem> arrayList, DialogInterface.OnClickListener onClickListener) {
        this.mActionItems = arrayList;
        this.mOnActionItemClickListener = onClickListener;
    }

    public ListView getListView() {
        return this.cn;
    }

    public void setListView(ListView listView) {
        this.cn = listView;
    }

    public int getListLayout() {
        return this.cg;
    }

    public int getListItemLayout() {
        return this.cj;
    }

    public int getSingleChoiceItemLayout() {
        return this.ci;
    }

    public int getMultiChoiceItemLayout() {
        return this.ch;
    }

    public TextView getMessageView() {
        return this.cq;
    }

    public void setCheckedItems(boolean[] zArr) {
        this.mCheckedItems = zArr;
    }

    public boolean[] getCheckedItems() {
        return this.mCheckedItems;
    }

    public boolean isChecked() {
        boolean isChecked = ((CheckBox) this.cm.findViewById(16908289)).isChecked();
        this.mIsChecked = isChecked;
        return isChecked;
    }

    public DialogInterface getDialogInterface() {
        return this.cC;
    }

    public Button getButton(int i) {
        switch (i) {
            case -3:
                return this.cy;
            case -2:
                return this.cv;
            case -1:
                return this.cs;
            default:
                return null;
        }
    }

    public ActionBar getActionBar() {
        return this.aR;
    }

    public void setAdapter(ListAdapter listAdapter) {
        this.mAdapter = listAdapter;
    }

    public void setCheckedItem(int i) {
        this.mCheckedItem = i;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.cB != null && this.cB.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.cB != null && this.cB.executeKeyEvent(keyEvent);
    }

    private void v() {
        ViewGroup viewGroup = (ViewGroup) this.cm.findViewById(R.id.topPanel);
        if (viewGroup != null) {
            a(viewGroup);
        }
        viewGroup = (ViewGroup) this.cm.findViewById(R.id.contentPanel);
        if (viewGroup != null) {
            b(viewGroup);
        }
        FrameLayout frameLayout = (FrameLayout) this.cm.findViewById(miui.R.id.customPanel);
        if (frameLayout != null) {
            a(frameLayout);
        }
        frameLayout = (FrameLayout) this.cm.findViewById(R.id.checkboxPanel);
        if (frameLayout != null) {
            b(frameLayout);
        }
        viewGroup = (ViewGroup) this.cm.findViewById(R.id.buttonPanel);
        if (viewGroup != null) {
            c(viewGroup);
        }
    }

    private void a(ViewGroup viewGroup) {
        if (this.mCustomTitleView != null) {
            int paddingLeft;
            viewGroup.addView(this.mCustomTitleView, 0, new LinearLayout.LayoutParams(-1, -2));
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_title_vertical_padding);
            if (this.mCustomTitleView.getPaddingTop() != 0) {
                dimensionPixelSize = this.mCustomTitleView.getPaddingTop();
            }
            int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_title_horizontal_padding);
            if (this.mCustomTitleView.getPaddingLeft() != 0) {
                paddingLeft = this.mCustomTitleView.getPaddingLeft();
            } else {
                paddingLeft = dimensionPixelSize2;
            }
            if (this.mCustomTitleView.getPaddingRight() != 0) {
                dimensionPixelSize2 = this.mCustomTitleView.getPaddingRight();
            }
            this.mCustomTitleView.setPadding(paddingLeft, dimensionPixelSize, dimensionPixelSize2, 0);
            viewGroup.removeView(this.cm.findViewById(R.id.alertTitle));
        } else if ((TextUtils.isEmpty(this.mTitle) ^ 1) != 0) {
            this.cp = (TextView) viewGroup.findViewById(R.id.alertTitle);
            this.cp.setText(this.mTitle);
            if (this.mIcon != null) {
                this.cp.setCompoundDrawablesRelativeWithIntrinsicBounds(this.mIcon, null, null, null);
            }
            if (this.mIconId != 0) {
                this.cp.setCompoundDrawablesRelativeWithIntrinsicBounds(this.mIconId, 0, 0, 0);
            }
        } else {
            viewGroup.setVisibility(8);
        }
    }

    private void a(TextView textView, int i) {
        if (VERSION.SDK_INT >= 23) {
            try {
                Method.of(TextView.class, "setBreakStrategy", "(I)V").invoke(TextView.class, textView, Integer.valueOf(i));
            } catch (Exception e) {
            }
        }
    }

    private void b(ViewGroup viewGroup) {
        this.cB = (ScrollView) this.cm.findViewById(R.id.scrollView);
        this.cB.setFocusable(false);
        this.cq = (TextView) this.cm.findViewById(miui.R.id.message);
        if (this.cq != null) {
            if (this.mMessage != null) {
                a(this.cq, 0);
                this.cq.setText(this.mMessage);
                a(this.cq, this.mMessage);
                View findViewById = this.cm.findViewById(R.id.topPanel);
                if (findViewById != null && findViewById.getVisibility() == 8) {
                    viewGroup.setPadding(viewGroup.getPaddingLeft(), this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_message_without_title_vertical_padding), viewGroup.getRight(), viewGroup.getPaddingBottom());
                }
            } else {
                this.cq.setVisibility(8);
                this.cB.removeView(this.cq);
                if (this.cn != null) {
                    w();
                    viewGroup.removeView(this.cB);
                    viewGroup.addView(this.cn, new LinearLayout.LayoutParams(-1, -1));
                    viewGroup.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
                    viewGroup.setPadding(0, 0, 0, 0);
                    x();
                    if (DeviceHelper.IS_TABLET && this.mCustomTitleView == null && this.cp != null) {
                        this.cp.setPadding(0, 0, 0, 0);
                        try {
                            this.cm.findViewById(R.id.topPanel).setBackground(this.mContext.getResources().getDrawable(R.drawable.dialog_title_bg_light));
                        } catch (NotFoundException e) {
                        }
                        viewGroup.setPadding(viewGroup.getPaddingLeft(), 0, viewGroup.getPaddingRight(), viewGroup.getPaddingBottom());
                    }
                    if (this.cp != null && this.cn.getChoiceMode() == 0) {
                        this.cp.setTextAppearance(this.mContext, R.style.TextAppearance_DialogTitle_SimpleList);
                    }
                } else {
                    viewGroup.setVisibility(8);
                }
            }
        }
    }

    private void w() {
        int choiceMode = this.cn.getChoiceMode();
        if (this.mAdapter != null) {
            if (choiceMode == 2) {
                Button button = (Button) this.cm.findViewById(R.id.cancel);
                if (button != null) {
                    button.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            AlertControllerImpl.this.cC.dismiss();
                        }
                    });
                }
                button = (Button) this.cm.findViewById(R.id.select);
                if (button != null) {
                    this.cr = button;
                    button.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            int i;
                            boolean isAllItemsChecked = AlertControllerImpl.this.co.isAllItemsChecked();
                            AlertControllerImpl.this.co.setAllItemsChecked(isAllItemsChecked ^ 1);
                            Button button = button;
                            if (isAllItemsChecked) {
                                i = miui.R.string.select_all;
                            } else {
                                i = miui.R.string.deselect_all;
                            }
                            button.setText(i);
                        }
                    });
                }
                if (this.cr != null) {
                    this.co = new EditableListViewWrapper(this.cn);
                    this.cn.setChoiceMode(choiceMode);
                    this.co.setAdapter(this.mAdapter);
                    final OnItemClickListener onItemClickListener = this.cn.getOnItemClickListener();
                    this.cn.setOnItemClickListener(new OnItemClickListener() {
                        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                            onItemClickListener.onItemClick(adapterView, view, i, j);
                            AlertControllerImpl.this.cr.setText(AlertControllerImpl.this.co.isAllItemsChecked() ? miui.R.string.deselect_all : miui.R.string.select_all);
                        }
                    });
                    if (this.mCheckedItems != null) {
                        for (choiceMode = 0; choiceMode < this.mCheckedItems.length; choiceMode++) {
                            this.co.setItemChecked(choiceMode, this.mCheckedItems[choiceMode]);
                        }
                    }
                    this.cr.setText(this.co.isAllItemsChecked() ? miui.R.string.deselect_all : miui.R.string.select_all);
                } else {
                    this.cn.setAdapter(this.mAdapter);
                }
            } else {
                this.cn.setAdapter(this.mAdapter);
            }
        }
        if (this.mCheckedItem > -1) {
            this.cn.setItemChecked(this.mCheckedItem, true);
            this.cn.setSelection(this.mCheckedItem);
        }
    }

    private void a(FrameLayout frameLayout) {
        if (this.mView != null) {
            ((FrameLayout) this.cm.findViewById(16908331)).addView(this.mView, new ViewGroup.LayoutParams(-1, -1));
            if (this.cn != null) {
                ((LinearLayout.LayoutParams) frameLayout.getLayoutParams()).weight = 0.0f;
            }
            if (this.mView instanceof ViewGroup) {
                int paddingLeft;
                ViewGroup viewGroup = (ViewGroup) this.mView;
                int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_custom_vertical_padding);
                if (viewGroup.getPaddingTop() != 0) {
                    dimensionPixelSize = viewGroup.getPaddingTop();
                }
                this.cE = viewGroup.getPaddingBottom() != 0;
                int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_custom_horizontal_padding);
                if (viewGroup.getPaddingLeft() != 0) {
                    paddingLeft = viewGroup.getPaddingLeft();
                } else {
                    paddingLeft = dimensionPixelSize2;
                }
                if (viewGroup.getPaddingRight() != 0) {
                    dimensionPixelSize2 = viewGroup.getPaddingRight();
                }
                View findViewById = viewGroup.findViewById(16908301);
                if (findViewById != null && !(findViewById instanceof ProgressBar)) {
                    frameLayout.setPadding(0, 0, 0, 0);
                    this.cE = true;
                    return;
                } else if (viewGroup.findViewById(R.id.datePicker) == null && viewGroup.findViewById(R.id.timePicker) == null && viewGroup.findViewById(R.id.dateTimePicker) == null) {
                    frameLayout.setPadding(paddingLeft, dimensionPixelSize, dimensionPixelSize2, viewGroup.getPaddingBottom());
                    viewGroup.setPadding(0, 0, 0, 0);
                    return;
                } else {
                    frameLayout.setPadding(0, 0, 0, 0);
                    x();
                    this.cE = true;
                    return;
                }
            }
            return;
        }
        frameLayout.setVisibility(8);
    }

    private void x() {
        if (this.cp != null) {
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_title_average_vertical_padding);
            this.cp.setPadding(this.cp.getPaddingLeft(), dimensionPixelSize, this.cp.getPaddingRight(), dimensionPixelSize);
        }
    }

    private void b(FrameLayout frameLayout) {
        if (this.mCheckBoxMessage != null) {
            frameLayout.setVisibility(0);
            CheckBox checkBox = (CheckBox) frameLayout.findViewById(16908289);
            checkBox.setChecked(this.mIsChecked);
            checkBox.setText(this.mCheckBoxMessage);
            return;
        }
        frameLayout.setVisibility(8);
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x011f  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00bc  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void c(ViewGroup viewGroup) {
        boolean a;
        int i;
        int i2;
        this.cs = (Button) viewGroup.findViewById(EditActionMode.BUTTON1);
        if (this.cs != null) {
            this.cs.setOnClickListener(this.cD);
            if (TextUtils.isEmpty(this.ct)) {
                this.cs.setVisibility(8);
            } else {
                this.cs.setText(this.ct);
                this.cs.setVisibility(0);
                a = a(this.cs);
                i = 1;
                i2 = i;
                this.cv = (Button) viewGroup.findViewById(EditActionMode.BUTTON2);
                if (this.cv != null) {
                    this.cv.setOnClickListener(this.cD);
                    if (TextUtils.isEmpty(this.cw)) {
                        this.cv.setVisibility(8);
                    } else {
                        this.cv.setText(this.cw);
                        this.cv.setVisibility(0);
                        a = a(this.cv);
                        i++;
                        i2 = 1;
                    }
                }
                this.cy = (Button) viewGroup.findViewById(16908315);
                if (this.cy != null) {
                    this.cy.setOnClickListener(this.cD);
                    if (TextUtils.isEmpty(this.cz)) {
                        this.cy.setVisibility(8);
                    } else {
                        this.cy.setText(this.cz);
                        this.cy.setVisibility(0);
                        a = a(this.cy);
                        i++;
                        i2 = 1;
                    }
                }
                if (i2 == 0) {
                    LinearLayout linearLayout = (LinearLayout) viewGroup.findViewById(R.id.buttonGroup);
                    if (a || r0 > 2) {
                        ViewGroup.LayoutParams layoutParams;
                        linearLayout.setOrientation(1);
                        linearLayout.removeAllViews();
                        if (this.cs != null) {
                            layoutParams = this.cs.getLayoutParams();
                            layoutParams.width = -1;
                            linearLayout.addView(this.cs, layoutParams);
                        }
                        if (this.cy != null) {
                            layoutParams = this.cy.getLayoutParams();
                            layoutParams.width = -1;
                            linearLayout.addView(this.cy, layoutParams);
                        }
                        if (this.cv != null) {
                            layoutParams = this.cv.getLayoutParams();
                            layoutParams.width = -1;
                            linearLayout.addView(this.cv, layoutParams);
                        }
                    }
                    if (this.cE || this.cn != null || this.mCheckBoxMessage != null) {
                        linearLayout.setPadding(linearLayout.getPaddingLeft(), 0, linearLayout.getPaddingRight(), linearLayout.getPaddingBottom());
                        return;
                    }
                    return;
                }
                viewGroup.setVisibility(8);
                return;
            }
        }
        i = 0;
        i2 = i;
        a = i2;
        this.cv = (Button) viewGroup.findViewById(EditActionMode.BUTTON2);
        if (this.cv != null) {
        }
        this.cy = (Button) viewGroup.findViewById(16908315);
        if (this.cy != null) {
        }
        if (i2 == 0) {
        }
    }

    private boolean a(TextView textView) {
        Layout layout = textView.getLayout();
        if (layout == null || layout.getLineCount() <= 0 || layout.getEllipsisCount(layout.getLineCount() - 1) <= 0) {
            return false;
        }
        return true;
    }
}
