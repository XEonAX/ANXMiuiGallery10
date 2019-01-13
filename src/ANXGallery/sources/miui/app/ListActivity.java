package miui.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.app.ActivityDelegate;

public class ListActivity extends android.app.ListActivity implements IActivity {
    private ActivityDelegate wH = new ActivityDelegate(this, android.app.ListActivity.class);

    public ActionBar getActionBar() {
        return this.wH.getActionBar();
    }

    public MenuInflater getMenuInflater() {
        return this.wH.getMenuInflater();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.wH.onCreate(bundle);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.wH.onConfigurationChanged(configuration);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.wH.onSaveInstanceState(bundle);
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.wH.onRestoreInstanceState(bundle);
    }

    protected void onStop() {
        super.onStop();
        this.wH.onStop();
    }

    protected void onPostResume() {
        super.onPostResume();
        this.wH.onPostResume();
    }

    public View onCreatePanelView(int i) {
        if (i == 0) {
            return this.wH.onCreatePanelView(i);
        }
        return super.onCreatePanelView(i);
    }

    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        this.wH.onTitleChanged(charSequence);
    }

    public void invalidateOptionsMenu() {
        this.wH.invalidateOptionsMenu();
    }

    public boolean requestExtraWindowFeature(int i) {
        return this.wH.requestWindowFeature(i);
    }

    public ActionMode startActionMode(Callback callback) {
        return this.wH.startActionMode(callback);
    }

    public ActionMode onWindowStartingActionMode(Callback callback) {
        return this.wH.onWindowStartingActionMode(callback);
    }

    public void onActionModeStarted(ActionMode actionMode) {
        this.wH.onActionModeStarted(actionMode);
    }

    public void onActionModeFinished(ActionMode actionMode) {
        this.wH.onActionModeFinished(actionMode);
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        return this.wH.onCreatePanelMenu(i, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        return this.wH.onPreparePanel(i, view, menu);
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.wH.onMenuItemSelected(i, menuItem);
    }

    public void onBackPressed() {
        if (!this.wH.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public void setImmersionMenuEnabled(boolean z) {
        this.wH.setImmersionMenuEnabled(z);
    }

    public void showImmersionMenu() {
        this.wH.showImmersionMenu();
    }

    public void showImmersionMenu(View view, ViewGroup viewGroup) {
        this.wH.showImmersionMenu(view, viewGroup);
    }

    public void dismissImmersionMenu(boolean z) {
        this.wH.dismissImmersionMenu(z);
    }

    public void setTranslucentStatus(int i) {
        this.wH.setTranslucentStatus(i);
    }

    public int getTranslucentStatus() {
        return this.wH.getTranslucentStatus();
    }

    protected void onDestroy() {
        super.onDestroy();
        this.wH.dismissImmersionMenu(false);
    }
}
