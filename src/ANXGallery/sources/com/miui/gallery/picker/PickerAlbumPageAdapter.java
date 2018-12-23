package com.miui.gallery.picker;

import android.app.Activity;
import android.database.Cursor;
import android.database.MatrixCursor;
import com.miui.gallery.adapter.AlbumRecyclerAdapterBase;
import com.miui.gallery.adapter.BaseAlbumListRecyclerAdapter;
import com.miui.gallery.util.CursorUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PickerAlbumPageAdapter extends AlbumRecyclerAdapterBase {
    public PickerAlbumPageAdapter(Activity activity) {
        super(activity);
    }

    public Cursor sortCursor(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        if (cursor.getCount() <= 0 || !cursor.moveToFirst()) {
            return cursor;
        }
        Cursor result = new MatrixCursor(PROJECTION);
        List<Integer> forceTopAlbumPositions = new ArrayList();
        List<Integer> systemAlbumAlbumPositions = new ArrayList();
        List<Integer> babyAlbumPositions = new ArrayList();
        List<Integer> unclassifiedAlbumPositions = new ArrayList();
        List<Integer> sortedAlbumPositions = new ArrayList();
        Object[] columns = new Object[PROJECTION.length];
        int lastClassification = cursor.getInt(17);
        while (!cursor.isAfterLast()) {
            int classification = cursor.getInt(17);
            if (classification != lastClassification) {
                sortedAlbumPositions.addAll(forceTopAlbumPositions);
                forceTopAlbumPositions.clear();
                sortedAlbumPositions.addAll(systemAlbumAlbumPositions);
                systemAlbumAlbumPositions.clear();
                sortedAlbumPositions.addAll(babyAlbumPositions);
                babyAlbumPositions.clear();
                Collections.reverse(unclassifiedAlbumPositions);
                sortedAlbumPositions.addAll(unclassifiedAlbumPositions);
                unclassifiedAlbumPositions.clear();
                lastClassification = classification;
            }
            if (isForceTypeTime(cursor)) {
                forceTopAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
            } else if (BaseAlbumListRecyclerAdapter.isSystemAlbum(cursor)) {
                systemAlbumAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
            } else if (isBabyAlbum(cursor)) {
                babyAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
            } else {
                unclassifiedAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
            }
            cursor.moveToNext();
        }
        sortedAlbumPositions.addAll(forceTopAlbumPositions);
        sortedAlbumPositions.addAll(systemAlbumAlbumPositions);
        sortedAlbumPositions.addAll(babyAlbumPositions);
        Collections.reverse(unclassifiedAlbumPositions);
        sortedAlbumPositions.addAll(unclassifiedAlbumPositions);
        for (Integer position : sortedAlbumPositions) {
            cursor.moveToPosition(position.intValue());
            CursorUtils.addRowToMatrixCursor(cursor, result, columns);
        }
        return result;
    }
}
