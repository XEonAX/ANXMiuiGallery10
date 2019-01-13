package com.miui.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.miui.internal.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class MenuBuilder implements Menu {
    public static final int CATEGORY_MASK = -65536;
    public static final int CATEGORY_SHIFT = 16;
    public static final int USER_MASK = 65535;
    private static final String nK = "android:menu:presenters";
    private static final String nL = "android:menu:actionviewstates";
    private static final String nM = "android:menu:expandedactionview";
    private static final int[] nN = new int[]{1, 4, 5, 3, 2, 0};
    private ArrayList<MenuItemImpl> mActionItems;
    private final Context mContext;
    private final Resources nO;
    private boolean nP;
    private boolean nQ;
    private Callback nR;
    private ArrayList<MenuItemImpl> nS;
    private boolean nT;
    private ArrayList<MenuItemImpl> nU;
    private boolean nV;
    private int nW = 0;
    private ContextMenuInfo nX;
    CharSequence nY;
    Drawable nZ;
    private ArrayList<MenuItemImpl> nj;
    View oa;
    private boolean ob = false;
    private boolean oc = false;
    private boolean od = false;
    private boolean oe = false;
    private ArrayList<MenuItemImpl> of = new ArrayList();
    private CopyOnWriteArrayList<WeakReference<MenuPresenter>> og = new CopyOnWriteArrayList();
    private MenuItemImpl oh;

    public interface Callback {
        boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem);

        void onMenuModeChange(MenuBuilder menuBuilder);
    }

    public interface ItemInvoker {
        boolean invokeItem(MenuItemImpl menuItemImpl);
    }

    public MenuBuilder(Context context) {
        this.mContext = context;
        this.nO = context.getResources();
        this.nS = new ArrayList();
        this.nj = new ArrayList();
        this.nT = true;
        this.mActionItems = new ArrayList();
        this.nU = new ArrayList();
        this.nV = true;
        i(true);
    }

    public MenuBuilder setDefaultShowAsAction(int i) {
        this.nW = i;
        return this;
    }

    public void addMenuPresenter(MenuPresenter menuPresenter) {
        this.og.add(new WeakReference(menuPresenter));
        menuPresenter.initForMenu(this.mContext, this);
        this.nV = true;
    }

    public void removeMenuPresenter(MenuPresenter menuPresenter) {
        Iterator it = this.og.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter2 = (MenuPresenter) weakReference.get();
            if (menuPresenter2 == null || menuPresenter2 == menuPresenter) {
                this.og.remove(weakReference);
            }
        }
    }

    private void h(boolean z) {
        if (!this.og.isEmpty()) {
            stopDispatchingItemsChanged();
            Iterator it = this.og.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.og.remove(weakReference);
                } else {
                    menuPresenter.updateMenuView(z);
                }
            }
            startDispatchingItemsChanged();
        }
    }

    private boolean a(SubMenuBuilder subMenuBuilder) {
        boolean z = false;
        if (this.og.isEmpty()) {
            return false;
        }
        Iterator it = this.og.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                this.og.remove(weakReference);
            } else if (!z) {
                z = menuPresenter.onSubMenuSelected(subMenuBuilder);
            }
        }
        return z;
    }

    private void dispatchSaveInstanceState(Bundle bundle) {
        if (!this.og.isEmpty()) {
            SparseArray sparseArray = new SparseArray();
            Iterator it = this.og.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.og.remove(weakReference);
                } else {
                    int id = menuPresenter.getId();
                    if (id > 0) {
                        Parcelable onSaveInstanceState = menuPresenter.onSaveInstanceState();
                        if (onSaveInstanceState != null) {
                            sparseArray.put(id, onSaveInstanceState);
                        }
                    }
                }
            }
            bundle.putSparseParcelableArray(nK, sparseArray);
        }
    }

    private void dispatchRestoreInstanceState(Bundle bundle) {
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(nK);
        if (sparseParcelableArray != null && !this.og.isEmpty()) {
            Iterator it = this.og.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.og.remove(weakReference);
                } else {
                    int id = menuPresenter.getId();
                    if (id > 0) {
                        Parcelable parcelable = (Parcelable) sparseParcelableArray.get(id);
                        if (parcelable != null) {
                            menuPresenter.onRestoreInstanceState(parcelable);
                        }
                    }
                }
            }
        }
    }

    public void savePresenterStates(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void restorePresenterStates(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveActionViewStates(Bundle bundle) {
        int size = size();
        SparseArray sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (!(actionView == null || actionView.getId() == -1)) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt(nM, item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).saveActionViewStates(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(getActionViewStatesKey(), sparseArray);
        }
    }

    public void restoreActionViewStates(Bundle bundle) {
        if (bundle != null) {
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(getActionViewStatesKey());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View actionView = item.getActionView();
                if (!(actionView == null || actionView.getId() == -1)) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((SubMenuBuilder) item.getSubMenu()).restoreActionViewStates(bundle);
                }
            }
            int i2 = bundle.getInt(nM);
            if (i2 > 0) {
                MenuItem findItem = findItem(i2);
                if (findItem != null) {
                    findItem.expandActionView();
                }
            }
        }
    }

    protected String getActionViewStatesKey() {
        return nL;
    }

    public void setCallback(Callback callback) {
        this.nR = callback;
    }

    private MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int k = k(i3);
        MenuItem menuItemImpl = new MenuItemImpl(this, i, i2, i3, k, charSequence, this.nW);
        if (this.nX != null) {
            menuItemImpl.a(this.nX);
        }
        this.nS.add(a(this.nS, k), menuItemImpl);
        k(true);
        return menuItemImpl;
    }

    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    public MenuItem add(int i) {
        return a(0, 0, 0, this.nO.getString(i));
    }

    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.nO.getString(i4));
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.nO.getString(i));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) a(i, i2, i3, charSequence);
        SubMenu subMenuBuilder = new SubMenuBuilder(this.mContext, this, menuItemImpl);
        menuItemImpl.b(subMenuBuilder);
        return subMenuBuilder;
    }

    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.nO.getString(i4));
    }

    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int size;
        PackageManager packageManager = this.mContext.getPackageManager();
        int i5 = 0;
        List queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        if (queryIntentActivityOptions != null) {
            size = queryIntentActivityOptions.size();
        } else {
            size = 0;
        }
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        while (i5 < size) {
            ResolveInfo resolveInfo = (ResolveInfo) queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
            i5++;
        }
        return size;
    }

    public void removeItem(int i) {
        c(findItemIndex(i), true);
    }

    public void removeGroup(int i) {
        int findGroupIndex = findGroupIndex(i);
        if (findGroupIndex >= 0) {
            int size = this.nS.size() - findGroupIndex;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || ((MenuItemImpl) this.nS.get(findGroupIndex)).getGroupId() != i) {
                    k(true);
                } else {
                    c(findGroupIndex, false);
                    i2 = i3;
                }
            }
            k(true);
        }
    }

    private void c(int i, boolean z) {
        if (i >= 0 && i < this.nS.size()) {
            this.nS.remove(i);
            if (z) {
                k(true);
            }
        }
    }

    public void removeItemAt(int i) {
        c(i, true);
    }

    public void clearAll() {
        this.ob = true;
        clear();
        clearHeader();
        this.ob = false;
        this.oc = false;
        k(true);
    }

    public void clear() {
        if (this.oh != null) {
            collapseItemActionView(this.oh);
        }
        this.nS.clear();
        k(true);
    }

    void b(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        Iterator it = this.nS.iterator();
        while (it.hasNext()) {
            MenuItem menuItem2 = (MenuItemImpl) it.next();
            if (menuItem2.getGroupId() == groupId) {
                if (menuItem2.isExclusiveCheckable()) {
                    if (menuItem2.isCheckable()) {
                        menuItem2.m(menuItem2 == menuItem);
                    }
                }
            }
        }
    }

    public void setGroupCheckable(int i, boolean z, boolean z2) {
        Iterator it = this.nS.iterator();
        while (it.hasNext()) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.setExclusiveCheckable(z2);
                menuItemImpl.setCheckable(z);
            }
        }
    }

    public void setGroupVisible(int i, boolean z) {
        Iterator it = this.nS.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
            if (menuItemImpl.getGroupId() == i && menuItemImpl.n(z)) {
                z2 = true;
            }
        }
        if (z2) {
            k(true);
        }
    }

    public void setGroupEnabled(int i, boolean z) {
        Iterator it = this.nS.iterator();
        while (it.hasNext()) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.setEnabled(z);
            }
        }
    }

    public boolean hasVisibleItems() {
        int size = size();
        for (int i = 0; i < size; i++) {
            if (((MenuItemImpl) this.nS.get(i)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public MenuItem findItem(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.nS.get(i2);
            if (menuItemImpl.getItemId() == i) {
                return menuItemImpl;
            }
            if (menuItemImpl.hasSubMenu()) {
                MenuItem findItem = menuItemImpl.getSubMenu().findItem(i);
                if (findItem != null) {
                    return findItem;
                }
            }
        }
        return null;
    }

    public int findItemIndex(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((MenuItemImpl) this.nS.get(i2)).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public int findGroupIndex(int i) {
        return findGroupIndex(i, 0);
    }

    public int findGroupIndex(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (((MenuItemImpl) this.nS.get(i2)).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public int size() {
        return this.nS.size();
    }

    public MenuItem getItem(int i) {
        return (MenuItem) this.nS.get(i);
    }

    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return a(i, keyEvent) != null;
    }

    public void setQwertyMode(boolean z) {
        this.nP = z;
        k(false);
    }

    private static int k(int i) {
        int i2 = (CATEGORY_MASK & i) >> 16;
        if (i2 < 0 || i2 >= nN.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        return (i & USER_MASK) | (nN[i2] << 16);
    }

    boolean isQwertyMode() {
        return this.nP;
    }

    public void setShortcutsVisible(boolean z) {
        if (this.nQ != z) {
            i(z);
            k(false);
        }
    }

    private void i(boolean z) {
        boolean z2 = true;
        if (!(z && this.nO.getConfiguration().keyboard != 1 && this.nO.getBoolean(R.bool.abc_config_showMenuShortcutsWhenKeyboardPresent))) {
            z2 = false;
        }
        this.nQ = z2;
    }

    public boolean isShortcutsVisible() {
        return this.nQ;
    }

    Resources getResources() {
        return this.nO;
    }

    public Context getContext() {
        return this.mContext;
    }

    boolean dispatchMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.nR != null && this.nR.onMenuItemSelected(menuBuilder, menuItem);
    }

    public void changeMenuMode() {
        if (this.nR != null) {
            this.nR.onMenuModeChange(this);
        }
    }

    private static int a(ArrayList<MenuItemImpl> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((MenuItemImpl) arrayList.get(size)).getOrdering() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        boolean performItemAction;
        MenuItem a = a(i, keyEvent);
        if (a != null) {
            performItemAction = performItemAction(a, i2);
        } else {
            performItemAction = false;
        }
        if ((i2 & 2) != 0) {
            j(true);
        }
        return performItemAction;
    }

    void a(List<MenuItemImpl> list, int i, KeyEvent keyEvent) {
        boolean isQwertyMode = isQwertyMode();
        int metaState = keyEvent.getMetaState();
        KeyData keyData = new KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            Iterator it = this.nS.iterator();
            while (it.hasNext()) {
                MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
                if (menuItemImpl.hasSubMenu()) {
                    ((MenuBuilder) menuItemImpl.getSubMenu()).a(list, i, keyEvent);
                }
                char alphabeticShortcut;
                if (isQwertyMode) {
                    alphabeticShortcut = menuItemImpl.getAlphabeticShortcut();
                } else {
                    alphabeticShortcut = menuItemImpl.getNumericShortcut();
                }
                if ((metaState & 5) == 0 && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (isQwertyMode && alphabeticShortcut == 8 && i == 67)) && menuItemImpl.isEnabled())) {
                    list.add(menuItemImpl);
                }
            }
        }
    }

    MenuItemImpl a(int i, KeyEvent keyEvent) {
        ArrayList arrayList = this.of;
        arrayList.clear();
        a(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyData keyData = new KeyData();
        keyEvent.getKeyData(keyData);
        if (arrayList.size() == 1) {
            return (MenuItemImpl) arrayList.get(0);
        }
        boolean isQwertyMode = isQwertyMode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            char alphabeticShortcut;
            MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
            if (isQwertyMode) {
                alphabeticShortcut = menuItemImpl.getAlphabeticShortcut();
            } else {
                alphabeticShortcut = menuItemImpl.getNumericShortcut();
            }
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (isQwertyMode && alphabeticShortcut == 8 && i == 67))) {
                return menuItemImpl;
            }
        }
        return null;
    }

    public boolean performIdentifierAction(int i, int i2) {
        return performItemAction(findItem(i), i2);
    }

    public boolean performItemAction(MenuItem menuItem, int i) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
        if (menuItemImpl == null || !menuItemImpl.isEnabled()) {
            return false;
        }
        boolean invoke = menuItemImpl.invoke();
        ActionProvider supportActionProvider = menuItemImpl.getSupportActionProvider();
        boolean z = supportActionProvider != null && supportActionProvider.hasSubMenu();
        if (menuItemImpl.hasCollapsibleActionView()) {
            invoke |= menuItemImpl.expandActionView();
            if (invoke) {
                j(true);
            }
        } else if (menuItemImpl.hasSubMenu() || z) {
            j(false);
            if (!menuItemImpl.hasSubMenu()) {
                menuItemImpl.b(new SubMenuBuilder(getContext(), this, menuItemImpl));
            }
            SubMenuBuilder subMenuBuilder = (SubMenuBuilder) menuItemImpl.getSubMenu();
            if (z) {
                supportActionProvider.onPrepareSubMenu(subMenuBuilder);
            }
            invoke |= a(subMenuBuilder);
            if (!invoke) {
                j(true);
            }
        } else if ((i & 1) == 0) {
            j(true);
        }
        return invoke;
    }

    final void j(boolean z) {
        if (!this.oe) {
            this.oe = true;
            Iterator it = this.og.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.og.remove(weakReference);
                } else {
                    menuPresenter.onCloseMenu(this, z);
                }
            }
            this.oe = false;
        }
    }

    public void close() {
        j(true);
    }

    void k(boolean z) {
        if (this.ob) {
            this.oc = true;
            return;
        }
        if (z) {
            this.nT = true;
            this.nV = true;
        }
        h(z);
    }

    public void stopDispatchingItemsChanged() {
        if (!this.ob) {
            this.ob = true;
            this.oc = false;
        }
    }

    public void startDispatchingItemsChanged() {
        this.ob = false;
        if (this.oc) {
            this.oc = false;
            k(true);
        }
    }

    void a(MenuItemImpl menuItemImpl) {
        this.nT = true;
        k(true);
    }

    void b(MenuItemImpl menuItemImpl) {
        this.nV = true;
        k(true);
    }

    public ArrayList<MenuItemImpl> getVisibleItems() {
        if (!this.nT) {
            return this.nj;
        }
        this.nj.clear();
        Iterator it = this.nS.iterator();
        while (it.hasNext()) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
            if (menuItemImpl.isVisible()) {
                this.nj.add(menuItemImpl);
            }
        }
        this.nT = false;
        this.nV = true;
        return this.nj;
    }

    public void flagActionItems() {
        if (this.nV) {
            Iterator it = this.og.iterator();
            int i = 0;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.og.remove(weakReference);
                } else {
                    i |= menuPresenter.flagActionItems();
                }
            }
            if (i != 0) {
                this.mActionItems.clear();
                this.nU.clear();
                it = getVisibleItems().iterator();
                while (it.hasNext()) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
                    if (menuItemImpl.isActionButton()) {
                        this.mActionItems.add(menuItemImpl);
                    } else {
                        this.nU.add(menuItemImpl);
                    }
                }
            } else {
                this.mActionItems.clear();
                this.nU.clear();
                this.nU.addAll(getVisibleItems());
            }
            this.nV = false;
        }
    }

    public ArrayList<MenuItemImpl> getActionItems() {
        flagActionItems();
        return this.mActionItems;
    }

    public ArrayList<MenuItemImpl> getNonActionItems() {
        flagActionItems();
        return this.nU;
    }

    public void clearHeader() {
        this.nZ = null;
        this.nY = null;
        this.oa = null;
        k(false);
    }

    private void a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = getResources();
        if (view != null) {
            this.oa = view;
            this.nY = null;
            this.nZ = null;
        } else {
            if (i > 0) {
                this.nY = resources.getText(i);
            } else if (charSequence != null) {
                this.nY = charSequence;
            }
            if (i2 > 0) {
                this.nZ = resources.getDrawable(i2);
            } else if (drawable != null) {
                this.nZ = drawable;
            }
            this.oa = null;
        }
        k(false);
    }

    protected MenuBuilder setHeaderTitleInt(CharSequence charSequence) {
        a(0, charSequence, 0, null, null);
        return this;
    }

    protected MenuBuilder setHeaderTitleInt(int i) {
        a(i, null, 0, null, null);
        return this;
    }

    protected MenuBuilder setHeaderIconInt(Drawable drawable) {
        a(0, null, 0, drawable, null);
        return this;
    }

    protected MenuBuilder setHeaderIconInt(int i) {
        a(0, null, i, null, null);
        return this;
    }

    protected MenuBuilder setHeaderViewInt(View view) {
        a(0, null, 0, null, view);
        return this;
    }

    public CharSequence getHeaderTitle() {
        return this.nY;
    }

    public Drawable getHeaderIcon() {
        return this.nZ;
    }

    public View getHeaderView() {
        return this.oa;
    }

    public MenuBuilder getRootMenu() {
        return this;
    }

    public void setCurrentMenuInfo(ContextMenuInfo contextMenuInfo) {
        this.nX = contextMenuInfo;
    }

    void l(boolean z) {
        this.od = z;
    }

    boolean aQ() {
        return this.od;
    }

    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        boolean z = false;
        if (this.og.isEmpty()) {
            return false;
        }
        stopDispatchingItemsChanged();
        Iterator it = this.og.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                this.og.remove(weakReference);
            } else {
                z = menuPresenter.expandItemActionView(this, menuItemImpl);
                if (z) {
                    break;
                }
            }
        }
        startDispatchingItemsChanged();
        if (z) {
            this.oh = menuItemImpl;
        }
        return z;
    }

    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        boolean z = false;
        if (this.og.isEmpty() || this.oh != menuItemImpl) {
            return false;
        }
        stopDispatchingItemsChanged();
        Iterator it = this.og.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                this.og.remove(weakReference);
            } else {
                z = menuPresenter.collapseItemActionView(this, menuItemImpl);
                if (z) {
                    break;
                }
            }
        }
        startDispatchingItemsChanged();
        if (z) {
            this.oh = null;
        }
        return z;
    }

    public MenuItemImpl getExpandedItem() {
        return this.oh;
    }
}
