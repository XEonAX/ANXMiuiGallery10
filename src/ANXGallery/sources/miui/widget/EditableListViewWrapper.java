package miui.widget;

import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.MultiChoiceModeListener;
import android.widget.ListAdapter;
import com.miui.internal.widget.EditableListViewDelegate;
import com.miui.internal.widget.EditableListViewDelegate.UpdateListener;
import miui.widget.EditableListView.ItemCheckFilter;

public class EditableListViewWrapper {
    private final EditableListViewDelegate Sw;

    public EditableListViewWrapper(AbsListView absListView) {
        if (absListView != null) {
            this.Sw = new EditableListViewDelegate();
            this.Sw.initialize(absListView, absListView.getClass());
            this.Sw.setUpdateListener(new UpdateListener() {
                public void updateOnScreenCheckedView(View view, int i, long j) {
                    EditableListViewWrapper.this.updateOnScreenCheckedView(view, i, j);
                }

                public void updateCheckStatus(ActionMode actionMode) {
                    EditableListViewWrapper.this.updateCheckStatus(actionMode);
                }
            });
            return;
        }
        throw new IllegalArgumentException("absListView is null");
    }

    public boolean isAllItemsChecked() {
        return this.Sw.isAllItemsChecked();
    }

    public void setAllItemsChecked(boolean z) {
        this.Sw.setAllItemsChecked(z);
    }

    public void clearChoices() {
        this.Sw.clearChoices();
    }

    public void setItemChecked(int i, boolean z) {
        this.Sw.setItemChecked(i, z);
    }

    public int getCheckedItemCount() {
        return this.Sw.getListView().getCheckedItemCount();
    }

    public boolean isItemChecked(int i) {
        return this.Sw.isItemChecked(i);
    }

    public boolean isItemIdChecked(long j) {
        return this.Sw.isItemIdChecked(j);
    }

    public int getCheckedItemPosition() {
        return this.Sw.getListView().getCheckedItemPosition();
    }

    public SparseBooleanArray getCheckedItemPositions() {
        return this.Sw.getCheckedItemPositions();
    }

    public long[] getCheckedItemIds() {
        return this.Sw.getListView().getCheckedItemIds();
    }

    protected ListAdapter getAdapter() {
        return this.Sw.getAdapter();
    }

    public void setAdapter(ListAdapter listAdapter) {
        this.Sw.setAdapter(listAdapter);
    }

    public void setMultiChoiceModeListener(MultiChoiceModeListener multiChoiceModeListener) {
        this.Sw.setMultiChoiceModeListener(multiChoiceModeListener);
    }

    public boolean isInActionMode() {
        return this.Sw.isInActionMode();
    }

    protected void updateOnScreenCheckedView(View view, int i, long j) {
        this.Sw.updateOnScreenCheckedView(view, i, j);
    }

    protected void updateCheckStatus(ActionMode actionMode) {
        this.Sw.updateCheckStatus(actionMode);
    }

    public void setItemCheckFilter(ItemCheckFilter itemCheckFilter) {
        this.Sw.setItemCheckFilter(itemCheckFilter);
    }
}
