package com.miui.gallery.scanner;

import android.content.Context;
import android.net.Uri;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.StorageUtils;

public class CloudMediaBulkDeleter extends MediaBulkDeleter {
    private boolean mIsNormal = true;

    public CloudMediaBulkDeleter(Uri uri, String columnName) {
        super(uri, columnName);
    }

    public boolean deleteForResult(Context context, long id) {
        super.delete(context, id);
        return this.mIsNormal;
    }

    public boolean flushForResult(Context context) {
        flush(context);
        return this.mIsNormal;
    }

    public void flush(Context context) {
        boolean hasExternalStorageMounted = MiscUtil.isValid(StorageUtils.getMountedVolumePaths(context));
        boolean hasMainSDCard = StorageUtils.isPrimaryStorageWritable(context);
        if (hasExternalStorageMounted && hasMainSDCard) {
            super.flush(context);
            return;
        }
        this.mIsNormal = false;
        if (!hasExternalStorageMounted) {
            recordStorageUnmounted();
        }
        if (!hasMainSDCard) {
            recordMainSDCardUnwritable();
        }
    }

    private void recordStorageUnmounted() {
        Log.e("CloudMediaBulkDeleter", "No external storage mounted, skip cleanup");
        GallerySamplingStatHelper.recordErrorEvent("media_scanner", "no_external_storage_mounted", GallerySamplingStatHelper.generatorCommonParams());
    }

    private void recordMainSDCardUnwritable() {
        Log.e("CloudMediaBulkDeleter", "Main SDCard is unwritable, skip cleanup");
        GallerySamplingStatHelper.recordErrorEvent("media_scanner", "main_sdcard_unwritable", GallerySamplingStatHelper.generatorCommonParams());
    }
}
