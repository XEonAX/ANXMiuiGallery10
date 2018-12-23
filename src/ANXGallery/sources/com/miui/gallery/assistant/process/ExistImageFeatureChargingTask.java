package com.miui.gallery.assistant.process;

import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class ExistImageFeatureChargingTask extends ExistImageFeatureTask {
    public ExistImageFeatureChargingTask(int type) {
        super(type);
    }

    public boolean requireCharging() {
        return true;
    }

    public boolean process(JSONObject data) throws Exception {
        recordTriggerEvent();
        List<MediaFeatureItem> toProcessImages = getToProcessImages();
        if (MiscUtil.isValid(toProcessImages) && processImages(data, toProcessImages, true) && toProcessImages.size() >= 100) {
            Log.d(this.TAG, "Have more un processed images,schedule next ExistImageFeatureTask");
            PendingTaskManager.getInstance().postTask(9, null, ExistImageFeatureChargingTask.class.getSimpleName());
        } else {
            rescheduleBrokenImages();
        }
        return false;
    }

    private void recordTriggerEvent() {
        Map<String, String> params = GallerySamplingStatHelper.generatorCommonParams();
        params.put("Trigger_Date", DateUtils.getDateFormat(System.currentTimeMillis()));
        GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_schedule_exist_image_charging_task", params);
    }
}
