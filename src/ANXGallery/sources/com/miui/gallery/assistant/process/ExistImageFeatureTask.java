package com.miui.gallery.assistant.process;

import android.content.ContentValues;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.scenario.Constants;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class ExistImageFeatureTask extends BaseImageTask {
    public ExistImageFeatureTask(int type) {
        super(type);
    }

    public DownloadType onGetImageDownloadType() {
        return DownloadType.MICRO;
    }

    public int getNetworkType() {
        return 2;
    }

    public boolean requireCharging() {
        return false;
    }

    public boolean requireDeviceIdle() {
        return true;
    }

    public boolean process(JSONObject data) throws Exception {
        if (Sync.getPowerCanSync() || Sync.getIsPlugged()) {
            Log.d(this.TAG, "Start process exist images");
            recordTriggerEvent();
            List<MediaFeatureItem> toProcessImages = getToProcessImages();
            if (MiscUtil.isValid(toProcessImages) && processImages(data, toProcessImages, true) && toProcessImages.size() >= 100) {
                Log.d(this.TAG, "Have more un processed images,schedule next ExistImageFeatureTask");
                PendingTaskManager.getInstance().postTask(6, null, ExistImageFeatureTask.class.getSimpleName());
            } else {
                rescheduleBrokenImages();
            }
        } else {
            Log.e(this.TAG, "The power is weak and not charging,abort processing!");
            PendingTaskManager.getInstance().postTask(9, null, ExistImageFeatureChargingTask.class.getSimpleName());
        }
        return false;
    }

    protected void rescheduleBrokenImages() {
        ContentValues values = new ContentValues();
        values.put("imageType", Integer.valueOf(0));
        GalleryEntityManager.getInstance().update(ImageFeature.class, values, String.format("%s = %s", new Object[]{"imageType", Integer.valueOf(-1)}), null);
    }

    protected List<MediaFeatureItem> getToProcessImages() {
        List<MediaFeatureItem> allImages = BaseImageTask.queryMediaItem(Constants.ALL_IMAGE_BASE_SELECTION);
        List<Long> processedImages = getAllProcessedImages();
        List<MediaFeatureItem> toProcessImages = new ArrayList(100);
        if (MiscUtil.isValid(allImages)) {
            for (MediaFeatureItem mediaFeatureItem : allImages) {
                if (!processedImages.contains(Long.valueOf(mediaFeatureItem.getId()))) {
                    toProcessImages.add(mediaFeatureItem);
                    if (toProcessImages.size() == 100) {
                        break;
                    }
                }
            }
            Log.d(this.TAG, "Processing %d images!", Integer.valueOf(toProcessImages.size()));
            if (!toProcessImages.isEmpty()) {
                List<MediaFeatureItem> nearByImages = ImageFeatureManger.queryNearByMediaItems(((MediaFeatureItem) toProcessImages.get(0)).getDateTime());
                CardUtil.bindImageFeatures(nearByImages);
                toProcessImages.addAll(ImageFeatureManger.filterNearByImages(nearByImages));
                Log.d(this.TAG, "Processing %d images after add previous images!", Integer.valueOf(toProcessImages.size()));
            }
        }
        return toProcessImages;
    }

    private void recordTriggerEvent() {
        Map<String, String> params = GallerySamplingStatHelper.generatorCommonParams();
        params.put("Trigger_Date", DateUtils.getDateFormat(System.currentTimeMillis()));
        GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_schedule_exist_image_task", params);
    }
}
