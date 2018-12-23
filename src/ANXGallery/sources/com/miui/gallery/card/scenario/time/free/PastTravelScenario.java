package com.miui.gallery.card.scenario.time.free;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.LocationScenario;
import com.miui.gallery.card.scenario.time.LocationScenario.MediaItem;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.List;

public class PastTravelScenario extends LocationScenario {
    public PastTravelScenario() {
        super(201, 4, 4);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards);
        List<MediaItem> allImages = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, PROJECTION, ALL_IMAGE_SELECTION, null, "mixedDateTime ASC", new QueryHandler<List<MediaItem>>() {
            public List<MediaItem> handle(Cursor cursor) {
                return LocationScenario.getMediaItemsFromCursor(cursor, true);
            }
        });
        if (MiscUtil.isValid(allImages)) {
            MediaItem startMedia = null;
            for (int i = 0; i < allImages.size(); i++) {
                MediaItem mediaItem = (MediaItem) allImages.get(i);
                if (startMedia == null) {
                    startMedia = mediaItem;
                } else if (TextUtils.equals(startMedia.mCity, mediaItem.mCity)) {
                    continue;
                } else {
                    MediaItem endMedia = (MediaItem) allImages.get(i - 1);
                    List<Long> mediaIds = getMediaIdsByStartEndTime(startMedia.mDateTime, endMedia.mDateTime);
                    if (endMedia.mDateTime - startMedia.mDateTime > 864000000 || mediaIds == null || mediaIds.size() <= getMinImageCount() || recordStarts.contains(Long.valueOf(startMedia.mDateTime))) {
                        startMedia = mediaItem;
                    } else {
                        this.mTargetCity = startMedia.mCity;
                        setStartTime(startMedia.mDateTime);
                        setEndTime(endMedia.mDateTime);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_somewhere, new Object[]{record.getLocation()});
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        return getDatePeriodFromRecord(record);
    }
}
