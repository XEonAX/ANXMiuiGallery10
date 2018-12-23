package com.miui.gallery.adapter;

import android.app.Activity;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.model.AlbumConstants.ShareAlbum;
import com.miui.gallery.ui.AlbumPageListFaceItem;
import com.miui.gallery.ui.AlbumPageListItemBase.AlbumType;
import com.miui.gallery.ui.AlbumPageListNormalItem;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.DividerTypeProvider;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;

public class AlbumRecyclerAdapterBase extends BaseAlbumListRecyclerAdapter<BaseViewHolder> implements DividerTypeProvider {
    private static boolean sIsGalleryCloudSyncable;
    private Builder mDisplayFaceOptionsBuilder;
    private DisplayImageOptions mDisplayVideoOptions;
    private Builder mDisplayVideoOptionsBuilder;
    private boolean mIsInPickMode;

    public static class AlbumFaceItemViewHolder extends BaseViewHolder {
        private AlbumFaceItemViewHolder(View itemView) {
            super(itemView);
        }

        public static AlbumFaceItemViewHolder newInstance(ViewGroup viewGroup) {
            return new AlbumFaceItemViewHolder(BaseViewHolder.getView(viewGroup, R.layout.album_page_list_face_item_new));
        }
    }

    public static class AlbumNormalItemViewHolder extends BaseViewHolder {
        private AlbumNormalItemViewHolder(View itemView) {
            super(itemView);
        }

        public static AlbumNormalItemViewHolder newInstance(ViewGroup viewGroup) {
            return new AlbumNormalItemViewHolder(BaseViewHolder.getView(viewGroup, R.layout.album_page_list_normal_item));
        }
    }

    public AlbumRecyclerAdapterBase(Activity activity) {
        super(activity);
        sIsGalleryCloudSyncable = SyncUtil.isGalleryCloudSyncable(this.mContext);
    }

    protected void initDisplayImageOptions() {
        super.initDisplayImageOptions();
        this.mDisplayVideoOptionsBuilder = new Builder().cloneFrom(this.mDefaultDisplayImageOptions).showImageOnLoading(R.drawable.default_video_album_cover);
        this.mDisplayVideoOptions = this.mDisplayVideoOptionsBuilder.build();
        this.mDisplayFaceOptionsBuilder = new Builder().cloneFrom(this.mDefaultDisplayImageOptions).showImageOnLoading(0).usingRegionDecoderFace(true).cacheInMemory(true);
    }

    public DisplayImageOptions getDisplayVideoOptions(int position) {
        long fileLength = getFileLength(position);
        if (fileLength > 0) {
            return this.mDisplayVideoOptionsBuilder.considerFileLength(true).fileLength(fileLength).build();
        }
        return this.mDisplayVideoOptions;
    }

    public void updateGalleryCloudSyncableState() {
        boolean syncable = SyncUtil.isGalleryCloudSyncable(this.mContext);
        if (sIsGalleryCloudSyncable != syncable) {
            sIsGalleryCloudSyncable = syncable;
            notifyDataSetChanged();
        }
    }

    public void setInPickMode(boolean isIn) {
        this.mIsInPickMode = isIn;
    }

    public int getTopDividerType(int adapterPosition) {
        return 0;
    }

    public int getBottomDividerType(int adapterPosition) {
        if (adapterPosition != getItemCount() - 1 && adapterPosition < getItemCount() - 1) {
            return 2;
        }
        return 3;
    }

    public boolean isAutoUploadedAlbum(int position) {
        return sIsGalleryCloudSyncable && super.isAutoUploadedAlbum(position);
    }

    public boolean isAutoUploadedAlbum(long attributes, String serverId, long albumId) {
        return sIsGalleryCloudSyncable && super.isAutoUploadedAlbum(attributes, serverId, albumId);
    }

