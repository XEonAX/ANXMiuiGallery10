package com.miui.gallery.cloud;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.GalleryTimeUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery3d.exif.ExifInterface;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import miui.os.FileUtils;

public class ThumbnailMetaWriter {
    private final String mDateTime;
    private final String mGPSDateStamp;
    private final String mGPSTimeStamp;
    private final long mMixDateTime;
    private final String mOriginalFileName;
    private final String mSha1;

    public ThumbnailMetaWriter(DBImage dbImage) {
        this(dbImage, dbImage.getSha1(), dbImage.getFileName());
    }

    public ThumbnailMetaWriter(DBImage dbImage, String sha1, String originalFileName) {
        this.mSha1 = sha1;
        this.mOriginalFileName = originalFileName;
        this.mMixDateTime = dbImage.getMixedDateTime();
        this.mDateTime = dbImage.getJsonExifString("dateTime");
        this.mGPSDateStamp = dbImage.getJsonExifString("GPSDateStamp");
        this.mGPSTimeStamp = dbImage.getJsonExifString("GPSTimeStamp");
    }

    public ThumbnailMetaWriter(String sha1, String originalFileName, long mixDateTime, String dateTime, String gpsDateStamp, String gpsTimeStamp) {
        this.mSha1 = sha1;
        this.mOriginalFileName = originalFileName;
        this.mMixDateTime = mixDateTime;
        this.mDateTime = dateTime;
        this.mGPSDateStamp = gpsDateStamp;
        this.mGPSTimeStamp = gpsTimeStamp;
    }

    public boolean write(String filePath) {
        Exception exception = null;
        try {
            ExifInterface exif = new ExifInterface();
            exif.readExif(filePath);
            ExifUtil.setUserCommentData(exif, new UserCommentData(this.mSha1, FileUtils.getExtension(this.mOriginalFileName)));
            long time = -1;
            if (!(TextUtils.isEmpty(this.mGPSDateStamp) || TextUtils.isEmpty(this.mGPSTimeStamp))) {
                exif.addGpsDateTimeStampTag(this.mGPSDateStamp, this.mGPSTimeStamp);
                time = ExifUtil.getGpsDateTime(exif);
            }
            if (!TextUtils.isEmpty(this.mDateTime)) {
                exif.addDateTimeStampTag(ExifInterface.TAG_DATE_TIME_ORIGINAL, this.mDateTime);
                if (time < 0) {
                    time = ExifUtil.getDateTime(exif);
                }
            }
            if (ExifUtil.getDateTime(exif) == -1 && this.mMixDateTime >= 0) {
                exif.addDateTimeStampTag(ExifInterface.TAG_DATE_TIME_ORIGINAL, GalleryTimeUtils.getDefaultDateFormat().format(new Date(this.mMixDateTime)));
                if (time < 0) {
                    time = this.mMixDateTime;
                }
            }
            exif.forceRewriteExif(filePath);
            if (TextUtils.equals(ExifUtil.getUserCommentSha1(filePath), this.mSha1)) {
                if (time >= 0 && !new File(filePath).setLastModified(time)) {
                    Log.w("ThumbnailMetaWriter", "failed to set last modified for thumbnail");
                }
                return true;
            }
        } catch (Throwable e) {
            exception = e;
            Log.e("ThumbnailMetaWriter", e);
        }
        Map<String, String> params = new HashMap();
        params.put("model", Build.MODEL);
        params.put("version", VERSION.INCREMENTAL);
        params.put(nexExportFormat.TAG_FORMAT_PATH, filePath);
        params.put("exception", exception != null ? exception.toString() + " " + filePath : "");
        GallerySamplingStatHelper.recordCountEvent("exif_parser", "exif_write_error", params);
        return false;
    }
}
