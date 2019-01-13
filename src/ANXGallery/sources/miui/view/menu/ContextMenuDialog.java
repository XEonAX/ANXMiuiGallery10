package miui.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.view.MenuItem;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuDialogHelper;
import java.util.ArrayList;
import java.util.List;

public class ContextMenuDialog {
    private final List<Runnable> NX = new ArrayList();
    private ContextMenuBuilder NY;
    private final Context mContext;

    private static class ContextMenuBuilder extends MenuBuilder {
        public ContextMenuBuilder(Context context) {
            super(context);
        }

        public MenuBuilder b(CharSequence charSequence) {
            return super.setHeaderTitleInt(charSequence);
        }

        public MenuBuilder af(int i) {
            return super.setHeaderTitleInt(i);
        }

        public MenuBuilder f(Drawable drawable) {
            return super.setHeaderIconInt(drawable);
        }

        public MenuBuilder ag(int i) {
            return super.setHeaderIconInt(i);
        }

        public MenuDialogHelper a(IBinder iBinder) {
            if (getVisibleItems().size() <= 0) {
                return null;
            }
            MenuDialogHelper menuDialogHelper = new MenuDialogHelper(this);
            menuDialogHelper.show(iBinder);
            return menuDialogHelper;
        }
    }

    public ContextMenuDialog(Context context) {
        this.mContext = context;
        this.NY = new ContextMenuBuilder(this.mContext);
        this.NY.setCallback(new Callback() {
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                ((Runnable) ContextMenuDialog.this.NX.get(menuItem.getItemId())).run();
                return true;
            }

            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
    }

    public void setTitle(String str) {
        this.NY.b(str);
    }

    public void setTitle(int i) {
        this.NY.af(i);
    }

    public void setIcon(Drawable drawable) {
        this.NY.f(drawable);
    }

    public void setIcon(int i) {
        this.NY.ag(i);
    }

    public void addMenuItem(String str, Runnable runnable) {
        this.NY.add(0, this.NX.size(), 0, (CharSequence) str);
        this.NX.add(runnable);
    }

    public void addMenuItem(int i, Runnable runnable) {
        addMenuItem(this.mContext.getString(i), runnable);
    }

    public void show() {
        this.NY.a(null);
    }
}
