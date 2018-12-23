package com.miui.gallery.cloud.card.model;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import java.util.List;

public class CardInfo {
    @SerializedName("description")
    private String mDescription;
    @SerializedName("extraInfo")
    private String mExtraInfo;
    @SerializedName("appCreate")
    private boolean mIsAppCreate;
    @SerializedName("mediaInfo")
    private MediaInfoBean mMediaInfo;
    @SerializedName("cardId")
    private String mServerId;
    @SerializedName("sortTime")
    private long mSortTime;
    @SerializedName("status")
    private String mStatus;
    @SerializedName("tag")
    private long mTag;
    @SerializedName("name")
    private String mTitle;
    @SerializedName("updateTime")
    private long mUpdateTime;
    @SerializedName("scenarioId")
    private int scenarioId;

    public static class MediaInfoBean {
        @SerializedName("allMediaList")
        private List<Long> allMediaList;
        @SerializedName("coverMediaList")
        private List<Long> coverMediaList;
        @SerializedName("mediaList")
        private List<Long> mediaList;

        public List<Long> getCoverMediaList() {
            return this.coverMediaList;
        }

        public List<Long> getMediaList() {
            return this.mediaList;
        }

        public List<Long> getAllMediaList() {
            return this.allMediaList;
        }
    }

    public String getServerId() {
        return this.mServerId;
    }

    public int getScenarioId() {
        return this.scenarioId;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public long getSortTime() {
        return this.mSortTime;
    }

    public long getUpdateTime() {
        return this.mUpdateTime;
    }

    public MediaInfoBean getMediaInfo() {
        return this.mMediaInfo;
    }

    public String getExtraInfo() {
        return this.mExtraInfo;
    }

    public boolean isAppCreate() {
        return this.mIsAppCreate;
    }

    public long getTag() {
        return this.mTag;
    }

    public boolean isStatusDelete() {
        return TextUtils.equals("deleted", this.mStatus);
    }
}
