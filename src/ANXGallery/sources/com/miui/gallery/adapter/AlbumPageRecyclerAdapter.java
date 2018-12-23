package com.miui.gallery.adapter;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.support.v7.widget.RecyclerView;
import android.text.TextPaint;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.BabyAlbumDetailActivity;
import com.miui.gallery.provider.GalleryContract.RecentAlbum;
import com.miui.gallery.util.CursorUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AlbumPageRecyclerAdapter extends AlbumRecyclerAdapterBase implements OnItemClickListener {
    private Activity mActivity;
    private int mForceTopAlbumCount = 0;
    private boolean mHaveOtherAlbum;
    private int mMostlyRecentCreatedAlbumPosition;
    private int mSystemAlbumCount = 0;
    private int mUnclassifiedAlbumCount = 0;

    public AlbumPageRecyclerAdapter(Activity activity) {
        super(activity);
        this.mActivity = activity;
    }

    public int getBottomDividerType(int adapterPosition) {
        if (!this.mHaveOtherAlbum && adapterPosition == getItemCount() - 1) {
            return 3;
        }
        if ((this.mForceTopAlbumCount != 0 && adapterPosition == this.mForceTopAlbumCount - 1) || ((this.mForceTopAlbumCount + this.mSystemAlbumCount != 0 && adapterPosition == (this.mForceTopAlbumCount + this.mSystemAlbumCount) - 1) || ((this.mUnclassifiedAlbumCount + this.mForceTopAlbumCount) + this.mSystemAlbumCount != 0 && adapterPosition == ((this.mUnclassifiedAlbumCount + this.mForceTopAlbumCount) + this.mSystemAlbumCount) - 1))) {
            return 1;
        }
        if (adapterPosition < getItemCount() - 1) {
            return 2;
        }
        return 3;
    }

    public String getFormedNameNotExceedMaxWidth(Cursor cursor, TextView textView, int maxWidthId) {
        TextPaint paint = textView.getPaint();
        int maxWidth = this.mContext.getResources().getDimensionPixelSize(maxWidthId);
        cursor.moveToNext();
        String firstAlbumName = getAlbumName(cursor);
        float width = paint.measureText(firstAlbumName);
        if (width > ((float) maxWidth)) {
            return firstAlbumName;
        }
        float total = width;
        String split = this.mContext.getString(R.string.name_split);
        float splitWidth = paint.measureText(split);
        StringBuilder name = new StringBuilder();
        name.append(firstAlbumName);
        while (cursor.moveToNext() && total + splitWidth <= ((float) maxWidth)) {
            String albumName = getAlbumName(cursor);
            float temp = paint.measureText(albumName);
            if ((total + splitWidth) + temp > ((float) maxWidth)) {
                break;
            }
            name.append(split);
            name.append(albumName);
            total = (total + splitWidth) + temp;
        }
        return name.toString();
    }

    protected Intent newClickItemIntent(int position, long id, boolean isLocalAlbum) {
        if (BaseAlbumListRecyclerAdapter.isFaceAlbum(id)) {
            return new Intent("com.miui.gallery.action.VIEW_PEOPLE");
        }
        Intent intent;
        if (BaseAlbumListRecyclerAdapter.isRecentAlbum(id)) {
            intent = new Intent("android.intent.action.VIEW");
            intent.setData(RecentAlbum.VIEW_PAGE_URI.buildUpon().appendQueryParameter("source", "album_page").build());
            intent.setPackage(this.mContext.getPackageName());
            return intent;
        }
        if (isBabyAlbum(position)) {
            intent = new Intent(this.mContext, BabyAlbumDetailActivity.class);
            intent.putExtra("people_id", getBabyAlbumPeopleId(position));
            intent.putExtra("baby_info", getBabyInfo(position));
            intent.putExtra("thumbnail_info_of_baby", getThumbnailInfoOfBaby(position));
            intent.putExtra("baby_sharer_info", getBabySharerInfo(position));
        } else {
            intent = new Intent("com.miui.gallery.action.VIEW_ALBUM_DETAIL");
        }
        intent.putExtra("other_share_album", isOtherShareAlbum(position));
        intent.putExtra("owner_share_album", isOwnerShareAlbum(position));
        intent.putExtra("is_local_album", isLocalAlbum);
        intent.putExtra("screenshot_album", isScreenshotsAlbum(position));
        intent.putExtra("pano_album", isPanoAlbum(position));
        intent.putExtra("album_id", id);
        intent.putExtra("album_name", getAlbumName(position));
        intent.putExtra("album_server_id", getServerId(position));
        intent.putExtra("attributes", getAttributes(position));
        intent.putExtra("album_unwriteable", albumUnwriteable(position));
        intent.putExtra("album_local_path", getAlbumLocalPath(position));
        return intent;
    }

    private boolean isSyncable() {
        return SyncUtil.existXiaomiAccount(this.mActivity);
    }

    public boolean onItemClick(RecyclerView parent, View view, int position, long id) {
        long itemId = getItemId(position);
        boolean z = (isSyncable() && isAutoUploadedAlbum(position)) ? false : true;
        this.mActivity.startActivity(newClickItemIntent(position, itemId, z));
        return true;
    }

    public int getMostlyRecentCreatedAlbumPosition() {
        return this.mMostlyRecentCreatedAlbumPosition;
    }

    public MatrixCursor[] classifyCursor(Cursor cursor) {
        this.mSystemAlbumCount = 0;
        this.mForceTopAlbumCount = 0;
        this.mUnclassifiedAlbumCount = 0;
        MatrixCursor[] result = new MatrixCursor[2];
        if (cursor != null && cursor.getCount() > 0) {
            boolean z;
            String[] projection = PROJECTION;
            List<Integer> babyAlbumPositions = new ArrayList();
            List<Integer> unclassifiedAlbumPositions = new ArrayList();
            MatrixCursor albumPageCursor = new MatrixCursor(projection);
            MatrixCursor otherAlbumPageCursor = new MatrixCursor(projection);
            Object[] columns = new Object[projection.length];
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                if (BaseAlbumListRecyclerAdapter.isOtherAlbum(cursor)) {
                    CursorUtils.addRowToMatrixCursor(cursor, otherAlbumPageCursor, columns);
                } else if (isForceTypeTime(cursor)) {
                    CursorUtils.addRowToMatrixCursor(cursor, albumPageCursor, columns);
                    this.mForceTopAlbumCount++;
                } else if (BaseAlbumListRecyclerAdapter.isSystemAlbum(cursor)) {
                    CursorUtils.addRowToMatrixCursor(cursor, albumPageCursor, columns);
                    this.mSystemAlbumCount++;
                } else if (isBabyAlbum(cursor)) {
                    babyAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
                    this.mUnclassifiedAlbumCount++;
                } else {
                    unclassifiedAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
                    this.mUnclassifiedAlbumCount++;
                }
                cursor.moveToNext();
            }
            if (babyAlbumPositions.size() > 0) {
                for (Integer position : babyAlbumPositions) {
                    cursor.moveToPosition(position.intValue());
                    CursorUtils.addRowToMatrixCursor(cursor, albumPageCursor, columns);
                }
            }
            this.mMostlyRecentCreatedAlbumPosition = albumPageCursor.getCount();
            if (unclassifiedAlbumPositions.size() > 0) {
                Collections.reverse(unclassifiedAlbumPositions);
                for (Integer position2 : unclassifiedAlbumPositions) {
                    cursor.moveToPosition(position2.intValue());
                    CursorUtils.addRowToMatrixCursor(cursor, albumPageCursor, columns);
                }
            }
            otherAlbumPageCursor = classifyOtherAlbumsCursor(otherAlbumPageCursor);
            if (otherAlbumPageCursor == null || otherAlbumPageCursor.getCount() <= 0) {
                z = false;
            } else {
                z = true;
            }
            this.mHaveOtherAlbum = z;
            result[0] = albumPageCursor;
            result[1] = otherAlbumPageCursor;
        }
        return result;
    }

    public MatrixCursor classifyOtherAlbumsCursor(Cursor cursor) {
        MatrixCursor result = null;
        if (cursor != null && cursor.getCount() > 0) {
            String[] projection = PROJECTION;
            List<Integer> unclassifiedAlbumPositions = new ArrayList();
            result = new MatrixCursor(projection);
            Object[] columns = new Object[projection.length];
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                if (isForceTypeTime(cursor)) {
                    CursorUtils.addRowToMatrixCursor(cursor, result, columns);
                } else {
                    unclassifiedAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
                }
                cursor.moveToNext();
            }
            if (unclassifiedAlbumPositions.size() > 0) {
                Collections.reverse(unclassifiedAlbumPositions);
                for (Integer position : unclassifiedAlbumPositions) {
                    cursor.moveToPosition(position.intValue());
                    CursorUtils.addRowToMatrixCursor(cursor, result, columns);
                }
            }
        }
        return result;
    }
}
