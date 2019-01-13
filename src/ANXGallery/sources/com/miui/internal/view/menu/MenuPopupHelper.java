package com.miui.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;
import com.miui.internal.R;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.miui.internal.view.menu.MenuView.ItemView;
import java.util.ArrayList;
import miui.widget.ListPopupWindow;

public class MenuPopupHelper implements OnKeyListener, OnGlobalLayoutListener, OnItemClickListener, OnDismissListener, MenuPresenter {
    private static final int oC = R.layout.popup_menu_item_layout;
    private Context mContext;
    private LayoutInflater mInflater;
    private MenuBuilder mMenu;
    boolean nC;
    private ListPopupWindow oD;
    private int oE;
    private View oF;
    private boolean oG;
    private ViewTreeObserver oH;
    private MenuAdapter oI;
    private ViewGroup oJ;
    private int oK;
    private int oL;
    private Callback ok;

    private class MenuAdapter extends BaseAdapter {
        private int nI = -1;
        private MenuBuilder oM;

        public MenuAdapter(MenuBuilder menuBuilder) {
            this.oM = menuBuilder;
            aP();
        }

        public int getCount() {
            ArrayList nonActionItems = MenuPopupHelper.this.oG ? this.oM.getNonActionItems() : this.oM.getVisibleItems();
            if (this.nI < 0) {
                return nonActionItems.size();
            }
            return nonActionItems.size() - 1;
        }

        /* renamed from: j */
        public MenuItemImpl getItem(int i) {
            ArrayList nonActionItems = MenuPopupHelper.this.oG ? this.oM.getNonActionItems() : this.oM.getVisibleItems();
            if (this.nI >= 0 && i >= this.nI) {
                i++;
            }
            return (MenuItemImpl) nonActionItems.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = MenuPopupHelper.this.mInflater.inflate(MenuPopupHelper.this.oL, viewGroup, false);
            }
            ItemView itemView = (ItemView) view;
            if (MenuPopupHelper.this.nC) {
                ((ListMenuItemView) view).setForceShowIcon(true);
            }
            itemView.initialize(getItem(i), 0);
            return view;
        }

        void aP() {
            MenuItemImpl expandedItem = MenuPopupHelper.this.mMenu.getExpandedItem();
            if (expandedItem != null) {
                ArrayList nonActionItems = MenuPopupHelper.this.mMenu.getNonActionItems();
                int size = nonActionItems.size();
                for (int i = 0; i < size; i++) {
                    if (((MenuItemImpl) nonActionItems.get(i)) == expandedItem) {
                        this.nI = i;
                        return;
                    }
                }
            }
            this.nI = -1;
        }

        public void notifyDataSetChanged() {
            aP();
            super.notifyDataSetChanged();
        }
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view) {
        this(context, menuBuilder, view, false);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z) {
        this.oL = oC;
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
        this.mMenu = menuBuilder;
        this.oG = z;
        Resources resources = context.getResources();
        this.oE = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.config_prefDialogWidth));
        this.oF = view;
        menuBuilder.addMenuPresenter(this);
    }

    public void setAnchorView(View view) {
        this.oF = view;
    }

    public void setForceShowIcon(boolean z) {
        this.nC = z;
    }

    public void setVerticalOffset(int i) {
        this.oK = i;
    }

    public void setMenuItemLayout(int i) {
        this.oL = i;
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean tryShow() {
        this.oD = new ListPopupWindow(this.mContext, null, 16843520);
        this.oD.setOnDismissListener(this);
        this.oD.setOnItemClickListener(this);
        this.oD.setVerticalOffset(this.oK);
        this.oI = new MenuAdapter(this.mMenu);
        this.oD.setAdapter(this.oI);
        this.oD.setModal(true);
        View view = this.oF;
        boolean z = false;
        if (view == null) {
            return false;
        }
        if (this.oH == null) {
            z = true;
        }
        this.oH = view.getViewTreeObserver();
        if (z) {
            this.oH.addOnGlobalLayoutListener(this);
        }
        this.oD.setAnchorView(view);
        this.oD.setContentWidth(Math.min(a(this.oI), this.oE));
        this.oD.setInputMethodMode(2);
        this.oD.show();
        this.oD.getListView().setOnKeyListener(this);
        return true;
    }

    public void dismiss(boolean z) {
        if (isShowing()) {
            this.oD.dismiss(z);
        }
    }

    public void onDismiss() {
        this.oD = null;
        this.mMenu.close();
        if (this.oH != null) {
            if (!this.oH.isAlive()) {
                this.oH = this.oF.getViewTreeObserver();
            }
            this.oH.removeOnGlobalLayoutListener(this);
            this.oH = null;
        }
    }

    public boolean isShowing() {
        return this.oD != null && this.oD.isShowing();
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        MenuAdapter menuAdapter = this.oI;
        menuAdapter.oM.performItemAction(menuAdapter.getItem(i), 0);
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss(false);
        return true;
    }

    private int a(ListAdapter listAdapter) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.oE, Integer.MIN_VALUE);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(this.oE, Integer.MIN_VALUE);
        int count = listAdapter.getCount();
        int i = 0;
        View view = null;
        int i2 = 0;
        int i3 = i2;
        while (i < count) {
            int itemViewType = listAdapter.getItemViewType(i);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            if (this.oJ == null) {
                this.oJ = new FrameLayout(this.mContext);
            }
            view = listAdapter.getView(i, view, this.oJ);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
            i++;
        }
        return i3;
    }

    public void onGlobalLayout() {
        if (isShowing()) {
            View view = this.oF;
            if (view == null || !view.isShown()) {
                dismiss(false);
            } else if (isShowing()) {
                this.oD.setContentWidth(Math.min(a(this.oI), this.oE));
                this.oD.show();
            }
        }
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        throw new UnsupportedOperationException("MenuPopupHelpers manage their own views");
    }

    public void updateMenuView(boolean z) {
        if (this.oI != null) {
            this.oI.notifyDataSetChanged();
        }
    }

    public void setCallback(Callback callback) {
        this.ok = callback;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            boolean z;
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.mContext, subMenuBuilder, this.oF, false);
            menuPopupHelper.setCallback(this.ok);
            int size = subMenuBuilder.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = subMenuBuilder.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
            }
            z = false;
            menuPopupHelper.setForceShowIcon(z);
            if (menuPopupHelper.tryShow()) {
                if (this.ok != null) {
                    this.ok.onOpenSubMenu(subMenuBuilder);
                }
                return true;
            }
        }
        return false;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder == this.mMenu) {
            dismiss(true);
            if (this.ok != null) {
                this.ok.onCloseMenu(menuBuilder, z);
            }
        }
    }

    public boolean flagActionItems() {
        return false;
    }

    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public int getId() {
        return 0;
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }
}
