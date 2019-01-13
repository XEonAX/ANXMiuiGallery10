package com.miui.gallery.card;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.Record.UniqueKey;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import miui.widget.SimpleDialogFragment;
import org.json.JSONException;

public class Card extends Entity implements Comparable<Card> {
    private List<String> mAllMediaSha1s;
    private int mBaseColor;
    private List<MediaFeatureItem> mCoverMediaFeatureItems;
    private int mCreateBy;
    private long mCreateTime;
    private boolean mDeletable;
    private String mDescription;
    private String mDetailUrl;
    private HashMap<String, String> mExtras;
    private int mImageResId;
    private Uri mImageUri;
    private boolean mIsIgnored;
    private boolean mIsVideo;
    private int mLocalFlag;
    private int mScenarioId;
    private List<String> mSelectedMediaSha1s;
    private String mServerId;
    private long mServerTag;
    private String mTitle;
    private UniqueKey mUniqueKey;
    private long mUpdateTime;

    public static class Action implements Parcelable {
        public static final Creator<Action> CREATOR = new Creator<Action>() {
            public Action createFromParcel(Parcel in) {
                return new Action(in);
            }

            public Action[] newArray(int size) {
                return new Action[size];
            }
        };
        private String mText;
        private String mUrl;

        private Action() {
        }

        public Action(Parcel in) {
            this.mText = in.readString();
            this.mUrl = in.readString();
        }

