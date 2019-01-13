package miui.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuPopupHelper;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.view.menu.SubMenuBuilder;

public class PopupMenu {
    private MenuPopupHelper XF;
    private OnMenuItemClickListener XG;
    private OnDismissListener XH;
    private Context mContext;
    private MenuBuilder mMenu;
    private View sD;

    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(Context context, View view) {
        this.mContext = context;
        this.mMenu = new MenuBuilder(context);
        this.mMenu.setCallback(new Callback() {
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                return PopupMenu.this.onMenuItemSelected(menuBuilder, menuItem);
            }

            public void onMenuModeChange(MenuBuilder menuBuilder) {
                PopupMenu.this.onMenuModeChange(menuBuilder);
            }
        });
        this.sD = view;
        this.XF = new MenuPopupHelper(context, this.mMenu, view);
        this.XF.setCallback(new MenuPresenter.Callback() {
            public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
                PopupMenu.this.onCloseMenu(menuBuilder, z);
            }

            public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
                return PopupMenu.this.onOpenSubMenu(menuBuilder);
            }
        });
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public MenuInflater getMenuInflater() {
        return new MenuInflater(this.mContext);
    }

    public void inflate(int i) {
        getMenuInflater().inflate(i, this.mMenu);
    }

    public void show() {
        this.XF.show();
    }

    public void dismiss() {
        this.XF.dismiss(false);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.XG = onMenuItemClickListener;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.XH = onDismissListener;
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (this.XG != null) {
            return this.XG.onMenuItemClick(menuItem);
        }
        return false;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.XH != null) {
            this.XH.onDismiss(this);
        }
    }

    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            return false;
        }
        if (!menuBuilder.hasVisibleItems()) {
            return true;
        }
        new MenuPopupHelper(this.mContext, menuBuilder, this.sD).show();
        return true;
    }

    public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
    }
}
