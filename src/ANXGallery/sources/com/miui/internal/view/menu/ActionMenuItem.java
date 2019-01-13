package com.miui.internal.view.menu;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public class ActionMenuItem implements MenuItem {
    private static final int ENABLED = 16;
    private static final int ms = 1;
    private static final int mt = 2;
    private static final int mu = 4;
    private static final int mv = 8;
    private Context mContext;
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

    public ActionMenuItem(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.mContext = context;
        this.mh = i2;
        this.mi = i;
        this.mj = i3;
        this.mk = i4;
        this.mTitle = charSequence;
    }

    public char getAlphabeticShortcut() {
        return this.mo;
    }

    public int getGroupId() {
        return this.mi;
    }

    public Drawable getIcon() {
        return this.mp;
    }

    public Intent getIntent() {
        return this.mm;
    }

    public int getItemId() {
        return this.mh;
    }

    public ContextMenuInfo getMenuInfo() {
        return null;
    }

    public char getNumericShortcut() {
        return this.mn;
    }

    public int getOrder() {
        return this.mk;
    }

    public SubMenu getSubMenu() {
        return null;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public CharSequence getTitleCondensed() {
        return this.ml;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isCheckable() {
        return (this.mr & 1) != 0;
    }

    public boolean isChecked() {
        return (this.mr & 2) != 0;
    }

    public boolean isEnabled() {
        return (this.mr & 16) != 0;
    }

    public boolean isVisible() {
        return (this.mr & 8) == 0;
    }

    public MenuItem setAlphabeticShortcut(char c) {
        this.mo = c;
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.mr = z | (this.mr & -2);
        return this;
    }

    public ActionMenuItem setExclusiveCheckable(boolean z) {
        this.mr = (z ? 4 : 0) | (this.mr & -5);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.mr = (z ? 2 : 0) | (this.mr & -3);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.mr = (z ? 16 : 0) | (this.mr & -17);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.mp = drawable;
        return this;
    }

    public MenuItem setIcon(int i) {
        this.mp = this.mContext.getResources().getDrawable(i);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.mm = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c) {
        this.mn = c;
        return this;
    }

    public MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mq = onMenuItemClickListener;
        return this;
    }

    public MenuItem setShortcut(char c, char c2) {
        this.mn = c;
        this.mo = c2;
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        return this;
    }

    public MenuItem setTitle(int i) {
        this.mTitle = this.mContext.getResources().getString(i);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.ml = charSequence;
        return this;
    }

    public MenuItem setVisible(boolean z) {
        int i = 8;
        int i2 = this.mr & 8;
        if (z) {
            i = 0;
        }
        this.mr = i2 | i;
        return this;
    }

    public boolean invoke() {
        if (this.mq != null && this.mq.onMenuItemClick(this)) {
            return true;
        }
        if (this.mm == null) {
            return false;
        }
        this.mContext.startActivity(this.mm);
        return true;
    }

    public void setShowAsAction(int i) {
    }

    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    public View getActionView() {
        return null;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    public MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    public ActionProvider getSupportActionProvider() {
        return null;
    }

    public MenuItem setSupportActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    public boolean expandActionView() {
        return false;
    }

    public boolean collapseActionView() {
        return false;
    }

    public boolean isActionViewExpanded() {
        return false;
    }

    public MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setSupportOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        return this;
    }
}
