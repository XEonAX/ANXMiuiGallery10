package com.miui.gallery.model;

import android.content.Context;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;

public class AlbumEntity implements Parcelable, AlbumConstants {
    public static final Creator<AlbumEntity> CREATOR = new Creator<AlbumEntity>() {
        public AlbumEntity createFromParcel(Parcel source) {
            return new AlbumEntity(source);
        }

        public AlbumEntity[] newArray(int size) {
            return new AlbumEntity[size];
        }
    };
    private int mAlbumClassification;
    private String mAlbumName;
    private boolean mAlbumUnwriteable;
    private long mAttributes;
    private String mBabyInfo;
    private String mBabyShareInfo;
    private int mCount;
    private long mCoverId;
    private String mCoverPath;
    private String mCoverSha1;
    private int mCoverSyncState;
    private long mId;
    private String mLocalPath;
    private String mPeopleId;
    private String mServerId;
    private long mSortBy;
    private String mThumbnailInfoOfBaby;
    private long mTopTime;

    public static AlbumEntity fromCursor(Cursor cursor) {
        boolean z = true;
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        AlbumEntity entity = new AlbumEntity();
        entity.mId = cursor.getLong(0);
        entity.mAlbumName = getAlbumName(cursor);
        entity.mCoverId = cursor.getLong(2);
        entity.mCoverPath = cursor.getString(3);
        entity.mCoverSha1 = cursor.getString(4);
        entity.mCoverSyncState = cursor.getInt(5);
        entity.mCount = cursor.getInt(6);
        entity.mPeopleId = cursor.getString(7);
        entity.mBabyInfo = cursor.getString(8);
        entity.mThumbnailInfoOfBaby = cursor.getString(9);
        entity.mServerId = cursor.getString(10);
        entity.mAttributes = cursor.getLong(11);
        if (cursor.getInt(12) != 1) {
            z = false;
        }
        entity.mAlbumUnwriteable = z;
        entity.mTopTime = cursor.getLong(13);
        entity.mSortBy = cursor.getLong(14);
        entity.mBabyShareInfo = cursor.getString(15);
        entity.mLocalPath = cursor.getString(16);
        entity.mAlbumClassification = cursor.getInt(17);
        return entity;
    }

    private static String getAlbumName(Cursor cursor) {
        Context context = GalleryApp.sGetAndroidContext();
        String serverId = cursor.getString(10);
        long albumId = cursor.getLong(0);
        if (String.valueOf(1).equals(serverId)) {
            return context.getString(R.string.album_camera_name);
        }
        if (String.valueOf(2).equals(serverId)) {
            return context.getString(R.string.album_screenshot_name);
        }
        if (albumId == 2147483647L) {
            return context.getString(R.string.album_videos_name);
        }
        if (albumId == 2147483646) {
            return context.getString(R.string.album_faces_name);
        }
        if (albumId == 2147483645) {
            return context.getString(R.string.album_pano_name);
        }
        if (albumId == 2147483644) {
            return context.getString(R.string.album_name_recent_discovery);
        }
        if (albumId == 2147483642) {
            return context.getString(R.string.album_favorites_name);
        }
        return cursor.getString(1);
    }

    public long getId() {
        return this.mId;
    }

    public String getAlbumName() {
        return this.mAlbumName;
    }

    public int getCount() {
        return this.mCount;
    }

    public String getBabyInfo() {
        return this.mBabyInfo;
    }

    public String getServerId() {
        return this.mServerId;
    }

    public long getAttributes() {
        return this.mAttributes;
    }

    public String getLocalPath() {
        return this.mLocalPath;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.mId);
        dest.writeString(this.mAlbumName);
        dest.writeLong(this.mCoverId);
        dest.writeString(this.mCoverPath);
        dest.writeString(this.mCoverSha1);
        dest.writeInt(this.mCoverSyncState);
        dest.writeInt(this.mCount);
        dest.writeString(this.mPeopleId);
        dest.writeString(this.mBabyInfo);
        dest.writeString(this.mThumbnailInfoOfBaby);
        dest.writeString(this.mServerId);
        dest.writeLong(this.mAttributes);
        dest.writeByte(this.mAlbumUnwriteable ? (byte) 1 : (byte) 0);
        dest.writeLong(this.mTopTime);
        dest.writeLong(this.mSortBy);
        dest.writeString(this.mBabyShareInfo);
        dest.writeString(this.mLocalPath);
        dest.writeInt(this.mAlbumClassification);
    }

    protected AlbumEntity(Parcel in) {
        this.mId = in.readLong();
        this.mAlbumName = in.readString();
        this.mCoverId = in.readLong();
        this.mCoverPath = in.readString();
        this.mCoverSha1 = in.readString();
        this.mCoverSyncState = in.readInt();
        this.mCount = in.readInt();
        this.mPeopleId = in.readString();
        this.mBabyInfo = in.readString();
        this.mThumbnailInfoOfBaby = in.readString();
        this.mServerId = in.readString();
        this.mAttributes = in.readLong();
        this.mAlbumUnwriteable = in.readByte() != (byte) 0;
        this.mTopTime = in.readLong();
        this.mSortBy = in.readLong();
        this.mBabyShareInfo = in.readString();
        this.mLocalPath = in.readString();
        this.mAlbumClassification = in.readInt();
    }
}
