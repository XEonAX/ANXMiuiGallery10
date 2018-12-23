package com.miui.gallery.search.statistics;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.discovery.AbstractJob;

public class SearchStatReportJob extends AbstractJob {
    public Object execJob() {
        Context context = GalleryApp.sGetAndroidContext();
        Intent intent = new Intent(context, SearchStatReportService.class);
        intent.putExtra(SearchStatReportService.EXTRA_UPLOAD, true);
        context.startService(intent);
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiredNetworkType(2).setRequiresCharging(true).setRequiresDeviceIdle(true).setPeriodic(86400000).build();
    }
}