        public String getText() {
            return this.mText;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.mText);
            dest.writeString(this.mUrl);
        }
    }

    public static class Builder {
        private Action mAction;
        private List<String> mAllMediaSha1s;
        private int mBaseColor;
        private final Context mContext;
        private List<MediaFeatureItem> mCoverMediaFeatureItems;
        private int mCreateBy;
        private boolean mDeletable = true;
        private String mDescription;
        private String mDetailUrl;
        private int mImageResId;
        private Uri mImageUri;
        private boolean mIsIgnored = false;
        private boolean mIsVideo = false;
        private int mScenarioId;
        private List<String> mSelectedMediaSha1s;
        private String mServerId;
        private long mServerTag;
        private String mTitle;
        private UniqueKey mUniqueKey;

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder setTitle(String title) {
            this.mTitle = title;
            return this;
        }

        public Builder setDescription(String description) {
            this.mDescription = description;
            return this;
        }

        public Builder setDetailUrl(String url) {
            this.mDetailUrl = url;
            return this;
        }

        public Builder setImageUri(Uri uri) {
            this.mImageUri = uri;
            return this;
        }

        public Builder setDeletable(boolean deletable) {
            this.mDeletable = deletable;
            return this;
        }

        public Builder setUniqueKey(UniqueKey uniqueKey) {
            this.mUniqueKey = uniqueKey;
            return this;
        }

        public Builder setAllMediaSha1s(List<String> allMediaSha1s) {
            this.mAllMediaSha1s = allMediaSha1s;
            return this;
        }

        public Builder setSelectedMediaSha1s(List<String> selectedMediaSha1s) {
            this.mSelectedMediaSha1s = selectedMediaSha1s;
            return this;
        }

        public Builder setCoverMediaFeatureItems(List<MediaFeatureItem> mediaFeatureItems) {
            this.mCoverMediaFeatureItems = mediaFeatureItems;
            return this;
        }

        public Builder setScenarioId(int scenarioId) {
            this.mScenarioId = scenarioId;
            return this;
        }

        public Builder setServerId(String serverId) {
            this.mServerId = serverId;
            return this;
        }

        public Builder setServerTag(long serverTag) {
            this.mServerTag = serverTag;
            return this;
        }

        public Builder setCreateBy(int createBy) {
            this.mCreateBy = createBy;
            return this;
        }

        public Builder setIsIgnored(boolean isIgnored) {
            this.mIsIgnored = isIgnored;
            return this;
        }

        public Card build() {
            if (TextUtils.isEmpty(this.mTitle)) {
                Log.e("Card", "the title must not be empty.");
            }
            if (this.mAction != null && TextUtils.isEmpty(this.mAction.getText())) {
                Log.e("Card", "the text of action must not be empty.");
            }
            Card card = new Card();
            card.mTitle = this.mTitle;
            card.mDescription = this.mDescription;
            card.mDetailUrl = this.mDetailUrl;
            card.mDeletable = this.mDeletable;
            card.mIsVideo = this.mIsVideo;
            card.mImageUri = Card.decodeUri(this.mImageUri);
            card.mBaseColor = this.mBaseColor;
            card.mUniqueKey = this.mUniqueKey;
            card.mAllMediaSha1s = this.mAllMediaSha1s;
            card.mSelectedMediaSha1s = this.mSelectedMediaSha1s;
            card.mCoverMediaFeatureItems = this.mCoverMediaFeatureItems;
            card.mScenarioId = this.mScenarioId;
            card.mServerId = this.mServerId;
            card.mServerTag = this.mServerTag;
            card.mCreateBy = this.mCreateBy;
            card.mIsIgnored = this.mIsIgnored;
            if (this.mImageResId > 0) {
                card.mImageUri = Card.convertResIdToUri(this.mContext, this.mImageResId);
            }
            return card;
        }
    }

    public static class CardExtraInfo {
        public final boolean isIgnored;
        public final UniqueKey uniqueKey;

        public CardExtraInfo(UniqueKey uniqueKey, boolean isIgnored) {
            this.uniqueKey = uniqueKey;
            this.isIgnored = isIgnored;
        }
    }

    /* synthetic */ Card(AnonymousClass1 x0) {
        this();
    }

    private Card() {
        this.mDeletable = false;
        this.mImageResId = -1;
    }

    public synchronized void setCoverMediaFeatureItems(List<MediaFeatureItem> coverMediaFeatureItems) {
        this.mCoverMediaFeatureItems = coverMediaFeatureItems;
    }

    public List<MediaFeatureItem> getCoverMediaFeatureItems() {
        return this.mCoverMediaFeatureItems;
    }

    public void setCreateTime(long time) {
        this.mCreateTime = time;
    }

    public long getCreateTime() {
        return this.mCreateTime;
    }

    public void setTitle(String title) {
        this.mTitle = title;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setDescription(String description) {
        this.mDescription = description;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getDetailUrl() {
        return this.mDetailUrl;
    }

    public Uri getImageUri() {
        return this.mImageUri;
    }

    public int getImageResId(Context context) {
        if (this.mImageUri == null) {
            return 0;
        }
        if (this.mImageResId == -1) {
            this.mImageResId = convertUriToResId(context, this.mImageUri);
        }
        return this.mImageResId;
    }

    public int getBaseColor() {
        return this.mBaseColor;
    }

    public boolean isDeletable() {
        return this.mDeletable;
    }

    public boolean isVideo() {
        return this.mIsVideo;
    }

    public UniqueKey getUniqueKey() {
        return this.mUniqueKey;
    }

    public synchronized List<String> getAllMediaSha1s() {
        return this.mAllMediaSha1s;
    }

    public synchronized void setAllMediaSha1s(List<String> allMediaSha1s) {
        this.mAllMediaSha1s = allMediaSha1s;
    }

    public synchronized List<String> getSelectedMediaSha1s() {
        return this.mSelectedMediaSha1s;
    }

    public synchronized void setSelectedMediaSha1s(List<String> selectedMediaSha1s) {
        this.mSelectedMediaSha1s = selectedMediaSha1s;
    }

    private void putExtra(String key, String value) {
        if (this.mExtras == null) {
            this.mExtras = new HashMap();
        }
        this.mExtras.put(key, value);
    }

    private String getExtra(String key) {
        if (this.mExtras != null) {
            return (String) this.mExtras.get(key);
        }
        return null;
    }

    public int getScenarioId() {
        return this.mScenarioId;
    }

    public void setScenarioId(int scenarioId) {
        this.mScenarioId = scenarioId;
    }

    public String getServerId() {
        return this.mServerId;
    }

    public void setServerId(String serverId) {
        this.mServerId = serverId;
    }

    public long getServerTag() {
        return this.mServerTag;
    }

    public void setServerTag(long serverTag) {
        this.mServerTag = serverTag;
    }

    public int getLocalFlag() {
        return this.mLocalFlag;
    }

    public void setLocalFlag(int localFlag) {
        this.mLocalFlag = localFlag;
    }

    public long getUpdateTime() {
        return this.mUpdateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.mUpdateTime = updateTime;
    }

    public int getCreateBy() {
        return this.mCreateBy;
    }

    public void setCreateBy(int createBy) {
        this.mCreateBy = createBy;
    }

    public boolean isIgnored() {
        return this.mIsIgnored;
    }

    public CardExtraInfo getCardExtraInfo() {
        return new CardExtraInfo(this.mUniqueKey, this.mIsIgnored);
    }

    public void setCardExtraInfo(CardExtraInfo cardExtraInfo) {
        if (cardExtraInfo != null) {
            this.mUniqueKey = cardExtraInfo.uniqueKey;
            this.mIsIgnored = cardExtraInfo.isIgnored;
        }
    }

    public boolean isValid() {
        return this.mLocalFlag == 0 || this.mLocalFlag == 2 || this.mLocalFlag == 3;
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "cardId", "INTEGER");
        Entity.addColumn(columns, SimpleDialogFragment.ARG_TITLE, "TEXT");
        Entity.addColumn(columns, "description", "TEXT");
        Entity.addColumn(columns, "actionText", "TEXT");
        Entity.addColumn(columns, "actionUrl", "TEXT");
        Entity.addColumn(columns, "detailUrl", "TEXT");
        Entity.addColumn(columns, "imageUri", "TEXT");
        Entity.addColumn(columns, "createTime", "INTEGER");
        Entity.addColumn(columns, "deletable", "INTEGER");
        Entity.addColumn(columns, "type", "INTEGER");
        Entity.addColumn(columns, "styles", "TEXT");
        Entity.addColumn(columns, "extras", "TEXT");
        Entity.addColumn(columns, "scenarioId", "INTEGER");
        Entity.addColumn(columns, "serverId", "TEXT");
        Entity.addColumn(columns, "serverTag", "INTEGER");
        Entity.addColumn(columns, "localFlag", "INTEGER");
        Entity.addColumn(columns, "updateTime", "INTEGER");
        Entity.addColumn(columns, "createdBy", "INTEGER");
        Entity.addColumn(columns, "ignored", "INTEGER");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        boolean z = true;
        this.mTitle = Entity.getString(cursor, SimpleDialogFragment.ARG_TITLE);
        this.mDescription = Entity.getString(cursor, "description");
        this.mDetailUrl = Entity.getString(cursor, "detailUrl");
        String imageUri = Entity.getString(cursor, "imageUri");
        if (imageUri != null) {
            this.mImageUri = Uri.parse(imageUri);
        }
        this.mCreateTime = Entity.getLong(cursor, "createTime");
        this.mDeletable = Entity.getInt(cursor, "deletable") == 1;
        setType(Entity.getInt(cursor, "type"));
        parseStyles(Entity.getString(cursor, "styles"));
        this.mExtras = stringToMap(Entity.getString(cursor, "extras"));
        this.mUniqueKey = (UniqueKey) GsonUtils.fromJson(getExtra("unique_key"), UniqueKey.class);
        try {
            this.mAllMediaSha1s = GsonUtils.getArray(getExtra("all_images"), (Type) String.class);
            this.mSelectedMediaSha1s = GsonUtils.getArray(getExtra("selected_images"), (Type) String.class);
            this.mCoverMediaFeatureItems = GsonUtils.getArray(getExtra("covers"), (Type) MediaFeatureItem.class);
        } catch (JSONException e) {
            Log.e("Card", "Create card from cursor error:" + e);
        }
        this.mScenarioId = Entity.getInt(cursor, "scenarioId");
        if (this.mScenarioId <= 0) {
            int scenarioId;
            if (this.mUniqueKey != null) {
                scenarioId = this.mUniqueKey.getScenarioId();
            } else {
                scenarioId = 0;
            }
            this.mScenarioId = scenarioId;
        }
        this.mServerId = Entity.getString(cursor, "serverId");
        this.mServerTag = Entity.getLong(cursor, "serverTag");
        this.mLocalFlag = Entity.getInt(cursor, "localFlag");
        this.mUpdateTime = Entity.getLong(cursor, "updateTime");
        this.mCreateBy = Entity.getInt(cursor, "createdBy");
        if (Entity.getInt(cursor, "ignored") != 1) {
            z = false;
        }
        this.mIsIgnored = z;
    }

    protected void onConvertToContents(ContentValues values) {
        int i;
        int i2 = 1;
        values.put(SimpleDialogFragment.ARG_TITLE, this.mTitle);
        values.put("description", this.mDescription);
        values.putNull("actionText");
        values.putNull("actionUrl");
        values.put("detailUrl", this.mDetailUrl);
        if (this.mImageUri == null) {
            values.putNull("imageUri");
        } else {
            values.put("imageUri", this.mImageUri.toString());
        }
        values.put("createTime", Long.valueOf(this.mCreateTime));
        String str = "deletable";
        if (this.mDeletable) {
            i = 1;
        } else {
            i = 0;
        }
        values.put(str, Integer.valueOf(i));
        values.put("type", Integer.valueOf(getType()));
        values.put("styles", wrapStyles());
        putExtra("unique_key", GsonUtils.toString(this.mUniqueKey));
        putExtra("all_images", GsonUtils.toString(this.mAllMediaSha1s));
        putExtra("selected_images", GsonUtils.toString(this.mSelectedMediaSha1s));
        putExtra("covers", GsonUtils.toString(this.mCoverMediaFeatureItems));
        values.put("extras", mapToString(this.mExtras));
        values.put("scenarioId", Integer.valueOf(this.mScenarioId));
        values.put("serverId", this.mServerId);
        values.put("serverTag", Long.valueOf(this.mServerTag));
        values.put("localFlag", Integer.valueOf(this.mLocalFlag));
        values.put("updateTime", Long.valueOf(this.mUpdateTime));
        values.put("createdBy", Integer.valueOf(this.mCreateBy));
        String str2 = "ignored";
        if (!this.mIsIgnored) {
            i2 = 0;
        }
        values.put(str2, Integer.valueOf(i2));
    }

    public void copyFrom(Card newCard) {
        if (newCard != null) {
            this.mTitle = newCard.getTitle();
            this.mDescription = newCard.getDescription();
            this.mDetailUrl = newCard.getDetailUrl();
            this.mImageUri = newCard.getImageUri();
            this.mCreateTime = newCard.getCreateTime();
            this.mDeletable = newCard.isDeletable();
            this.mIsVideo = newCard.isVideo();
            this.mUniqueKey = newCard.getUniqueKey();
            this.mAllMediaSha1s = newCard.getAllMediaSha1s();
            this.mSelectedMediaSha1s = newCard.getSelectedMediaSha1s();
            this.mCoverMediaFeatureItems = newCard.getCoverMediaFeatureItems();
            this.mImageResId = newCard.getImageResId(GalleryApp.sGetAndroidContext());
            this.mBaseColor = newCard.getBaseColor();
            this.mScenarioId = newCard.getScenarioId();
            this.mServerId = newCard.getServerId();
            this.mServerTag = newCard.getServerTag();
            this.mLocalFlag = newCard.getLocalFlag();
            this.mUpdateTime = newCard.getUpdateTime();
            this.mCreateBy = newCard.getCreateBy();
            this.mIsIgnored = newCard.isIgnored();
        }
    }

    protected String[] getUniqueConstraints() {
        return new String[]{"_id"};
    }

    private int getType() {
        if (this.mIsVideo) {
            return 1;
        }
        return 0;
    }

    public synchronized boolean isEmpty() {
        boolean z;
        z = this.mSelectedMediaSha1s == null || this.mSelectedMediaSha1s.size() == 0;
        return z;
    }

    public synchronized boolean isCoversNeedRefresh() {
        boolean z = false;
        synchronized (this) {
            if (!(this.mCoverMediaFeatureItems == null || this.mSelectedMediaSha1s == null)) {
                Set<String> coverImageSha1Set = new HashSet();
                for (MediaFeatureItem mediaFeatureItem : this.mCoverMediaFeatureItems) {
                    if (mediaFeatureItem != null) {
                        coverImageSha1Set.add(mediaFeatureItem.getSha1());
                    }
                }
                for (String mediaSha1 : this.mSelectedMediaSha1s) {
                    if (coverImageSha1Set.contains(mediaSha1)) {
                        coverImageSha1Set.remove(mediaSha1);
                    }
                }
                if (!coverImageSha1Set.isEmpty() || (this.mCoverMediaFeatureItems.size() < 5 && this.mSelectedMediaSha1s.size() >= 5)) {
                    z = true;
                }
            }
        }
        return z;
    }

    private void setType(int type) {
        boolean z = true;
        if (type != 1) {
            z = false;
        }
        this.mIsVideo = z;
    }

    private void parseStyles(String str) {
        HashMap<String, String> styles = stringToMap(str);
        if (styles != null) {
            this.mBaseColor = stringToInt((String) styles.get("baseColor"));
        }
    }

    private String wrapStyles() {
        HashMap<String, String> styles = new HashMap();
        styles.put("baseColor", String.valueOf(this.mBaseColor));
        return mapToString(styles);
    }

    public boolean isLocalDeleted() {
        return this.mLocalFlag == 1;
    }

    public String generateDuplicateKey() {
        return this.mScenarioId + "_" + this.mCreateTime;
    }

    public int compareTo(Card o) {
        return -Long.compare(this.mCreateTime, o.mCreateTime);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Card)) {
            return false;
        }
        if (this.mId != ((Card) o).mId) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (int) this.mId;
    }

    public synchronized boolean removeImages(List<String> imageSha1s) {
        int removeCount;
        removeCount = 0;
        if (MiscUtil.isValid(this.mSelectedMediaSha1s) && MiscUtil.isValid(this.mAllMediaSha1s) && MiscUtil.isValid(imageSha1s)) {
            for (String deleteSha1 : imageSha1s) {
                if (this.mSelectedMediaSha1s.remove(deleteSha1)) {
                    removeCount++;
                }
                this.mAllMediaSha1s.remove(deleteSha1);
            }
        }
        if (removeCount > 0) {
            Log.d("Card", "Delete %d images from Card %d", Integer.valueOf(removeCount), Long.valueOf(this.mId));
        }
        return removeCount > 0;
    }

    public long getRecordStartTime() {
        return getUniqueKey() != null ? getUniqueKey().getStartTime() : -1;
    }

    public long getRecordTargetTime() {
        return getUniqueKey() != null ? getUniqueKey().getTargetTime() : -1;
    }

    private static Uri decodeUri(Uri uri) {
        return uri == null ? uri : Uri.parse(Uri.decode(uri.toString()));
    }

    public static Uri convertResIdToUri(Context context, int resId) {
        String type = context.getResources().getResourceTypeName(resId);
        String entry = context.getResources().getResourceEntryName(resId);
        return Uri.parse(String.format("%s://%s", new Object[]{type, entry}));
    }

    public static int convertUriToResId(Context context, Uri uri) {
        String type = uri.getScheme();
        String entry = uri.getAuthority();
        String packageName = context.getPackageName();
        return context.getResources().getIdentifier(String.format("%s/%s", new Object[]{type, entry}), null, packageName);
    }

    private static String mapToString(HashMap<String, String> map) {
        String str = null;
        if (map == null) {
            return str;
        }
        try {
            return new Gson().toJson((Object) map);
        } catch (Object e) {
            Log.e("Card", "mapToString occur error.\n", e);
            return str;
        }
    }

    private static HashMap<String, String> stringToMap(String str) {
        if (str == null) {
            return null;
        }
        try {
            return (HashMap) new Gson().fromJson(str, new TypeToken<HashMap<String, String>>() {
            }.getType());
        } catch (Object e) {
            Log.e("Card", "stringToMap occur error.\n", e);
            return null;
        }
    }

    private static int stringToInt(String str) {
        int i = 0;
        if (str == null) {
            return i;
        }
        try {
            return Integer.valueOf(str).intValue();
        } catch (Object e) {
            Log.e("Card", "stringToInt occur error.\n", e);
            return i;
        }
    }
}