    protected boolean shouldShowForceTop(Cursor cursor) {
        return (this.mIsInPickMode && BaseAlbumListRecyclerAdapter.isOtherAlbum(cursor)) ? false : true;
    }

    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case 1:
                return AlbumNormalItemViewHolder.newInstance(parent);
            case 2:
                return AlbumFaceItemViewHolder.newInstance(parent);
            default:
                return null;
        }
    }

    public void onBindViewHolder(BaseViewHolder holder, int position) {
        if (holder != null) {
            Cursor cursor = moveCursorToPosition(position);
            boolean z;
            switch (holder.getItemViewType()) {
                case 1:
                    DisplayImageOptions displayVideoOptions;
                    AlbumPageListNormalItem item = holder.itemView;
                    boolean isSectionStartItem = position == 0 || getBottomDividerType(position - 1) == 1;
                    boolean isSectionEndItem = position == getItemCount() + -1 || getBottomDividerType(position) == 1;
                    item.adjustAlbumCoverContainerPadding(isSectionStartItem, isSectionEndItem);
                    item.bindCommonInfo(getAlbumName(cursor), getAlbumCount(cursor));
                    String localPath = getLocalPath(position);
                    Uri downloadUri = getDownloadUri(position);
                    if (isVideoAlbum(cursor)) {
                        displayVideoOptions = getDisplayVideoOptions(position);
                    } else {
                        displayVideoOptions = getDisplayImageOptions(position);
                    }
                    item.bindImage(localPath, downloadUri, displayVideoOptions);
                    ShareAlbum album;
                    if (BaseAlbumListRecyclerAdapter.isOtherShareAlbum(cursor)) {
                        album = getShareAlbumInfo(position);
                        if (album == null || TextUtils.isEmpty(album.getOwnerName())) {
                            item.bindType(AlbumType.SHARE, null);
                        } else if (isBabyAlbum(cursor)) {
                            item.bindType(AlbumType.SHARE, this.mContext.getString(R.string.album_others_share_baby_info_format, new Object[]{album.getOwnerName()}));
                        } else {
                            item.bindType(AlbumType.SHARE, this.mContext.getString(R.string.album_others_share_info_format, new Object[]{album.getOwnerName()}));
                        }
                    } else if (isBabyAlbum(position)) {
                        item.bindType(AlbumType.BABY, this.mContext.getString(R.string.album_type_baby));
                    } else if (isOwnerShareAlbum(cursor)) {
                        album = getShareAlbumInfo(position);
                        if (album != null) {
                            item.bindType(AlbumType.OWNER, this.mContext.getResources().getQuantityString(R.plurals.album_already_share_user_count, album.mUserCount, new Object[]{Integer.valueOf(album.mUserCount)}));
                        }
                    } else if (isSystemAlbum(position)) {
                        item.bindType(AlbumType.SYSTEM, null);
                    } else {
                        item.bindType(AlbumType.NORMAL, null);
                    }
                    item.bindIndicator(BaseAlbumListRecyclerAdapter.isRecentAlbum(cursor), isVideoAlbum(cursor), BaseAlbumListRecyclerAdapter.isFavoritesAlbum(cursor), BaseAlbumListRecyclerAdapter.isAutoUploadedAlbum(cursor), this.mIsInPickMode);
                    z = shouldShowForceTop(cursor) && isForceTypeTime(cursor);
                    item.bindForceTopIcon(z);
                    item.bindHiddenMask(isHiddenAlbum(position));
                    return;
                case 2:
                    AlbumPageListFaceItem faceItem = holder.itemView;
                    faceItem.bindCommonInfo(getAlbumName(cursor), getAlbumCount(cursor));
                    faceItem.bindImageAndAlbumCount(getPeopleFaceCover(), this.mDisplayFaceOptionsBuilder);
                    faceItem.bindType(AlbumType.SYSTEM, this.mContext.getString(R.string.album_type_system));
                    z = shouldShowForceTop(cursor) && isForceTypeTime(cursor);
                    faceItem.bindForceTopIcon(z);
                    return;
                default:
                    return;
            }
        }
    }

    public int getItemViewType(int position) {
        if (BaseAlbumListRecyclerAdapter.isFaceAlbum(getItemId(position))) {
            return 2;
        }
        return 1;
    }
}
