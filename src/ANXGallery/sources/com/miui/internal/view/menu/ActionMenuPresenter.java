package com.miui.internal.view.menu;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.Button;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.ActionBarPolicy;
import com.miui.internal.view.menu.ActionMenuView.ActionMenuChildView;
import com.miui.internal.view.menu.MenuBuilder.ItemInvoker;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.miui.internal.view.menu.MenuView.ItemView;
import java.util.ArrayList;

public class ActionMenuPresenter extends BaseMenuPresenter {
    private boolean mA;
    private boolean mB;
    private int mC;
    private int mD;
    private int mE;
    private int mF;
    private int mG;
    private boolean mH;
    private boolean mI;
    private boolean mJ;
    private boolean mK;
    private int mL;
    private final SparseBooleanArray mM;
    private View mN;
    private OverflowMenu mO;
    private OverflowMenu mP;
    private MenuItemImpl mQ;
    private ActionButtonSubMenu mR;
    private OpenOverflowRunnable mS;
    final PopupPresenterCallback mT;
    int mU;
    private View mz;

    private class ActionButtonSubMenu extends MenuDialogHelper {
        public ActionButtonSubMenu(SubMenuBuilder subMenuBuilder) {
            super(subMenuBuilder);
            ActionMenuPresenter.this.setCallback(ActionMenuPresenter.this.mT);
        }

