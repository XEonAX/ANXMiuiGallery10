package com.miui.internal.view.menu;

import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;
import com.miui.internal.app.ActionBarDelegateImpl;
import miui.widget.ImmersionListPopupWindow;

public class ImmersionMenuPopupWindowImpl extends ImmersionListPopupWindow implements ImmersionMenuPopupWindow {
    private ActionBarDelegateImpl nm;
    private ImmersionMenuAdapter nn;
    private View no;
    private ViewGroup np;

    public ImmersionMenuPopupWindowImpl(ActionBarDelegateImpl actionBarDelegateImpl, Menu menu) {
        super(actionBarDelegateImpl.getThemedContext());
        Context themedContext = actionBarDelegateImpl.getThemedContext();
        this.nm = actionBarDelegateImpl;
        this.nn = new ImmersionMenuAdapter(themedContext, menu);
        setAdapter(this.nn);
        setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MenuItem item = ImmersionMenuPopupWindowImpl.this.nn.getItem(i);
                if (item.hasSubMenu()) {
                    final SubMenu subMenu = item.getSubMenu();
                    ImmersionMenuPopupWindowImpl.this.setOnDismissListener(new OnDismissListener() {
                        public void onDismiss() {
                            ImmersionMenuPopupWindowImpl.this.setOnDismissListener(null);
                            ImmersionMenuPopupWindowImpl.this.update(subMenu);
                            ImmersionMenuPopupWindowImpl.this.fastShow(ImmersionMenuPopupWindowImpl.this.no, ImmersionMenuPopupWindowImpl.this.np);
                        }
                    });
                } else {
                    ImmersionMenuPopupWindowImpl.this.nm.onMenuItemSelected(0, item);
                }
                ImmersionMenuPopupWindowImpl.this.dismiss(true);
            }
        });
    }

    public void update(Menu menu) {
        this.nn.update(menu);
    }

    public void show(View view, ViewGroup viewGroup) {
        this.no = view;
        this.np = viewGroup;
        super.show(view, viewGroup);
    }
}
