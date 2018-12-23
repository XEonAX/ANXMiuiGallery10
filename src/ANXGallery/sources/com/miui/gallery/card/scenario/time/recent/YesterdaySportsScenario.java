package com.miui.gallery.card.scenario.time.recent;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.Constants;
import com.miui.gallery.card.scenario.Record;
import java.util.List;

public class YesterdaySportsScenario extends YesterdayScenario {
    public YesterdaySportsScenario() {
        super(BaiduSceneResult.FERRY, Constants.TAGS_SPORTS);
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_sports);
    }
}