        public void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
            ActionMenuPresenter.this.mR = null;
            ActionMenuPresenter.this.mU = 0;
        }
    }

    private interface OverflowMenu {
        void dismiss(boolean z);

        void e(MenuBuilder menuBuilder);

        boolean isShowing();

        boolean tryShow();
    }

    private class ListOverflowMenu implements OverflowMenu {
        private ListMenuPresenter mW;

        private ListOverflowMenu() {
        }

        private ListMenuPresenter c(MenuBuilder menuBuilder) {
            if (this.mW == null) {
                this.mW = new ListMenuPresenter(ActionMenuPresenter.this.mContext, ActionMenuPresenter.this.mG, ActionMenuPresenter.this.mF);
            }
            menuBuilder.addMenuPresenter(this.mW);
            return this.mW;
        }

        public View d(MenuBuilder menuBuilder) {
            return (menuBuilder == null || menuBuilder.getNonActionItems().size() <= 0) ? null : (View) c(menuBuilder).getMenuView((ViewGroup) ActionMenuPresenter.this.mMenuView);
        }

        public boolean tryShow() {
            return ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).showOverflowMenu();
        }

        public boolean isShowing() {
            return ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).isOverflowMenuShowing();
        }

        public void dismiss(boolean z) {
            ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).hideOverflowMenu();
        }

        public void e(MenuBuilder menuBuilder) {
            ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).setOverflowMenuView(d(menuBuilder));
        }
    }

    private class OpenOverflowRunnable implements Runnable {
        private OverflowMenu mX;

        public OpenOverflowRunnable(OverflowMenu overflowMenu) {
            this.mX = overflowMenu;
        }

        public void run() {
            ActionMenuPresenter.this.mMenu.changeMenuMode();
            View view = (View) ActionMenuPresenter.this.mMenuView;
            if (!(view == null || view.getWindowToken() == null || !this.mX.tryShow())) {
                ActionMenuPresenter.this.mO = this.mX;
            }
            ActionMenuPresenter.this.mS = null;
        }
    }

    private class OverflowMenuButton extends Button implements ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, null, ActionMenuPresenter.this.mL);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
        }

        private boolean isVisible() {
            View view = this;
            while (view != null && view.getVisibility() == 0) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    view = (ViewGroup) parent;
                } else {
                    view = null;
                }
            }
            return view == null;
        }

        public boolean performClick() {
            if (super.performClick() || !isVisible()) {
                return true;
            }
            if (ActionMenuPresenter.this.mMenu != null) {
                ActionMenuPresenter.this.mMenu.dispatchMenuItemSelected(ActionMenuPresenter.this.mMenu.getRootMenu(), ActionMenuPresenter.this.aJ());
            }
            playSoundEffect(0);
            if (isSelected()) {
                ActionMenuPresenter.this.hideOverflowMenu(true);
            } else {
                ActionMenuPresenter.this.showOverflowMenu();
            }
            return true;
        }

        public boolean needsDividerBefore() {
            return false;
        }

        public boolean needsDividerAfter() {
            return false;
        }
    }

    private class PopupOverflowMenu extends MenuPopupHelper implements OverflowMenu {
        public PopupOverflowMenu(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z);
            setCallback(ActionMenuPresenter.this.mT);
            setMenuItemLayout(R.layout.overflow_popup_menu_item_layout);
        }

        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.mMenu.close();
            ActionMenuPresenter.this.mO = null;
        }

        public void e(MenuBuilder menuBuilder) {
        }

        public void dismiss(boolean z) {
            super.dismiss(z);
            if (ActionMenuPresenter.this.mz != null) {
                ActionMenuPresenter.this.mz.setSelected(false);
            }
        }
    }

    private class PopupPresenterCallback implements Callback {
        private PopupPresenterCallback() {
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            ActionMenuPresenter.this.mU = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            return false;
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().j(false);
            }
        }
    }

    private static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: i */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int mY;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mY = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mY);
        }
    }

    public ActionMenuPresenter(Context context, int i, int i2) {
        this(context, i, i2, 0, 0);
    }

    public ActionMenuPresenter(Context context, int i, int i2, int i3, int i4) {
        super(context, i, i2);
        this.mL = 16843510;
        this.mM = new SparseBooleanArray();
        this.mT = new PopupPresenterCallback();
        this.mG = i3;
        this.mF = i4;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.mB) {
            this.mA = actionBarPolicy.showsOverflowMenuButton();
        }
        if (!this.mJ) {
            this.mC = actionBarPolicy.getEmbeddedMenuWidthLimit();
        }
        if (!this.mH) {
            this.mE = actionBarPolicy.getMaxActionButtons();
        }
        int i = this.mC;
        if (this.mA) {
            if (this.mz == null) {
                this.mz = createOverflowMenuButton(this.mSystemContext);
                int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
                this.mz.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.mz.getMeasuredWidth();
        } else {
            this.mz = null;
        }
        this.mD = i;
        this.mN = null;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.mH) {
            this.mE = this.mContext.getResources().getInteger(R.integer.abc_max_action_buttons);
        }
        if (this.mMenu != null) {
            this.mMenu.k(true);
        }
    }

    public void setWidthLimit(int i, boolean z) {
        this.mC = i;
        this.mI = z;
        this.mJ = true;
    }

    public void setReserveOverflow(boolean z) {
        this.mA = z;
        this.mB = true;
    }

    public void setItemLimit(int i) {
        this.mE = i;
        this.mH = true;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.mK = z;
    }

    public void setActionEditMode(boolean z) {
        if (z) {
            this.mL = R.attr.actionModeOverflowButtonStyle;
        }
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = super.getMenuView(viewGroup);
        ((ActionMenuView) menuView).setPresenter(this);
        return menuView;
    }

    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            if (!(view instanceof ActionMenuItemView)) {
                view = null;
            }
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public void bindItemView(MenuItemImpl menuItemImpl, ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        itemView.setItemInvoker((ItemInvoker) this.mMenuView);
    }

    public boolean shouldIncludeItem(int i, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    public void updateMenuView(boolean z) {
        super.updateMenuView(z);
        if (this.mMenuView != null) {
            ArrayList nonActionItems = this.mMenu != null ? this.mMenu.getNonActionItems() : null;
            int i = 0;
            if (this.mA && nonActionItems != null) {
                int size = nonActionItems.size();
                if (size == 1) {
                    i = ((MenuItemImpl) nonActionItems.get(0)).isActionViewExpanded() ^ 1;
                } else if (size > 0) {
                    i = 1;
                }
            }
            if (i != 0) {
                if (this.mz == null) {
                    this.mz = createOverflowMenuButton(this.mSystemContext);
                } else {
                    this.mz.setTranslationY(0.0f);
                }
                ViewGroup viewGroup = (ViewGroup) this.mz.getParent();
                if (viewGroup != this.mMenuView) {
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mz);
                    }
                    ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                    actionMenuView.addView(this.mz, actionMenuView.generateOverflowButtonLayoutParams());
                }
            } else if (this.mz != null && this.mz.getParent() == this.mMenuView) {
                ((ViewGroup) this.mMenuView).removeView(this.mz);
            }
            ((ActionMenuView) this.mMenuView).setOverflowReserved(this.mA);
            if (!DeviceHelper.IS_TABLET) {
                aI().e(this.mMenu);
            }
        }
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        if (a(subMenuBuilder2.getItem()) == null) {
            if (this.mz == null) {
                return false;
            }
            View view = this.mz;
        }
        this.mU = subMenuBuilder.getItem().getItemId();
        this.mR = new ActionButtonSubMenu(subMenuBuilder);
        this.mR.show(null);
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof ItemView) && ((ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean showOverflowMenu() {
        if (!this.mA || isOverflowMenuShowing() || this.mMenu == null || this.mMenuView == null || this.mS != null) {
            return false;
        }
        this.mS = new OpenOverflowRunnable(aI());
        ((View) this.mMenuView).post(this.mS);
        super.onSubMenuSelected(null);
        this.mz.setSelected(true);
        return true;
    }

    private OverflowMenu aI() {
        if (DeviceHelper.IS_TABLET) {
            return new PopupOverflowMenu(this.mContext, this.mMenu, this.mz, true);
        }
        if (this.mP == null) {
            this.mP = new ListOverflowMenu();
        }
        return this.mP;
    }

    private MenuItemImpl aJ() {
        if (this.mQ == null) {
            this.mQ = new MenuItemImpl(this.mMenu, 0, R.id.more, 0, 0, this.mContext.getString(R.string.more), 0);
        }
        return this.mQ;
    }

    public boolean hideOverflowMenu(boolean z) {
        if (this.mS != null && this.mMenuView != null) {
            this.mz.setSelected(false);
            ((View) this.mMenuView).removeCallbacks(this.mS);
            this.mS = null;
            return true;
        } else if (this.mO == null) {
            return false;
        } else {
            boolean isShowing = this.mO.isShowing();
            if (isShowing) {
                this.mz.setSelected(false);
            }
            this.mO.dismiss(z);
            return isShowing;
        }
    }

    public boolean dismissPopupMenus(boolean z) {
        return hideOverflowMenu(z);
    }

    public boolean hideSubMenus() {
        if (this.mR == null) {
            return false;
        }
        this.mR.dismiss();
        return true;
    }

    public boolean isOverflowMenuShowing() {
        return this.mO != null && this.mO.isShowing();
    }

    public boolean isOverflowReserved() {
        return this.mA;
    }

    public boolean flagActionItems() {
        ArrayList visibleItems = this.mMenu.getVisibleItems();
        int size = visibleItems.size();
        int i = this.mE < size ? this.mE - 1 : this.mE;
        int i2 = 0;
        while (i2 < size && i > 0) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) visibleItems.get(i2);
            boolean z = menuItemImpl.requestsActionButton() || menuItemImpl.requiresActionButton();
            menuItemImpl.setIsActionButton(z);
            if (z) {
                i--;
            }
            i2++;
        }
        while (i2 < size) {
            ((MenuItemImpl) visibleItems.get(i2)).setIsActionButton(false);
            i2++;
        }
        return true;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        dismissPopupMenus(true);
        super.onCloseMenu(menuBuilder, z);
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState();
        savedState.mY = this.mU;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.mY > 0) {
            MenuItem findItem = this.mMenu.findItem(savedState.mY);
            if (findItem != null) {
                onSubMenuSelected((SubMenuBuilder) findItem.getSubMenu());
            }
        }
    }

    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
        } else {
            this.mMenu.j(false);
        }
    }

    protected View createOverflowMenuButton(Context context) {
        return new OverflowMenuButton(context);
    }
}
