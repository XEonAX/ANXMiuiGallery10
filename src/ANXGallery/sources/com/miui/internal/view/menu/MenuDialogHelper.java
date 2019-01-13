package com.miui.internal.view.menu;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.miui.internal.R;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.nexstreaming.nexeditorsdk.nexEngine;

public class MenuDialogHelper implements OnClickListener, OnDismissListener, OnKeyListener, Callback {
    private MenuBuilder mMenu;
    private AlertDialog oi;
    ListMenuPresenter oj;
    private Callback ok;

    public MenuDialogHelper(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public void show(IBinder iBinder) {
        MenuBuilder menuBuilder = this.mMenu;
        Builder builder = new Builder(menuBuilder.getContext());
        this.oj = new ListMenuPresenter(R.layout.list_menu_item_layout, R.style.Theme_MenuDialog_Light);
        this.oj.setCallback(this);
        this.mMenu.addMenuPresenter(this.oj);
        builder.setAdapter(this.oj.getAdapter(), this);
        View headerView = menuBuilder.getHeaderView();
        if (headerView != null) {
            builder.setCustomTitle(headerView);
        } else {
            builder.setIcon(menuBuilder.getHeaderIcon()).setTitle(menuBuilder.getHeaderTitle());
        }
        builder.setOnKeyListener(this);
        this.oi = builder.create();
        this.oi.setOnDismissListener(this);
        LayoutParams attributes = this.oi.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= nexEngine.ExportHEVCHighTierLevel51;
        this.oi.show();
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window = this.oi.getWindow();
                if (window != null) {
                    View decorView = window.getDecorView();
                    if (decorView != null) {
                        DispatcherState keyDispatcherState = decorView.getKeyDispatcherState();
                        if (keyDispatcherState != null) {
                            keyDispatcherState.startTracking(keyEvent, this);
                            return true;
                        }
                    }
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                Window window2 = this.oi.getWindow();
                if (window2 != null) {
                    View decorView2 = window2.getDecorView();
                    if (decorView2 != null) {
                        DispatcherState keyDispatcherState2 = decorView2.getKeyDispatcherState();
                        if (keyDispatcherState2 != null && keyDispatcherState2.isTracking(keyEvent)) {
                            this.mMenu.j(true);
                            dialogInterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return this.mMenu.performShortcut(i, keyEvent, 0);
    }

    public void setPresenterCallback(Callback callback) {
        this.ok = callback;
    }

    public void dismiss() {
        if (this.oi != null) {
            this.oi.dismiss();
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.oj.onCloseMenu(this.mMenu, true);
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (z || menuBuilder == this.mMenu) {
            dismiss();
        }
        if (this.ok != null) {
            this.ok.onCloseMenu(menuBuilder, z);
        }
    }

    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return this.ok != null && this.ok.onOpenSubMenu(menuBuilder);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.mMenu.performItemAction((MenuItemImpl) this.oj.getAdapter().getItem(i), 0);
    }
}
