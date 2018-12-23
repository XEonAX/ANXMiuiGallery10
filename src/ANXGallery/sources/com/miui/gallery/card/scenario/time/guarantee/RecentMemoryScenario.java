package com.miui.gallery.card.scenario.time.guarantee;

import android.database.Cursor;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.Constants;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.TimeScenario;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.UriUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class RecentMemoryScenario extends TimeScenario {
    private List<Long> mRecentImages = new ArrayList(30);

    public RecentMemoryScenario() {
        super(501, 16, 16);
    }

    public boolean onPrepare(List<Record> list, List<Card> cards) {
        this.mRecentImages.clear();
        if (MiscUtil.isValid(cards)) {
            return false;
        }
        long currentTime = DateUtils.getCurrentTimeMillis();
        String TIME_SELECTION = Constants.CAMERA_BASE_SELECTION + " AND " + "mixedDateTime" + " < %s";
        List<Long> recentImages = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), UriUtil.appendLimit(Cloud.CLOUD_URI, 30), PROJECTION, String.format(Locale.US, TIME_SELECTION, new Object[]{Long.valueOf(currentTime)}), null, "mixedDateTime DESC", new QueryHandler<List<Long>>() {
            public List<Long> handle(Cursor cursor) {
                return RecentMemoryScenario.this.getMediaIdsFromCursor(cursor);
            }
        });
        if (!MiscUtil.isValid(recentImages)) {
            return false;
        }
        this.mRecentImages.addAll(recentImages);
        return true;
    }

    public List<Long> loadMediaItem() {
        return this.mRecentImages;
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_recent_memory);
    }

    public String generateDescription(Record record, List<MediaFeatureItem> selectImages) {
        long startTime = Long.MAX_VALUE;
        long endTime = 0;
        if (MiscUtil.isValid(selectImages)) {
            for (MediaFeatureItem mediaFeatureItem : selectImages) {
                long imageTime = mediaFeatureItem.getDateTime();
                if (startTime > imageTime) {
                    startTime = imageTime;
                }
                if (endTime < imageTime) {
                    endTime = imageTime;
                }
            }
        }
        return DateUtils.getDatePeriodGraceful(startTime, endTime);
    }
}
