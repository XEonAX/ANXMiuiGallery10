package com.miui.gallery.util;

import android.graphics.RectF;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery3d.exif.ExifInterface;
import com.miui.gallery3d.exif.ExifInvalidFormatException;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class ExifUtil {

    public static class ExifInfo {
        public final int exifOrientation;
        public final boolean flip;
        public final int rotation;

        public ExifInfo(int exifOrientation, int rotation, boolean flip) {
            this.exifOrientation = exifOrientation;
            this.rotation = rotation;
            this.flip = flip;
        }
    }

    public static final class UserCommentData {
        private String mExt;
        private String mSha1;

        public UserCommentData(String sha1, String ext) {
            this.mSha1 = sha1;
            this.mExt = ext;
        }

        public String getSha1() {
            return this.mSha1;
        }

        public String getExt() {
            return this.mExt;
        }

        public String getFileName(String filePrefix) {
            if (TextUtils.isEmpty(filePrefix) || TextUtils.isEmpty(getExt())) {
                return null;
            }
            return filePrefix + "." + getExt();
        }
    }

    public static void setUserCommentData(ExifInterface exif, UserCommentData data) throws Exception {
        if (data != null) {
            UserComment comment = new UserComment(new ExifInterfaceWrapper(exif));
            comment.setSha1(data.getSha1());
            comment.setFileExt(data.getExt());
        }
    }

    private static UserCommentData getUserCommentDataByMediaExif(String path) {
        try {
            UserComment comment = new UserComment(new ExifInterfaceWrapper(new android.media.ExifInterface(path)));
            return new UserCommentData(comment.getSha1(), comment.getFileExt());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getUserCommentSha1(String path) {
        if (!TextUtils.isEmpty(path)) {
            try {
                UserCommentData commentData = getUserCommentData(path);
                if (commentData != null) {
                    return commentData.getSha1();
                }
            } catch (Object e) {
                Log.e("ExifUtil", "Failed to read exif!!", e);
            }
        }
        return null;
    }

    public static UserCommentData getUserCommentData(String path) throws Exception {
        UserCommentData data;
        Map<String, String> params;
        if (!TextUtils.isEmpty(path)) {
            try {
                ExifInterface exif = new ExifInterface();
                exif.readExif(path);
                UserComment comment = new UserComment(new ExifInterfaceWrapper(exif));
                return new UserCommentData(comment.getSha1(), comment.getFileExt());
            } catch (ExifInvalidFormatException e) {
                Log.w("ExifUtil", "invalid exif format %s, %s", e, path);
                data = getUserCommentDataByMediaExif(path);
                if (!(data == null || TextUtils.isEmpty(data.getSha1()))) {
                    params = GallerySamplingStatHelper.generatorCommonParams();
                    params.put("exception", e.toString());
                    params.put(nexExportFormat.TAG_FORMAT_PATH, path);
                    GallerySamplingStatHelper.recordErrorEvent("exif_parser", "exif_read_by_exifinterface", params);
                    return data;
                }
            } catch (Exception e2) {
                data = getUserCommentDataByMediaExif(path);
                if (data == null || TextUtils.isEmpty(data.getSha1())) {
                    params = new HashMap();
                    params.put("model", Build.MODEL);
                    params.put("version", VERSION.INCREMENTAL);
                    params.put(nexExportFormat.TAG_FORMAT_PATH, path);
                    params.put("exception", e2.toString() + " " + path);
                    GallerySamplingStatHelper.recordCountEvent("exif_parser", "exif_read_error", params);
                    throw e2;
                }
                params = GallerySamplingStatHelper.generatorCommonParams();
                params.put("exception", e2.toString());
                params.put(nexExportFormat.TAG_FORMAT_PATH, path);
                GallerySamplingStatHelper.recordErrorEvent("exif_parser", "exif_read_by_exifinterface", params);
                return data;
            }
        }
        return null;
    }

    public static String getXiaomiComment(String path) {
        Throwable e;
        Throwable th;
        FileInputStream in = null;
        try {
            InputStream in2 = new FileInputStream(path);
            InputStream inputStream;
            try {
                ExifInterface exif = new ExifInterface();
                exif.readExif(in2);
                String xiaomiComment = exif.getXiaomiComment();
                MiscUtil.closeSilently(in2);
                inputStream = in2;
                return xiaomiComment;
            } catch (Exception e2) {
                e = e2;
                inputStream = in2;
                try {
                    Log.w("ExifUtil", e);
                    MiscUtil.closeSilently(in);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    MiscUtil.closeSilently(in);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = in2;
                MiscUtil.closeSilently(in);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            Log.w("ExifUtil", e);
            MiscUtil.closeSilently(in);
            return null;
        }
    }

    public static String getXiaomiCommentSensorType(String path) {
        try {
            String xiaomiComment = getXiaomiComment(path);
            if (!TextUtils.isEmpty(xiaomiComment)) {
                return new JSONObject(xiaomiComment).optString("sensor_type");
            }
        } catch (Throwable e) {
            Log.w("ExifUtil", e);
        }
        return null;
    }

    public static boolean isFromFrontCamera(String path) {
        return "front".equalsIgnoreCase(getXiaomiCommentSensorType(path));
    }

    public static long getDateTime(android.media.ExifInterface exif) {
        return GalleryTimeUtils.getDateTime(exif.getAttribute("DateTime"));
    }

    public static long getDateTime(ExifInterface exif) {
        return GalleryTimeUtils.getDateTime(exif.getDateTime(ExifInterface.TAG_DATE_TIME_ORIGINAL));
    }

    public static Date getDate(android.media.ExifInterface exif) {
        return GalleryTimeUtils.getDate(exif.getAttribute("DateTime"));
    }

    public static int getRotation(ExifInterface exif) {
        Integer rawValue = exif.getTagIntValue(ExifInterface.TAG_ORIENTATION);
        if (rawValue == null) {
            return 0;
        }
        return ExifInterface.getRotationForOrientationValue(rawValue.shortValue());
    }

    public static long getGpsDateTime(android.media.ExifInterface exif) {
        return GalleryTimeUtils.getGpsDateTime(exif.getAttribute("GPSDateStamp"), exif.getAttribute("GPSTimeStamp"));
    }

    public static long getGpsDateTime(ExifInterface exif) {
        return GalleryTimeUtils.getGpsDateTime(exif.getGpsDate(), exif.getGpsTime());
    }

    public static Date getGpsDate(android.media.ExifInterface exif) {
        return GalleryTimeUtils.getGpsDate(exif.getAttribute("GPSDateStamp"), exif.getAttribute("GPSTimeStamp"));
    }

    public static boolean hasFocusPoint(ExifInterface exif) {
        return !TextUtils.isEmpty(exif.getTagStringValue(34960, 2));
    }

    public static boolean hasFocusPoint(String path) {
        try {
            ExifInterface exif = new ExifInterface();
            exif.readExif(path);
            return hasFocusPoint(exif);
        } catch (ExifInvalidFormatException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public static String convertDoubleToLaLon(double value) {
        int degrees = (int) Math.floor(Math.abs(value));
        double minutes = Math.floor((Math.abs(value) - ((double) degrees)) * 60.0d);
        double seconds = Math.floor(((Math.abs(value) - ((double) degrees)) - (minutes / 60.0d)) * 3600000.0d);
        if (value < 0.0d) {
            return "-" + degrees + "/1," + minutes + "/1," + seconds + "/1000";
        }
        return degrees + "/1," + minutes + "/1," + seconds + "/1000";
    }

    /* JADX WARNING: Missing block: B:5:0x0016, code:
            if (r1 == false) goto L_0x001c;
     */
    /* JADX WARNING: Missing block: B:6:0x0018, code:
            r2 = (((float) r3) - r2) - r5;
     */
    /* JADX WARNING: Missing block: B:8:0x0025, code:
            return new android.graphics.RectF(r2, r4, r2 + r5, r4 + r0);
     */
    /* JADX WARNING: Missing block: B:15:0x0032, code:
            r3 = r10;
            r2 = (((float) r10) - r11.top) - r11.height();
            r4 = r11.left;
            r5 = r11.height();
            r0 = r11.width();
     */
    /* JADX WARNING: Missing block: B:17:0x0049, code:
            r2 = (((float) r9) - r11.left) - r11.width();
            r4 = (((float) r10) - r11.top) - r11.height();
     */
    /* JADX WARNING: Missing block: B:19:0x005f, code:
            r3 = r10;
            r2 = r11.top;
            r4 = (((float) r9) - r11.left) - r11.width();
            r5 = r11.height();
            r0 = r11.width();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static RectF adjustRectOrientation(int imageWidth, int imageHeight, RectF rect, int orientation, boolean revert) {
        float left = rect.left;
        float top = rect.top;
        float width = rect.width();
        float height = rect.height();
        int targetImageWidth = imageWidth;
        if (!revert) {
            switch (orientation) {
                case 5:
                    orientation = 7;
                    break;
                case 6:
                    orientation = 8;
                    break;
                case 7:
                    orientation = 5;
                    break;
                case 8:
                    orientation = 6;
                    break;
            }
        }
        boolean isFlip = false;
        switch (orientation) {
            case 2:
                isFlip = true;
                break;
            case 3:
                break;
            case 4:
                isFlip = true;
                break;
            case 5:
                isFlip = true;
                break;
            case 6:
                break;
            case 7:
                isFlip = true;
                break;
            case 8:
                break;
        }
    }

    public static ExifInfo parseRotationInfo(String path, byte[] secretKey) {
        ExifInterface exif = parseExifInfo(path, secretKey);
        if (exif == null) {
            return null;
        }
        Integer exifOrientation = exif.getTagIntValue(ExifInterface.TAG_ORIENTATION);
        return parseRotationInfo(exifOrientation == null ? 1 : exifOrientation.intValue());
    }

    public static ExifInterface parseExifInfo(String path, byte[] secretKey) {
        ExifInterface exif = null;
        if (FileUtils.isFileExist(path)) {
            InputStream is = null;
            exif = new ExifInterface();
            try {
                is = BitmapUtils.createInputStream(path, secretKey);
                exif.readExif(is);
                MiscUtil.closeSilently(is);
            } catch (Exception e) {
                Log.w("ExifUtil", "Can't read EXIF tags from file [%s] %s", path, e);
                MiscUtil.closeSilently(is);
                if (secretKey != null) {
                    File temp = new File(GalleryApp.sGetAndroidContext().getFilesDir(), String.valueOf(System.currentTimeMillis()));
                    try {
                        if (GalleryAes.decryptFile(path, temp.getAbsolutePath(), secretKey)) {
                            is = BitmapUtils.createInputStream(temp.getAbsolutePath(), null);
                            exif.readExif(is);
                        }
                        MediaFileUtils.deleteFile(temp);
                    } catch (Exception inner) {
                        Log.w("ExifUtil", "Can't read EXIF tags from file [%s] %s", path, inner);
                        MediaFileUtils.deleteFile(temp);
                        MiscUtil.closeSilently(is);
                        return exif;
                    } catch (Throwable th) {
                        MediaFileUtils.deleteFile(temp);
                        throw th;
                    }
                }
                MiscUtil.closeSilently(is);
            } catch (Throwable th2) {
                MiscUtil.closeSilently(is);
                throw th2;
            }
        }
        return exif;
    }

    /* JADX WARNING: Missing block: B:3:0x000a, code:
            return new com.miui.gallery.util.ExifUtil.ExifInfo(r3, r1, r0);
     */
    /* JADX WARNING: Missing block: B:5:0x000c, code:
            r1 = 0;
     */
    /* JADX WARNING: Missing block: B:7:0x000f, code:
            r1 = 90;
     */
    /* JADX WARNING: Missing block: B:9:0x0013, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180;
     */
    /* JADX WARNING: Missing block: B:11:0x0017, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static ExifInfo parseRotationInfo(int orientation) {
        boolean isFlip = false;
        int rotation = 0;
        switch (orientation) {
            case 1:
                break;
            case 2:
                isFlip = true;
                break;
            case 3:
                break;
            case 4:
                isFlip = true;
                break;
            case 5:
                isFlip = true;
                break;
            case 6:
                break;
            case 7:
                isFlip = true;
                break;
            case 8:
                break;
        }
    }

    public static boolean isWidthHeightRotated(int orientation) {
        switch (orientation) {
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }
}
