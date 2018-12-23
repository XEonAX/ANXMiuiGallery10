package com.miui.gallery.card.scenario.time.annual;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.Constants;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import java.util.List;

public class AnnualPetsScenario extends AnnualScenario {
    public AnnualPetsScenario() {
        super(BaiduSceneResult.MOTORCYCLE);
    }

    public List<Long> loadMediaItem() {
        return getImageIdsFromImageFeatures(getCameraMediaIdsByStartEndTimeTags(Constants.TAGS_PETS, getStartTime(), getEndTime()));
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        long startTime = getRecordStartTime(record);
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_annual_pets, new Object[]{DateUtils.getYearLocale(startTime)});
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_description_annual_pets);
    }
}
