package com.miui.gallery.search.core.display;

import android.app.Activity;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;

public class SectionedSuggestionAdapter extends BaseSuggestionAdapter<GroupedSuggestionCursor<SuggestionSection>> {
    public SectionedSuggestionAdapter(Activity activity, SuggestionViewFactory viewFactory, String from) {
        super(activity, viewFactory, from);
    }

    protected SuggestionSection getSection(int sectionIndex) {
        return getSuggestionCursor() != null ? (SuggestionSection) ((GroupedSuggestionCursor) getSuggestionCursor()).getGroup(sectionIndex) : null;
    }

    protected int getInnerItemViewCount() {
        int total = 0;
        for (int i = 0; i < getSectionCount(); i++) {
            total += getSectionTotalItemCount(i);
        }
        return total;
    }

    protected int getSectionTotalItemCount(int sectionIndex) {
        int sectionItemCount = getSectionItemCount(sectionIndex) + getHeaderCount(sectionIndex);
        int i = (getSection(sectionIndex).moveToMore() == null || useBatchContent(sectionIndex)) ? 0 : 1;
        return i + sectionItemCount;
    }

    protected int getHeaderCount(int sectionIndex) {
        return 1;
    }

    protected int getSectionCount() {
        return getSuggestionCursor() != null ? ((GroupedSuggestionCursor) getSuggestionCursor()).getGroupCount() : 0;
    }

    protected int getSectionItemCount(int sectionIndex) {
        if (getSection(sectionIndex) == null) {
            return 0;
        }
        return useBatchContent(sectionIndex) ? getHeaderCount(sectionIndex) : getSection(sectionIndex).getCount();
    }

    protected boolean useBatchContent(int sectionIndex) {
        return false;
    }

    protected int getInnerItemViewType(int position) {
        int[] indexes = getIndexes(position);
        return ((Integer) this.mViewTypeMap.get(this.mViewFactory.getViewType(this.mQueryInfo, getSection(indexes[0]), indexes[1]))).intValue();
    }

    protected void bindInnerItemViewHolder(BaseSuggestionViewHolder holder, int position) {
        int[] indexes = getIndexes(position);
        this.mViewFactory.bindViewHolder(this.mQueryInfo, getSection(indexes[0]), indexes[1], holder, getActionClickListener());
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002a  */
    public int[] getIndexes(int r10) {
        /*
        r9 = this;
        r8 = 0;
        r7 = 1;
        r5 = 2;
        r2 = new int[r5];
        r3 = 0;
        r1 = 0;
    L_0x0007:
        r5 = r9.getSectionCount();
        if (r1 >= r5) goto L_0x0026;
    L_0x000d:
        r4 = r9.getSectionTotalItemCount(r1);
        r5 = r3 + r4;
        if (r10 >= r5) goto L_0x0057;
    L_0x0015:
        r0 = r9.getHeaderCount(r1);
        r2[r8] = r1;
        r5 = r10 - r3;
        r2[r7] = r5;
        r5 = r2[r7];
        if (r5 >= r0) goto L_0x0038;
    L_0x0023:
        r5 = -1;
        r2[r7] = r5;
    L_0x0026:
        r5 = r2[r7];
        if (r5 < 0) goto L_0x0037;
    L_0x002a:
        r5 = r9.getSuggestionCursor();
        r5 = (com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor) r5;
        r6 = r2[r8];
        r7 = r2[r7];
        r5.moveToPosition(r6, r7);
    L_0x0037:
        return r2;
    L_0x0038:
        r5 = r2[r7];
        r6 = r9.getSectionItemCount(r1);
        r6 = r6 + r0;
        if (r5 != r6) goto L_0x0045;
    L_0x0041:
        r5 = -3;
        r2[r7] = r5;
        goto L_0x0026;
    L_0x0045:
        r5 = r2[r8];
        r5 = r9.useBatchContent(r5);
        if (r5 == 0) goto L_0x0051;
    L_0x004d:
        r5 = -2;
        r2[r7] = r5;
        goto L_0x0026;
    L_0x0051:
        r5 = r2[r7];
        r5 = r5 - r0;
        r2[r7] = r5;
        goto L_0x0026;
    L_0x0057:
        r3 = r3 + r4;
        r1 = r1 + 1;
        goto L_0x0007;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.search.core.display.SectionedSuggestionAdapter.getIndexes(int):int[]");
    }
}
