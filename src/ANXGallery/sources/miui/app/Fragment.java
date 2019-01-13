package miui.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.app.FragmentDelegate;

public class Fragment extends android.app.Fragment implements IFragment {
    private FragmentDelegate wU;
    private boolean wV = true;
    private boolean wW = true;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.wU = new FragmentDelegate(this);
        this.wU.onCreate(bundle);
    }

    public void onStop() {
        super.onStop();
        this.wU.onStop();
    }

    public void onResume() {
        super.onResume();
        this.wU.onPostResume();
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.wU.onCreateView(viewGroup, bundle);
    }

    public View getView() {
        return this.wU.getView();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.wU.onConfigurationChanged(configuration);
    }

    public ActionBar getActionBar() {
        return this.wU.getActionBar();
    }

    public MenuInflater getMenuInflater() {
        return this.wU.getMenuInflater();
    }

    public ActionMode startActionMode(Callback callback) {
        return this.wU.startActionMode(callback);
    }

    public void setThemeRes(int i) {
        this.wU.setExtraThemeRes(i);
    }

    public Context getThemedContext() {
        return this.wU.getThemedContext();
    }

    public void setHasOptionsMenu(boolean z) {
        super.setHasOptionsMenu(z);
        if (this.wV != z) {
            this.wV = z;
            if (this.wV && this.wU != null && !this.wU.isImmersionMenuEnabled() && !isHidden() && isAdded()) {
                this.wU.invalidateOptionsMenu();
            }
        }
    }

    public void setMenuVisibility(boolean z) {
        super.setMenuVisibility(z);
        if (this.wW != z) {
            this.wW = z;
            if (!isHidden() && isAdded() && this.wU != null) {
                this.wU.invalidateOptionsMenu();
            }
        }
    }

    public boolean requestWindowFeature(int i) {
        return this.wU.requestWindowFeature(i);
    }

    public void invalidateOptionsMenu() {
        if (this.wU != null) {
            this.wU.updateOptionsMenu(1);
            if (!isHidden() && this.wV && !this.wU.isImmersionMenuEnabled() && this.wW && isAdded()) {
                this.wU.invalidateOptionsMenu();
            }
        }
    }

    public void updateOptionsMenuContent() {
        if (this.wU != null && !isHidden() && this.wV && !this.wU.isImmersionMenuEnabled() && this.wW && isAdded()) {
            this.wU.invalidateOptionsMenu();
        }
    }

    public final void onActionModeStarted(ActionMode actionMode) {
    }

    public final void onActionModeFinished(ActionMode actionMode) {
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        boolean z = false;
        if (i != 0) {
            return false;
        }
        if (this.wV && !this.wU.isImmersionMenuEnabled() && this.wW && !isHidden() && isAdded()) {
            z = onCreateOptionsMenu(menu);
        }
        return z;
    }

    public void onPreparePanel(int i, View view, Menu menu) {
        if (i == 0 && this.wV && !this.wU.isImmersionMenuEnabled() && this.wW && !isHidden() && isAdded()) {
            onPrepareOptionsMenu(menu);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    public View onInflateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (!(z || this.wU == null)) {
            this.wU.invalidateOptionsMenu();
        }
        onVisibilityChanged(z ^ 1);
    }

    public void onVisibilityChanged(boolean z) {
    }

    public void setImmersionMenuEnabled(boolean z) {
        this.wU.setImmersionMenuEnabled(z);
    }

    public void showImmersionMenu() {
        this.wU.showImmersionMenu();
    }

    public void showImmersionMenu(View view, ViewGroup viewGroup) {
        this.wU.showImmersionMenu(view, viewGroup);
    }

    public void dismissImmersionMenu(boolean z) {
        this.wU.dismissImmersionMenu(z);
    }

    public void onDestroy() {
        super.onDestroy();
        this.wU.dismissImmersionMenu(false);
    }

    public void setOnStatusBarChangeListener(OnStatusBarChangeListener onStatusBarChangeListener) {
        this.wU.setOnStatusBarChangeListener(onStatusBarChangeListener);
    }
}
