package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.model.AlbumConstants.ShareAlbum;
import com.miui.gallery.preference.GalleryPreferences.Album;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.provider.ShareAlbumManager;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseAlbumListRecyclerAdapter<VH extends BaseViewHolder> extends BaseGalleryRecyclerAdapter<VH> implements AlbumConstants {
    private Bundle mPeopleFaceCover = null;
    private Map<String, ShareAlbum> mSharedAlbums;

    public BaseAlbumListRecyclerAdapter(Context context) {
        super(context);
    }

    protected void initDisplayImageOptions() {
        super.initDisplayImageOptions();
        this.mDisplayImageOptionBuilder.showImageOnLoading(R.drawable.default_album_cover);
        this.mDisplayImageOptionBuilder.showImageOnFail(R.drawable.default_album_cover);
        this.mDefaultDisplayImageOptions = this.mDisplayImageOptionBuilder.build();
    }

    public void setSharedAlbums(Cursor cursor) {
        if (this.mSharedAlbums != null) {
            this.mSharedAlbums.clear();
        }
        if (cursor != null) {
            if (cursor.moveToFirst()) {
                do {
                    ShareAlbum shareAlbum = new ShareAlbum();
                    shareAlbum.mAlbumId = cursor.getString(0);
                    shareAlbum.mCreatorId = cursor.getString(1);
                    shareAlbum.mUserCount = cursor.getInt(2);
                    shareAlbum.mOwnerNickName = cursor.getString(3);
                    if (this.mSharedAlbums == null) {
                        this.mSharedAlbums = new HashMap();
                    }
                    this.mSharedAlbums.put(shareAlbum.mAlbumId, shareAlbum);
                } while (cursor.moveToNext());
            }
            if (getItemCount() > 0) {
                notifyDataSetChanged();
            }
        }
    }

    public void setPeopleFaceCover(Cursor cursor) {
        if (cursor != null) {
            this.mPeopleFaceCover = cursor.getExtras();
            notifyDataSetChanged();
        }
    }

    public Bundle getPeopleFaceCover() {
        return this.mPeopleFaceCover;
    }

    public String getLocalPath(int position) {
        return BaseGalleryRecyclerAdapter.getMicroPath(moveCursorToPosition(position), 3, 4);
    }

    public Uri getDownloadUri(Cursor cursor) {
        return BaseGalleryRecyclerAdapter.getDownloadUri(cursor, 5, 2);
    }

    public Uri getDownloadUri(int position) {
        return getDownloadUri(moveCursorToPosition(position));
    }

    public long getFileLength(int position) {
        return moveCursorToPosition(position).getLong(18);
    }

    public boolean isForceTypeTime(int position) {
        return isForceTypeTime(moveCursorToPosition(position));
    }

    protected boolean isForceTypeTime(Cursor cursor) {
        return Album.isForceTopAlbumByTopTime(cursor.getLong(14));
    }

    public String getAlbumName(int position) {
        return getAlbumName(moveCursorToPosition(position));
    }

    public String getAlbumLocalPath(int position) {
        return getAlbumLocalPath(moveCursorToPosition(position));
    }

    public int getAlbumCount(int position) {
        return getAlbumCount(moveCursorToPosition(position));
    }

    protected int getAlbumCount(Cursor cursor) {
        return cursor.getInt(6);
    }

    protected boolean isVideoAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483647L;
    }

    protected boolean isPanoAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483645;
    }

    private boolean isFaceAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483646;
    }

    public static boolean isFaceAlbum(long id) {
        return id == 2147483646;
    }

    public static boolean isRecentAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483644;
    }

    public static boolean isRecentAlbum(long id) {
        return id == 2147483644;
    }

    public static boolean isFavoritesAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483642;
    }

    protected String getAlbumName(Cursor cursor) {
        if (isCameraAlbum(cursor)) {
            return this.mContext.getString(R.string.album_camera_name);
        }
        if (isScreenshotsAlbum(cursor)) {
            return this.mContext.getString(R.string.album_screenshot_name);
        }
        if (isVideoAlbum(cursor)) {
            return this.mContext.getString(R.string.album_videos_name);
        }
        if (isFaceAlbum(cursor)) {
            return this.mContext.getString(R.string.album_faces_name);
        }
        if (isPanoAlbum(cursor)) {
            return this.mContext.getString(R.string.album_pano_name);
        }
        if (isRecentAlbum(cursor)) {
            return this.mContext.getString(R.string.album_name_recent_discovery);
        }
        if (isFavoritesAlbum(cursor)) {
            return this.mContext.getString(R.string.album_favorites_name);
        }
        return cursor.getString(1);
    }

    protected String getAlbumLocalPath(Cursor cursor) {
        return cursor.getString(16);
    }

    public boolean isShareAlbum(long albumId) {
        return isOtherShareAlbum(albumId) || isOwnerShareAlbum(albumId);
    }

    public boolean isOwnerShareAlbum(int position) {
        return isOwnerShareAlbum(moveCursorToPosition(position));
    }

    protected boolean isOwnerShareAlbum(Cursor cursor) {
        return isOwnerShareAlbum(cursor.getLong(0));
    }

    public boolean isOwnerShareAlbum(long albumId) {
        return albumId < 2147383647 && this.mSharedAlbums != null && this.mSharedAlbums.containsKey(String.valueOf(albumId));
    }

    public ShareAlbum getShareAlbumInfo(int position) {
        return this.mSharedAlbums != null ? (ShareAlbum) this.mSharedAlbums.get(String.valueOf(moveCursorToPosition(position).getInt(0))) : null;
    }

    public boolean isOtherShareAlbum(int position) {
        return isOtherShareAlbum(moveCursorToPosition(position));
    }

    protected static boolean isOtherShareAlbum(Cursor cursor) {
        return isOtherShareAlbum(cursor.getLong(0));
    }

    public static boolean isOtherShareAlbum(long albumId) {
        return ShareAlbumManager.isOtherShareAlbumId(albumId);
    }

    public boolean isBabyAlbum(int position) {
        return isBabyAlbum(moveCursorToPosition(position));
    }

    protected boolean isBabyAlbum(Cursor cursor) {
        return !TextUtils.isEmpty(cursor.getString(8));
    }

    public String getBabyAlbumPeopleId(int position) {
        return moveCursorToPosition(position).getString(7);
    }

    public String getThumbnailInfoOfBaby(int position) {
        return moveCursorToPosition(position).getString(9);
    }

    public String getBabyInfo(int position) {
        return moveCursorToPosition(position).getString(8);
    }

    public String getBabySharerInfo(int position) {
        return moveCursorToPosition(position).getString(15);
    }

    public String getServerId(int position) {
        return moveCursorToPosition(position).getString(10);
    }

    public boolean albumUnwriteable(int position) {
        if (moveCursorToPosition(position).getInt(12) == 1) {
            return true;
        }
        return false;
    }

    public Long getAttributes(int position) {
        return Long.valueOf(moveCursorToPosition(position).getLong(11));
    }

    protected boolean isCameraAlbum(Cursor cursor) {
        return String.valueOf(1).equals(cursor.getString(10));
    }

    public boolean isScreenshotsAlbum(int position) {
        return isScreenshotsAlbum(moveCursorToPosition(position));
    }

    public boolean isPanoAlbum(int position) {
        return isPanoAlbum(moveCursorToPosition(position));
    }

    private static boolean isScreenshotsAlbum(Cursor cursor) {
        return isScreenshotsAlbum(cursor.getString(10));
    }

    private static boolean isScreenshotsAlbum(String serverId) {
        return String.valueOf(2).equals(serverId);
    }

    public boolean isSystemAlbum(int position) {
        return isSystemAlbum(moveCursorToPosition(position));
    }

    protected static boolean isSystemAlbum(Cursor cursor) {
        return isSystemAlbum(cursor.getString(10));
    }

    public static boolean isSystemAlbum(String serverId) {
        for (Long albumId : GalleryContract.Album.ALL_SYSTEM_ALBUM_SERVER_IDS) {
            if (String.valueOf(albumId).equals(serverId)) {
                return true;
            }
        }
        return false;
    }

    public boolean isHiddenAlbum(int position) {
        return (moveCursorToPosition(position).getLong(11) & 16) != 0;
    }

    public boolean isAutoUploadedAlbum(int position) {
        return isAutoUploadedAlbum(moveCursorToPosition(position));
    }

    protected static boolean isAutoUploadedAlbum(Cursor cursor) {
        return (cursor.getLong(11) & 1) != 0 || ((isSystemAlbum(cursor) && !isScreenshotsAlbum(cursor)) || isOtherShareAlbum(cursor));
    }

    public boolean isAutoUploadedAlbum(long attributes, String serverId, long albumId) {
        return (1 & attributes) != 0 || ((isSystemAlbum(serverId) && !isScreenshotsAlbum(serverId)) || isOtherShareAlbum(albumId));
    }

    protected static boolean isOtherAlbum(Cursor cursor) {
        return cursor.getInt(17) == 1;
    }

    public boolean isOtherAlbum(int position) {
        return isOtherAlbum(moveCursorToPosition(position));
    }

    public boolean isShowedPhotosTabAlbum(int position) {
        return (moveCursorToPosition(position).getLong(11) & 4) != 0;
    }

    public String[] getProjection() {
        return PROJECTION;
    }
}
