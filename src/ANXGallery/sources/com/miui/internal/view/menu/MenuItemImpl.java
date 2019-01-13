package com.miui.internal.view.menu;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;
import com.miui.internal.view.menu.MenuView.ItemView;

public final class MenuItemImpl implements MenuItem {
    private static final int ENABLED = 16;
    private static final String TAG = "MenuItemImpl";
    private static final int ms = 1;
    private static final int mt = 2;
    private static final int mu = 4;
    private static final int mv = 8;
    private static String oA = null;
    private static final int ol = 3;
    private static final int op = 32;
    static final int ov = 0;
    private static String ox;
    private static String oy;
    private static String oz;
    private MenuBuilder mMenu;
    private CharSequence mTitle;
    private final int mh;
    private final int mi;
    private final int mj;
    private final int mk;
    private CharSequence ml;
    private Intent mm;
    private char mn;
    private char mo;
    private Drawable mp;
    private OnMenuItemClickListener mq;
    private int mr = 16;
    private int om = 0;
    private SubMenuBuilder on;
    private Runnable oo;
    private int oq = 0;
    private View or;
    private ActionProvider os;
    private OnActionExpandListener ot;
    private boolean ou = false;
    private ContextMenuInfo ow;

    MenuItemImpl(MenuBuilder menuBuilder, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.mMenu = menuBuilder;
        this.mh = i2;
        this.mi = i;
        this.mj = i3;
        this.mk = i4;
        this.mTitle = charSequence;
        this.oq = i5;
    }

    public boolean invoke() {
        boolean z = true;
        if ((this.mq != null && this.mq.onMenuItemClick(this)) || this.mMenu.dispatchMenuItemSelected(this.mMenu.getRootMenu(), this)) {
            return true;
        }
        if (this.oo != null) {
            this.oo.run();
            return true;
        }
        if (this.mm != null) {
            try {
                this.mMenu.getContext().startActivity(this.mm);
                return true;
            } catch (Throwable e) {
                Log.e(TAG, "Can't find activity to handle intent; ignoring", e);
            }
        }
        if (this.os == null || !this.os.onPerformDefaultAction()) {
            z = false;
        }
        return z;
    }

