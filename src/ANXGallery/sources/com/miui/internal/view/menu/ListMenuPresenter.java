package com.miui.internal.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.miui.internal.R;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.miui.internal.view.menu.MenuView.ItemView;
import java.util.ArrayList;

public class ListMenuPresenter implements OnItemClickListener, MenuPresenter {
    public static final String VIEWS_TAG = "android:menu:list";
    Context mContext;
    LayoutInflater mInflater;
    MenuBuilder mMenu;
    private int mh;
    ExpandedMenuView nD;
    private int nE;
    int nF;
    int nG;
    MenuAdapter nH;
    private Callback nf;
    int nh;

    private class MenuAdapter extends BaseAdapter {
        private int nI = -1;

        public MenuAdapter() {
            aP();
        }

        public int getCount() {
            int size = ListMenuPresenter.this.mMenu.getNonActionItems().size() - ListMenuPresenter.this.nE;
            if (this.nI < 0) {
                return size;
            }
            return size - 1;
        }

        /* renamed from: j */
        public MenuItemImpl getItem(int i) {
            ArrayList nonActionItems = ListMenuPresenter.this.mMenu.getNonActionItems();
            i += ListMenuPresenter.this.nE;
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
                view = ListMenuPresenter.this.mInflater.inflate(ListMenuPresenter.this.nh, viewGroup, false);
            }
            ((ItemView) view).initialize(getItem(i), 0);
            return view;
        }

        void aP() {
            MenuItemImpl expandedItem = ListMenuPresenter.this.mMenu.getExpandedItem();
            if (expandedItem != null) {
                ArrayList nonActionItems = ListMenuPresenter.this.mMenu.getNonActionItems();
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

    public ListMenuPresenter(Context context, int i, int i2) {
        this(i, i2, 0);
        this.mContext = context;
        this.mInflater = LayoutInflater.from(this.mContext);
    }

    public ListMenuPresenter(int i, int i2) {
        this(R.layout.expanded_menu_layout, i, i2);
    }

    public ListMenuPresenter(int i, int i2, int i3) {
        this.nh = i2;
        this.nG = i;
        this.nF = i3;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        if (this.nF != 0) {
            this.mContext = new ContextThemeWrapper(context, this.nF);
            this.mInflater = LayoutInflater.from(this.mContext);
        } else if (this.mContext != null) {
            this.mContext = context;
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from(this.mContext);
            }
        }
        if (this.mMenu != null) {
            this.mMenu.removeMenuPresenter(this);
        }
        this.mMenu = menuBuilder;
        if (this.nH != null) {
            this.nH.notifyDataSetChanged();
        }
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.nH == null) {
            this.nH = new MenuAdapter();
        }
        if (this.nH.isEmpty()) {
            return null;
        }
        if (this.nD == null) {
            this.nD = (ExpandedMenuView) this.mInflater.inflate(this.nG, viewGroup, false);
            this.nD.setAdapter(this.nH);
            this.nD.setOnItemClickListener(this);
        }
        return this.nD;
    }

    public ListAdapter getAdapter() {
        if (this.nH == null) {
            this.nH = new MenuAdapter();
        }
        return this.nH;
    }

    public void updateMenuView(boolean z) {
        if (this.nH != null) {
            this.nH.notifyDataSetChanged();
        }
    }

    public void setCallback(Callback callback) {
        this.nf = callback;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        new MenuDialogHelper(subMenuBuilder).show(null);
        if (this.nf != null) {
            this.nf.onOpenSubMenu(subMenuBuilder);
        }
        return true;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.nf != null) {
            this.nf.onCloseMenu(menuBuilder, z);
        }
    }

    int aO() {
        return this.nE;
    }

    public void setItemIndexOffset(int i) {
        this.nE = i;
        if (this.nD != null) {
            updateMenuView(false);
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.mMenu.performItemAction(this.nH.getItem(i), 0);
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

    public void saveHierarchyState(Bundle bundle) {
        SparseArray sparseArray = new SparseArray();
        if (this.nD != null) {
            this.nD.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray(VIEWS_TAG, sparseArray);
    }

    public void restoreHierarchyState(Bundle bundle) {
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(VIEWS_TAG);
        if (sparseParcelableArray != null) {
            this.nD.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void setId(int i) {
        this.mh = i;
    }

    public int getId() {
        return this.mh;
    }

    public Parcelable onSaveInstanceState() {
        if (this.nD == null) {
            return null;
        }
        Parcelable bundle = new Bundle();
        saveHierarchyState(bundle);
        return bundle;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        restoreHierarchyState((Bundle) parcelable);
    }
}
