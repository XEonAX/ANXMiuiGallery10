package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import java.util.HashMap;

public class RequestSyncJob extends AbstractJob {
    public Object execJob() {
        Context context = GalleryApp.sGetAndroidContext();
        if (context != null && SyncUtil.isGalleryCloudSyncable(context)) {
            int[] dirtys = SyncStateUtil.getDirtyCount(context);
            if (!(dirtys == null || dirtys[0] + dirtys[1] <= 0 || SyncStateUtil.isSyncing(context))) {
                SyncUtil.requestSync(context, new Builder().setSyncType(SyncType.NORMAL).setSyncReason(1).build());
                HashMap<String, String> params = new HashMap();
                params.put("time", MiscUtil.getCurrentDate());
                GallerySamplingStatHelper.recordCountEvent("Sync", "sync_request_sync_periodic", params);
            }
        }
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new JobInfo.Builder(this.mJobId, cn).setRequiredNetworkType(2).setRequiresCharging(true).setRequiresDeviceIdle(true).setPeriodic(43200000).build();
    }
}
