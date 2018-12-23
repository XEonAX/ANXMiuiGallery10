package com.miui.gallery.cleaner;

import android.content.Context;
import android.text.TextUtils;

public class ScanResult {
    private String mAction;
    private int mCount;
    private String mDescription;
    private OnScanResultClickListener mOnClickListener;
    private String[] mPaths;
    private long mSize;
    private String mTitle;
    private int mType;

    public static class Builder {
        private String mAction;
        private Context mContext;
        private int mCount;
        private String mDescription;
        private OnScanResultClickListener mOnClickListener;
        private String[] mPaths;
        private long mSize;
        private String mTitle;
        private int mType = -1;

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder setType(int type) {
            this.mType = type;
            return this;
        }

        public Builder setSize(long size) {
            this.mSize = size;
            return this;
        }

        public Builder setPaths(String[] paths) {
            this.mPaths = paths;
            return this;
        }

        public Builder setCount(int count) {
            this.mCount = count;
            return this;
        }

        public Builder setTitle(int title) {
            this.mTitle = this.mContext.getString(title);
            return this;
        }

        public Builder setAction(int action) {
            this.mAction = this.mContext.getString(action);
            return this;
        }

        public Builder setDescription(int description) {
            this.mDescription = this.mContext.getString(description);
            return this;
        }

        public Builder setOnScanResultClickListener(OnScanResultClickListener listener) {
            this.mOnClickListener = listener;
            return this;
        }

        public ScanResult build() {
            long j = 0;
            if (this.mType == -1) {
                throw new RuntimeException("the type must set.");
            } else if (TextUtils.isEmpty(this.mTitle)) {
                throw new RuntimeException("the title must not be empty.");
            } else if (TextUtils.isEmpty(this.mAction)) {
                throw new RuntimeException("the action must not be empty.");
            } else if (this.mOnClickListener == null) {
                throw new RuntimeException("the OnScanResultClickListener must not be null");
            } else {
                ScanResult result = new ScanResult();
                result.mType = this.mType;
                if (this.mSize >= 0) {
                    j = this.mSize;
                }
                result.mSize = j;
                result.mPaths = this.mPaths;
                result.mCount = this.mCount;
                result.mTitle = this.mTitle;
                result.mDescription = this.mDescription;
                result.mAction = this.mAction;
                result.mOnClickListener = this.mOnClickListener;
                return result;
            }
        }
    }

    public interface OnScanResultClickListener {
        void onClick(Context context);
    }

    private ScanResult() {
    }

    public int getType() {
        return this.mType;
    }

    public long getSize() {
        return this.mSize;
    }

    public String[] getPaths() {
        return this.mPaths;
    }

    public int getCount() {
        return this.mCount;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getAction() {
        return this.mAction;
    }

    public void onClick(Context context) {
        if (this.mOnClickListener != null) {
            this.mOnClickListener.onClick(context);
        }
    }
}
