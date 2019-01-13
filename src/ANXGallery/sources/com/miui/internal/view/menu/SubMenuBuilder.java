package com.miui.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.miui.internal.view.menu.MenuBuilder.Callback;

public class SubMenuBuilder extends MenuBuilder implements SubMenu {
    private MenuBuilder pk;
    private MenuItemImpl pl;

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.pk = menuBuilder;
        this.pl = menuItemImpl;
    }

    public void setQwertyMode(boolean z) {
        this.pk.setQwertyMode(z);
    }

    public boolean isQwertyMode() {
        return this.pk.isQwertyMode();
    }

    public void setShortcutsVisible(boolean z) {
        this.pk.setShortcutsVisible(z);
    }

    public boolean isShortcutsVisible() {
        return this.pk.isShortcutsVisible();
    }

    public Menu getParentMenu() {
        return this.pk;
    }

    public MenuItem getItem() {
        return this.pl;
    }

    public void setCallback(Callback callback) {
        this.pk.setCallback(callback);
    }

    public MenuBuilder getRootMenu() {
        return this.pk;
    }

    public boolean dispatchMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return super.dispatchMenuItemSelected(menuBuilder, menuItem) || this.pk.dispatchMenuItemSelected(menuBuilder, menuItem);
    }

    public SubMenu setIcon(Drawable drawable) {
        this.pl.setIcon(drawable);
        return this;
    }

    public SubMenu setIcon(int i) {
        this.pl.setIcon(i);
        return this;
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        super.setHeaderIconInt(drawable);
        return this;
    }

    public SubMenu setHeaderIcon(int i) {
        super.setHeaderIconInt(getContext().getResources().getDrawable(i));
        return this;
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.setHeaderTitleInt(charSequence);
        return this;
    }

    public SubMenu setHeaderTitle(int i) {
        super.setHeaderTitleInt(getContext().getResources().getString(i));
        return this;
    }

    public SubMenu setHeaderView(View view) {
        super.setHeaderViewInt(view);
        return this;
    }

    public void clearHeader() {
    }

    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        return this.pk.expandItemActionView(menuItemImpl);
    }

    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        return this.pk.collapseItemActionView(menuItemImpl);
    }

    public String getActionViewStatesKey() {
        int itemId = this.pl != null ? this.pl.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.getActionViewStatesKey());
        stringBuilder.append(":");
        stringBuilder.append(itemId);
        return stringBuilder.toString();
    }
}
