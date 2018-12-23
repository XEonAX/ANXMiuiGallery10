package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.graphics.RectF;
import android.view.View;
import com.miui.gallery.R;

public abstract class BaseMediaAdapter extends BaseAdapter {

    public static class CheckedItem {
        private int mHeight;
        private long mId;
        private String mMicroThumbnailFile;
        private String mMimeType;
        private String mOriginFile;
        private int mServerType;
        private String mSha1;
        private long mSize;
        private String mThumbnailFile;
        private int mWidth;

        private CheckedItem(BaseMediaAdapter adapter, int position) {
            this.mId = adapter.getItemKey(position);
            this.mSha1 = adapter.getSha1(position);
            this.mMicroThumbnailFile = adapter.getMicroThumbFilePath(position);
            this.mThumbnailFile = adapter.getThumbFilePath(position);
            this.mOriginFile = adapter.getOriginFilePath(position);
            this.mMimeType = adapter.getMimeType(position);
        }

        public long getId() {
            return this.mId;
        }

        public String getSha1() {
            return this.mSha1;
        }

        public String getThumbnailFile() {
            return this.mThumbnailFile;
        }

        public String getOriginFile() {
            return this.mOriginFile;
        }

        public String getMimeType() {
            return this.mMimeType;
        }

        public long getSize() {
            return this.mSize;
        }

        public void setSize(long size) {
            this.mSize = size;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public void setHeight(int height) {
            this.mHeight = height;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public void setWidth(int width) {
            this.mWidth = width;
        }

        public int getServerType() {
            return this.mServerType;
        }

        public void setServerType(int serverType) {
            this.mServerType = serverType;
        }
    }

    protected abstract void doBindView(View view, Context context, Cursor cursor);

    public abstract long getItemKey(int i);

    public abstract String getMimeType(int i);

    public abstract String getSha1(int i);

    public BaseMediaAdapter(Context context) {
        super(context);
    }

    public RectF getItemDecodeRectF() {
        return null;
    }

    public byte[] getItemSecretKey(int position) {
        return null;
    }

    public final void bindView(View view, Context context, Cursor cursor) {
        view.setTag(R.id.tag_item_position, Integer.valueOf(cursor.getPosition()));
        doBindView(view, context, cursor);
    }

    public CheckedItem getCheckedItem(int position) {
        if (position >= getCount() || position < 0) {
            return null;
        }
        return new CheckedItem(position);
    }
}
