package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseMediaSyncStateAdapter.SyncStateShowScene;
import com.miui.gallery.ui.AlbumDetailGridHeaderItem;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;
import java.util.ArrayList;

public class AlbumDetailTimeLineAdapter extends AlbumDetailSimpleAdapter implements StickyGridHeadersBaseAdapter {
    protected ArrayList<Integer> mGroupItemCount;
    protected ArrayList<String> mGroupStartLocations;
    protected ArrayList<Integer> mGroupStartPos;

    public AlbumDetailTimeLineAdapter(Context context) {
        super(context);
    }

    public AlbumDetailTimeLineAdapter(Context context, SyncStateShowScene scene) {
        super(context, scene);
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.album_detail_grid_header_item, parent, false);
        }
        String location = null;
        if (!(this.mGroupStartLocations == null || this.mGroupStartPos == null)) {
            location = (String) this.mGroupStartLocations.get(position);
            position = ((Integer) this.mGroupStartPos.get(position)).intValue();
        }
        ((AlbumDetailGridHeaderItem) convertView).bindData(((Cursor) getItem(position)).getLong(17), location);
        return convertView;
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public int getCountForHeader(int header) {
        return this.mGroupItemCount == null ? 0 : ((Integer) this.mGroupItemCount.get(header)).intValue();
    }

    public int getNumHeaders() {
        return this.mGroupItemCount == null ? 0 : this.mGroupItemCount.size();
    }

    public Cursor swapCursor(Cursor newCursor) {
        if (newCursor != null && newCursor.getExtras().containsKey("extra_timeline_item_count_in_group") && newCursor.getExtras().containsKey("extra_timeline_group_start_pos") && newCursor.getExtras().containsKey("extra_timeline_group_start_locations")) {
            this.mGroupItemCount = newCursor.getExtras().getIntegerArrayList("extra_timeline_item_count_in_group");
            this.mGroupStartPos = newCursor.getExtras().getIntegerArrayList("extra_timeline_group_start_pos");
            this.mGroupStartLocations = newCursor.getExtras().getStringArrayList("extra_timeline_group_start_locations");
        } else {
            if (this.mGroupItemCount != null) {
                this.mGroupItemCount.clear();
            }
            if (this.mGroupStartPos != null) {
                this.mGroupStartPos.clear();
            }
            if (this.mGroupStartLocations != null) {
                this.mGroupStartLocations.clear();
            }
        }
        return super.swapCursor(newCursor);
    }
}
