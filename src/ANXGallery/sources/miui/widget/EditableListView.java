package miui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.miui.internal.widget.EditableListViewDelegate;
import com.miui.internal.widget.EditableListViewDelegate.UpdateListener;

public class EditableListView extends ListView {
    private EditableListViewDelegate Sw;

    public interface ItemCheckFilter {
        int getCheckableItemCount();

        boolean isItemCheckable(int i);
    }

    public interface MultiChoiceModeListener extends android.widget.AbsListView.MultiChoiceModeListener {
        void onAllItemCheckedStateChanged(ActionMode actionMode, boolean z);
    }

    public EditableListView(Context context) {
        super(context);
        eO();
    }

    public EditableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        eO();
    }

    public EditableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        eO();
    }

    private EditableListViewDelegate eO() {
        if (this.Sw == null) {
            this.Sw = new EditableListViewDelegate();
            this.Sw.initialize(this, ListView.class);
            this.Sw.setUpdateListener(new UpdateListener() {
                public void updateOnScreenCheckedView(View view, int i, long j) {
                    EditableListView.this.updateOnScreenCheckedView(view, i, j);
                }

                public void updateCheckStatus(ActionMode actionMode) {
                    EditableListView.this.updateCheckStatus(actionMode);
                }
            });
        }
        return this.Sw;
    }

    public void setAdapter(ListAdapter listAdapter) {
        eO().setAdapter(listAdapter);
    }

    public void setMultiChoiceModeListener(android.widget.AbsListView.MultiChoiceModeListener multiChoiceModeListener) {
        eO().setMultiChoiceModeListener(multiChoiceModeListener);
    }

    public boolean isAllItemsChecked() {
        return eO().isAllItemsChecked();
    }

    public void setAllItemsChecked(boolean z) {
        eO().setAllItemsChecked(z);
    }

    public void clearChoices() {
        eO().clearChoices();
    }

    public void setItemChecked(int i, boolean z) {
        eO().setItemChecked(i, z);
    }

    public boolean isItemChecked(int i) {
        return eO().isItemChecked(i);
    }

    public boolean isItemIdChecked(long j) {
        return eO().isItemIdChecked(j);
    }

    public SparseBooleanArray getCheckedItemPositions() {
        return eO().getCheckedItemPositions();
    }

    public boolean isInActionMode() {
        return eO().isInActionMode();
    }

    protected void updateOnScreenCheckedView(View view, int i, long j) {
        eO().updateOnScreenCheckedView(view, i, j);
    }

    protected void updateCheckStatus(ActionMode actionMode) {
        eO().updateCheckStatus(actionMode);
    }

    public void setItemCheckFilter(ItemCheckFilter itemCheckFilter) {
        eO().setItemCheckFilter(itemCheckFilter);
    }
}