    public boolean isEnabled() {
        return (this.mr & 16) != 0;
    }

    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.mr |= 16;
        } else {
            this.mr &= -17;
        }
        this.mMenu.k(false);
        return this;
    }

    public int getGroupId() {
        return this.mi;
    }

    @CapturedViewProperty
    public int getItemId() {
        return this.mh;
    }

    public int getOrder() {
        return this.mj;
    }

    public int getOrdering() {
        return this.mk;
    }

    public Intent getIntent() {
        return this.mm;
    }

    public MenuItem setIntent(Intent intent) {
        this.mm = intent;
        return this;
    }

    Runnable getCallback() {
        return this.oo;
    }

    public MenuItem setCallback(Runnable runnable) {
        this.oo = runnable;
        return this;
    }

    public char getAlphabeticShortcut() {
        return this.mo;
    }

    public MenuItem setAlphabeticShortcut(char c) {
        if (this.mo == c) {
            return this;
        }
        this.mo = Character.toLowerCase(c);
        this.mMenu.k(false);
        return this;
    }

    public char getNumericShortcut() {
        return this.mn;
    }

    public MenuItem setNumericShortcut(char c) {
        if (this.mn == c) {
            return this;
        }
        this.mn = c;
        this.mMenu.k(false);
        return this;
    }

    public MenuItem setShortcut(char c, char c2) {
        this.mn = c;
        this.mo = Character.toLowerCase(c2);
        this.mMenu.k(false);
        return this;
    }

    char aR() {
        return this.mo;
    }

    String aS() {
        char aR = aR();
        if (aR == 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(ox);
        if (aR == 8) {
            stringBuilder.append(oz);
        } else if (aR == 10) {
            stringBuilder.append(oy);
        } else if (aR != ' ') {
            stringBuilder.append(aR);
        } else {
            stringBuilder.append(oA);
        }
        return stringBuilder.toString();
    }

    boolean aT() {
        return this.mMenu.isShortcutsVisible() && aR() != 0;
    }

    public SubMenu getSubMenu() {
        return this.on;
    }

    public boolean hasSubMenu() {
        return this.on != null;
    }

    void b(SubMenuBuilder subMenuBuilder) {
        this.on = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    @CapturedViewProperty
    public CharSequence getTitle() {
        return this.mTitle;
    }

    CharSequence a(ItemView itemView) {
        if (itemView == null || !itemView.prefersCondensedTitle()) {
            return getTitle();
        }
        return getTitleCondensed();
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.mMenu.k(false);
        if (this.on != null) {
            this.on.setHeaderTitle(charSequence);
        }
        return this;
    }

    public MenuItem setTitle(int i) {
        return setTitle(this.mMenu.getContext().getString(i));
    }

    public CharSequence getTitleCondensed() {
        return this.ml != null ? this.ml : this.mTitle;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.ml = charSequence;
        this.mMenu.k(false);
        return this;
    }

    public Drawable getIcon() {
        if (this.mp != null) {
            return this.mp;
        }
        if (this.om == 0) {
            return null;
        }
        Drawable drawable = this.mMenu.getResources().getDrawable(this.om);
        this.om = 0;
        this.mp = drawable;
        return drawable;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.om = 0;
        this.mp = drawable;
        this.mMenu.k(false);
        return this;
    }

    public MenuItem setIcon(int i) {
        this.mp = null;
        this.om = i;
        this.mMenu.k(false);
        return this;
    }

    public boolean isCheckable() {
        return (this.mr & 1) == 1;
    }

    public MenuItem setCheckable(boolean z) {
        int i = this.mr;
        this.mr = z | (this.mr & -2);
        if (i != this.mr) {
            this.mMenu.k(false);
        }
        return this;
    }

    public void setExclusiveCheckable(boolean z) {
        this.mr = (z ? 4 : 0) | (this.mr & -5);
    }

    public boolean isExclusiveCheckable() {
        return (this.mr & 4) != 0;
    }

    public boolean isChecked() {
        return (this.mr & 2) == 2;
    }

    public MenuItem setChecked(boolean z) {
        if ((this.mr & 4) != 0) {
            this.mMenu.b((MenuItem) this);
        } else {
            m(z);
        }
        return this;
    }

    void m(boolean z) {
        int i = this.mr;
        this.mr = (z ? 2 : 0) | (this.mr & -3);
        if (i != this.mr) {
            this.mMenu.k(false);
        }
    }

    public boolean isVisible() {
        boolean z = false;
        if (this.os == null || !this.os.overridesItemVisibility()) {
            if ((this.mr & 8) == 0) {
                z = true;
            }
            return z;
        }
        if ((this.mr & 8) == 0 && this.os.isVisible()) {
            z = true;
        }
        return z;
    }

    boolean n(boolean z) {
        int i = this.mr;
        this.mr = (z ? 0 : 8) | (this.mr & -9);
        if (i != this.mr) {
            return true;
        }
        return false;
    }

    public MenuItem setVisible(boolean z) {
        if (n(z)) {
            this.mMenu.a(this);
        }
        return this;
    }

    public MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mq = onMenuItemClickListener;
        return this;
    }

    public String toString() {
        return this.mTitle.toString();
    }

    void a(ContextMenuInfo contextMenuInfo) {
        this.ow = contextMenuInfo;
    }

    public ContextMenuInfo getMenuInfo() {
        return this.ow;
    }

    public void actionFormatChanged() {
        this.mMenu.b(this);
    }

    public boolean shouldShowIcon() {
        return this.mMenu.aQ();
    }

    public boolean isActionButton() {
        return (this.mr & 32) == 32;
    }

    public boolean requestsActionButton() {
        return (this.oq & 1) == 1;
    }

    public boolean requiresActionButton() {
        return (this.oq & 2) == 2;
    }

    public void setIsActionButton(boolean z) {
        if (z) {
            this.mr |= 32;
        } else {
            this.mr &= -33;
        }
    }

    public boolean showsTextAsAction() {
        return (this.oq & 4) == 4;
    }

    public void setShowAsAction(int i) {
        switch (i & 3) {
            case 0:
            case 1:
            case 2:
                this.oq = i;
                this.mMenu.b(this);
                return;
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    public MenuItem setActionView(View view) {
        this.or = view;
        this.os = null;
        if (view != null && view.getId() == -1 && this.mh > 0) {
            view.setId(this.mh);
        }
        this.mMenu.b(this);
        return this;
    }

    public MenuItem setActionView(int i) {
        Context context = this.mMenu.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, new LinearLayout(context), false));
        return this;
    }

    public View getActionView() {
        if (this.or != null) {
            return this.or;
        }
        if (this.os == null) {
            return null;
        }
        this.or = this.os.onCreateActionView(this);
        return this.or;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("Implementation should use setSupportActionProvider!");
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("Implementation should use getSupportActionProvider!");
    }

    public ActionProvider getSupportActionProvider() {
        return this.os;
    }

    public MenuItem setSupportActionProvider(ActionProvider actionProvider) {
        if (this.os == actionProvider) {
            return this;
        }
        this.or = null;
        if (this.os != null) {
            this.os.setVisibilityListener(null);
        }
        this.os = actionProvider;
        this.mMenu.k(true);
        if (actionProvider != null) {
            actionProvider.setVisibilityListener(new VisibilityListener() {
                public void onActionProviderVisibilityChanged(boolean z) {
                    MenuItemImpl.this.mMenu.a(MenuItemImpl.this);
                }
            });
        }
        return this;
    }

    public MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    public boolean expandActionView() {
        return ((this.oq & 8) == 0 || this.or == null || ((this.ot != null && !this.ot.onMenuItemActionExpand(this)) || !this.mMenu.expandItemActionView(this))) ? false : true;
    }

    public boolean collapseActionView() {
        return (this.oq & 8) != 0 && (this.or == null || ((this.ot == null || this.ot.onMenuItemActionCollapse(this)) && this.mMenu.collapseItemActionView(this)));
    }

    public MenuItem setSupportOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        this.ot = onActionExpandListener;
        return this;
    }

    public boolean hasCollapsibleActionView() {
        return ((this.oq & 8) == 0 || this.or == null) ? false : true;
    }

    public void setActionViewExpanded(boolean z) {
        this.ou = z;
        this.mMenu.k(false);
    }

    public boolean isActionViewExpanded() {
        return this.ou;
    }

    public MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException("Implementation should use setSupportOnActionExpandListener!");
    }
}
