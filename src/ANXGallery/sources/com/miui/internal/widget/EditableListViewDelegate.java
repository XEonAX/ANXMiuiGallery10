package com.miui.internal.widget;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.RecyclerListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.List;
import miui.R;
import miui.reflect.Method;
import miui.util.ViewUtils;
import miui.view.ActionModeAnimationListener;
import miui.view.EditActionMode;
import miui.widget.EditableListView.ItemCheckFilter;
import miui.widget.EditableListView.MultiChoiceModeListener;

public class EditableListViewDelegate {
    private static final Method tA = Method.of(AbsListView.class, "setMultiChoiceModeListener", "(Landroid/widget/AbsListView$MultiChoiceModeListener;)V");
    private static final int tu = Integer.MAX_VALUE;
    private static final Method tv = Method.of(AbsListView.class, "setAdapter", "(Landroid/widget/ListAdapter;)V");
    private static final Method tw = Method.of(AbsListView.class, "clearChoices", "()V");
    private static final Method tx = Method.of(AbsListView.class, "setItemChecked", "(IZ)V");
    private static final Method ty = Method.of(AbsListView.class, "isItemChecked", "(I)Z");
    private static final Method tz = Method.of(AbsListView.class, "getCheckedItemPositions", "()Landroid/util/SparseBooleanArray;");
    private ActionMode mActionMode;
    private AbsListView tB;
    private Class<? extends AbsListView> tC;
    private ListAdapterWrapper tD;
    private MultiChoiceModeListenerWrapper tE;
    private boolean tF;
    private boolean tG;
    private int tH;
    private int tI;
    private List<CheckBox> tJ = new ArrayList();
    private UpdateListener tK = new UpdateListener() {
        public void updateOnScreenCheckedView(View view, int i, long j) {
            EditableListViewDelegate.this.updateOnScreenCheckedView(view, i, j);
        }

        public void updateCheckStatus(ActionMode actionMode) {
            EditableListViewDelegate.this.updateCheckStatus(actionMode);
        }
    };
    private RecyclerListener tL = new RecyclerListener() {
        public void onMovedToScrapHeap(View view) {
            CheckBox a = EditableListViewDelegate.this.i(view);
            if (a != null) {
                a.setAlpha(1.0f);
                a.setTranslationX(0.0f);
            }
        }
    };
    private ItemCheckFilter tM;

    public interface UpdateListener {
        void updateCheckStatus(ActionMode actionMode);

        void updateOnScreenCheckedView(View view, int i, long j);
    }

    private class ListAdapterWrapper extends BaseAdapter implements WrapperListAdapter {
        private ListAdapter tO;

        public ListAdapterWrapper(ListAdapter listAdapter) {
            this.tO = listAdapter;
        }

        public ListAdapter getWrappedAdapter() {
            return this.tO;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.tO.registerDataSetObserver(dataSetObserver);
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.tO.unregisterDataSetObserver(dataSetObserver);
        }

        public int getCount() {
            return this.tO.getCount();
        }

        public Object getItem(int i) {
            return this.tO.getItem(i);
        }

        public long getItemId(int i) {
            return this.tO.getItemId(i);
        }

        public boolean hasStableIds() {
            return this.tO.hasStableIds();
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            view = this.tO.getView(i, view, viewGroup);
            CheckBox a = EditableListViewDelegate.this.i(view);
            if (a != null) {
                int choiceMode = EditableListViewDelegate.this.tB.getChoiceMode();
                boolean isItemChecked = EditableListViewDelegate.this.isItemChecked(i);
                int i2 = 8;
                if (choiceMode == 3) {
                    if (EditableListViewDelegate.this.mActionMode != null) {
                        i2 = 0;
                    }
                    a.setVisibility(i2);
                } else if (choiceMode == 1) {
                    a.setVisibility(8);
                }
                if (a.getVisibility() == 0 && !(a.getTranslationX() == 0.0f && a.getAlpha() == 1.0f)) {
                    a.setTranslationX(0.0f);
                    a.setAlpha(1.0f);
                }
                a.setChecked(isItemChecked);
            }
            return view;
        }

        public int getItemViewType(int i) {
            return this.tO.getItemViewType(i);
        }

        public int getViewTypeCount() {
            return this.tO.getViewTypeCount();
        }

        public boolean isEmpty() {
            return this.tO.isEmpty();
        }

        public boolean areAllItemsEnabled() {
            return this.tO.areAllItemsEnabled();
        }

        public boolean isEnabled(int i) {
            return this.tO.isEnabled(i);
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.tO instanceof BaseAdapter) {
                return ((BaseAdapter) this.tO).getDropDownView(i, view, viewGroup);
            }
            return super.getDropDownView(i, view, viewGroup);
        }
    }

    private class MultiChoiceModeListenerWrapper implements MultiChoiceModeListener {
        private AbsListView.MultiChoiceModeListener tP;
        private ActionModeAnimationListener tQ = new ActionModeAnimationListener() {
            public void onStart(boolean z) {
                if (z) {
                    int i = ViewUtils.isLayoutRtl(EditableListViewDelegate.this.tB) ? -1 : 1;
                    for (CheckBox checkBox : EditableListViewDelegate.this.bH()) {
                        checkBox.setVisibility(0);
                        checkBox.setTranslationX((float) (checkBox.getWidth() * i));
                        checkBox.setAlpha(0.0f);
                    }
                }
            }

            public void onUpdate(boolean z, float f) {
                if (!z) {
                    f = 1.0f - f;
                }
                int i = ViewUtils.isLayoutRtl(EditableListViewDelegate.this.tB) ? -1 : 1;
                for (CheckBox checkBox : EditableListViewDelegate.this.bH()) {
                    checkBox.setAlpha(f);
                    checkBox.setTranslationX((((float) checkBox.getWidth()) * (1.0f - f)) * ((float) i));
                }
                if (z && f == 1.0f) {
                    int height = EditableListViewDelegate.this.tB.getHeight();
                    if (EditableListViewDelegate.this.tI > height) {
                        EditableListViewDelegate.this.tB.smoothScrollBy(EditableListViewDelegate.this.tI - height, 100);
                    }
                }
            }

            public void onStop(boolean z) {
                if (!z) {
                    EditableListViewDelegate.this.mActionMode = null;
                    for (CheckBox visibility : EditableListViewDelegate.this.bH()) {
                        visibility.setVisibility(8);
                    }
                }
            }
        };

        public void a(AbsListView.MultiChoiceModeListener multiChoiceModeListener) {
            this.tP = multiChoiceModeListener;
        }

        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.tP.onPrepareActionMode(actionMode, menu);
        }

        public void onDestroyActionMode(ActionMode actionMode) {
            EditableListViewDelegate.this.tH = 0;
            this.tP.onDestroyActionMode(actionMode);
        }

        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            EditableListViewDelegate.this.tH = 0;
            actionMode.setTitle(R.string.select_item);
            if (!this.tP.onCreateActionMode(actionMode, menu)) {
                return false;
            }
            EditableListViewDelegate.this.mActionMode = actionMode;
            ((EditActionMode) EditableListViewDelegate.this.mActionMode).addAnimationListener(this.tQ);
            EditableListViewDelegate.this.tK.updateCheckStatus(actionMode);
            EditableListViewDelegate.this.tI = -1;
            return true;
        }

        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == EditActionMode.BUTTON1) {
                actionMode.finish();
            } else if (menuItem.getItemId() == EditActionMode.BUTTON2) {
                EditableListViewDelegate.this.setAllItemsChecked(EditableListViewDelegate.this.isAllItemsChecked() ^ 1);
            }
            return this.tP.onActionItemClicked(actionMode, menuItem);
        }

        public void onItemCheckedStateChanged(ActionMode actionMode, int i, long j, boolean z) {
            if (!EditableListViewDelegate.this.tF) {
                int headerViewsCount = EditableListViewDelegate.this.tG ? ((ListView) EditableListViewDelegate.this.tB).getHeaderViewsCount() : 0;
                int count = EditableListViewDelegate.this.getAdapter().getCount();
                if (i >= headerViewsCount && i < count + headerViewsCount && i <= EditableListViewDelegate.this.tB.getLastVisiblePosition() && i >= EditableListViewDelegate.this.tB.getFirstVisiblePosition() && EditableListViewDelegate.this.isItemCheckable(i - headerViewsCount)) {
                    EditableListViewDelegate.d(EditableListViewDelegate.this, z ? 1 : -1);
                    View childAt = EditableListViewDelegate.this.tB.getChildAt(i - EditableListViewDelegate.this.tB.getFirstVisiblePosition());
                    EditableListViewDelegate.this.tK.updateOnScreenCheckedView(childAt, i, j);
                    EditableListViewDelegate.this.tK.updateCheckStatus(actionMode);
                    if (childAt != null) {
                        childAt.sendAccessibilityEvent(1);
                    }
                    this.tP.onItemCheckedStateChanged(actionMode, i, j, z);
                    if (EditableListViewDelegate.this.tI == -1) {
                        EditableListViewDelegate.this.tI = EditableListViewDelegate.this.tB.getChildAt(i - EditableListViewDelegate.this.tB.getFirstVisiblePosition()).getBottom();
                    }
                }
            }
        }

        public void onAllItemCheckedStateChanged(ActionMode actionMode, boolean z) {
            AbsListView.MultiChoiceModeListener multiChoiceModeListener = this.tP;
            if (multiChoiceModeListener instanceof MultiChoiceModeListener) {
                ((MultiChoiceModeListener) multiChoiceModeListener).onAllItemCheckedStateChanged(EditableListViewDelegate.this.mActionMode, z);
            }
        }
    }

    static /* synthetic */ int d(EditableListViewDelegate editableListViewDelegate, int i) {
        int i2 = editableListViewDelegate.tH + i;
        editableListViewDelegate.tH = i2;
        return i2;
    }

    private int getCheckableItemCount() {
        if (this.tM != null) {
            return this.tM.getCheckableItemCount();
        }
        return getAdapter() != null ? getAdapter().getCount() : 0;
    }

    private boolean isItemCheckable(int i) {
        return this.tM == null || this.tM.isItemCheckable(i);
    }

    public void initialize(AbsListView absListView, Class<? extends AbsListView> cls) {
        if (absListView != null) {
            this.tB = absListView;
            this.tC = cls;
            this.tB.setChoiceMode(3);
            this.tB.setRecyclerListener(this.tL);
            this.tG = this.tB instanceof ListView;
            if (this.tB.getAdapter() != null) {
                ListAdapter listAdapter = (ListAdapter) this.tB.getAdapter();
                tv.invoke(this.tC, this.tB, (ListAdapter) null);
                setAdapter(listAdapter);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("absListView is null");
    }

    public AbsListView getListView() {
        return this.tB;
    }

    public void setUpdateListener(UpdateListener updateListener) {
        if (updateListener != null) {
            this.tK = updateListener;
        }
    }

    public boolean isAllItemsChecked() {
        return this.tH != 0 && getCheckableItemCount() == this.tH;
    }

    public void setAllItemsChecked(boolean z) {
        this.tF = true;
        int count = getAdapter().getCount();
        for (int i = 0; i < count; i++) {
            if (isItemCheckable(i)) {
                setItemChecked(i, z);
            }
        }
        this.tH = z ? getCheckableItemCount() : 0;
        this.tF = false;
        this.tK.updateCheckStatus(this.mActionMode);
        bG();
        if (this.tE != null) {
            this.tE.onAllItemCheckedStateChanged(this.mActionMode, z);
        }
    }

    public void clearChoices() {
        tw.invoke(this.tC, this.tB, new Object[0]);
        this.tH = 0;
        this.tK.updateCheckStatus(this.mActionMode);
        bG();
        this.tH = 0;
    }

    public void setItemChecked(int i, boolean z) {
        int headerViewsCount;
        if (this.tG) {
            headerViewsCount = ((ListView) this.tB).getHeaderViewsCount();
        } else {
            headerViewsCount = 0;
        }
        tx.invoke(this.tC, this.tB, Integer.valueOf(i + headerViewsCount), Boolean.valueOf(z));
    }

    public boolean isItemChecked(int i) {
        int headerViewsCount;
        if (this.tG) {
            headerViewsCount = ((ListView) this.tB).getHeaderViewsCount();
        } else {
            headerViewsCount = 0;
        }
        return ty.invokeBoolean(this.tC, this.tB, Integer.valueOf(i + headerViewsCount));
    }

    public boolean isItemIdChecked(long j) {
        for (long j2 : this.tB.getCheckedItemIds()) {
            if (j == j2) {
                return true;
            }
        }
        return false;
    }

    public SparseBooleanArray getCheckedItemPositions() {
        return ((SparseBooleanArray) tz.invokeObject(this.tC, this.tB, new Object[0])).clone();
    }

    public ListAdapter getAdapter() {
        return this.tD != null ? this.tD.getWrappedAdapter() : null;
    }

    public void setItemCheckFilter(ItemCheckFilter itemCheckFilter) {
        this.tM = itemCheckFilter;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter == getAdapter()) {
            return;
        }
        if (listAdapter == null) {
            this.tD = null;
            tv.invoke(this.tC, this.tB, (ListAdapter) null);
            return;
        }
        this.tD = new ListAdapterWrapper(listAdapter);
        tv.invoke(this.tC, this.tB, this.tD);
    }

    public void setMultiChoiceModeListener(AbsListView.MultiChoiceModeListener multiChoiceModeListener) {
        if (this.tE == null) {
            this.tE = new MultiChoiceModeListenerWrapper();
        }
        this.tE.a(multiChoiceModeListener);
        tA.invoke(this.tC, this.tB, this.tE);
    }

    public boolean isInActionMode() {
        return this.mActionMode != null;
    }

    private void bG() {
        int firstVisiblePosition = this.tB.getFirstVisiblePosition();
        int childCount = this.tB.getChildCount();
        for (int i = 0; i < childCount; i++) {
            int i2 = firstVisiblePosition + i;
            this.tK.updateOnScreenCheckedView(this.tB.getChildAt(i), i2, getAdapter().getItemId(i2));
        }
    }

    public void updateOnScreenCheckedView(View view, int i, long j) {
        if (view != null) {
            boolean z = ((SparseBooleanArray) tz.invokeObject(this.tC, this.tB, new Object[0])).get(i);
            CheckBox i2 = i(view);
            if (i2 != null) {
                i2.setChecked(z);
            } else if (view instanceof Checkable) {
                ((Checkable) view).setChecked(z);
            }
        }
    }

    public void updateCheckStatus(ActionMode actionMode) {
        if (actionMode != null) {
            int i;
            int i2 = this.tH;
            Resources resources = this.tB.getResources();
            boolean z = true;
            if (i2 == 0) {
                actionMode.setTitle(resources.getString(R.string.select_item));
            } else {
                actionMode.setTitle(String.format(resources.getQuantityString(R.plurals.items_selected, i2), new Object[]{Integer.valueOf(i2)}));
            }
            EditActionMode editActionMode = (EditActionMode) actionMode;
            if (isAllItemsChecked()) {
                i = R.string.deselect_all;
            } else {
                i = R.string.select_all;
            }
            editActionMode.setButton((int) EditActionMode.BUTTON2, i);
            Menu menu = actionMode.getMenu();
            if (i2 == 0) {
                z = false;
            }
            menu.setGroupEnabled(0, z);
        }
    }

    private CheckBox i(View view) {
        CheckBox checkBox = (CheckBox) view.getTag(tu);
        if (checkBox == null) {
            checkBox = (CheckBox) view.findViewById(16908289);
            if (checkBox != null) {
                view.setTag(tu, checkBox);
            }
        }
        return checkBox;
    }

    private List<CheckBox> bH() {
        int childCount = this.tB.getChildCount();
        List<CheckBox> list = this.tJ;
        this.tJ.clear();
        for (int i = 0; i < childCount; i++) {
            CheckBox i2 = i(this.tB.getChildAt(i));
            if (i2 != null) {
                list.add(i2);
            }
        }
        return list;
    }
}
