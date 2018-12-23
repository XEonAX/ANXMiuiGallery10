package com.miui.extraphoto.refocus;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import com.miui.gallery3d.exif.ExifInterface;
import com.miui.gallery3d.exif.ExifInvalidFormatException;
import com.miui.gallery3d.exif.ExifTag;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RefocusUtils {
    public static final String ALGORITHM_NAME_PORTRAIT = "portrait";
    public static final String ALGORITHM_NAME_SOFT_PORTRAIT = "soft-portrait";
    private static final short EXIF_AI_FILTER = (short) -30571;
    private static final short EXIF_BLUR_LEVEL = (short) -30575;
    public static final short EXIF_FOCUS_POINT = (short) -30576;
    private static final short EXIF_MIRROR = (short) -30570;
    private static final short EXIF_PORTRAIT_TYPE = (short) -30583;
    private static final short EXIF_RELIGHTING_TYPE = (short) -30572;
    private static final short EXIF_WATER_MARK = (short) -30574;
    private static final short EXIF_WATER_MARK_TIME = (short) -30573;
    private static final String REGEX = "(Point\\()([\\S\\s]+)(\\))";
    private static final String TAG = "RefocusUtils";

    static Bitmap decodeUserDisplayBitmap(byte[] data, int[] dataSeparation, Options options) {
        if (options == null) {
            return BitmapFactory.decodeByteArray(data, 0, dataSeparation[0] + 1);
        }
        return BitmapFactory.decodeByteArray(data, 0, dataSeparation[0] + 1, options);
    }

    static Bitmap decodeOriginBitmap(byte[] data, int[] dataSeparation, Options options) {
        if (options == null) {
            return BitmapFactory.decodeByteArray(data, dataSeparation[0] + 1, dataSeparation[1] - dataSeparation[0]);
        }
        return BitmapFactory.decodeByteArray(data, dataSeparation[0] + 1, dataSeparation[1] - dataSeparation[0], options);
    }

    static List<ExifTag> getAllExifTag(byte[] data, int[] dataSeparation) {
        InputStream inputStream = null;
        List<ExifTag> exifTags = null;
        try {
            inputStream = new ByteArrayInputStream(data, 0, dataSeparation[0] + 1);
            ExifInterface exifInterface = new ExifInterface();
            exifInterface.readExif(inputStream);
            exifTags = exifInterface.getAllTags();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ExifInvalidFormatException e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            RefocusIOUtils.close(TAG, inputStream);
        }
        RefocusIOUtils.close(TAG, inputStream);
        return exifTags;
    }

    static void getNecessaryExif(List<ExifTag> exifTags, ImageExif imageExif) {
        if (exifTags != null) {
            imageExif.relightingType = -1;
            Iterator it = exifTags.iterator();
            while (true) {
                boolean z = false;
                if (!it.hasNext()) {
                    break;
                }
                ExifTag exifTag = (ExifTag) it.next();
                short tag = exifTag.getTagId();
                String point;
                byte[] values;
                if (tag == ExifInterface.getTrueTagKey(ExifInterface.TAG_ORIENTATION)) {
                    imageExif.orientation = exifTag.getValueAsInt(-1);
                } else if (tag == EXIF_BLUR_LEVEL) {
                    imageExif.bokehSize = exifTag.getValueAsInt(-1);
                } else if (tag == EXIF_FOCUS_POINT) {
                    point = exifTag.getValueAsString();
                    if (!TextUtils.isEmpty(point)) {
                        Matcher matcher = Pattern.compile(REGEX).matcher(point);
                        if (matcher.find() && matcher.groupCount() == 3) {
                            String[] split = matcher.group(2).split(",");
                            if (split.length == 2) {
                                try {
                                    imageExif.focusX = Integer.parseInt(split[0].trim());
                                    imageExif.focusY = Integer.parseInt(split[1].trim());
                                } catch (NumberFormatException e) {
                                    imageExif.focusX = -1;
                                    imageExif.focusY = -1;
                                    Log.d(TAG, "", e);
                                }
                            }
                        }
                    }
                } else if (tag == EXIF_WATER_MARK) {
                    values = exifTag.getValueAsBytes();
                    if (values == null || values.length <= 0) {
                        imageExif.waterMark = null;
                    } else {
                        imageExif.waterMark = BitmapFactory.decodeByteArray(values, 0, values.length);
                    }
                } else if (tag == EXIF_WATER_MARK_TIME) {
                    values = exifTag.getValueAsBytes();
                    if (values == null || values.length <= 0) {
                        imageExif.waterMarkTime = null;
                    } else {
                        imageExif.waterMarkTime = BitmapFactory.decodeByteArray(values, 0, values.length);
                    }
                } else if (tag == EXIF_RELIGHTING_TYPE) {
                    imageExif.relightingType = exifTag.getValueAsInt(-1);
                } else if (tag == EXIF_PORTRAIT_TYPE) {
                    point = exifTag.getValueAsString();
                    if (point != null && point.startsWith(ALGORITHM_NAME_SOFT_PORTRAIT)) {
                        z = true;
                    }
                    imageExif.isSoftBokeh = z;
                } else if (tag == EXIF_AI_FILTER) {
                    imageExif.filter = exifTag.getValueAsInt(-1);
                } else if (tag == EXIF_MIRROR) {
                    if (exifTag.getValueAsInt(-1) == 1) {
                        z = true;
                    }
                    imageExif.mirror = z;
                }
            }
            if (imageExif.isSoftBokeh) {
                if (imageExif.relightingType < 0) {
                    imageExif.relightingType = 0;
                }
            } else if (imageExif.relightingType == 0) {
                imageExif.relightingType = -1;
            }
        }
    }

    static byte[] getDeepData(byte[] data, int[] dataSeparation) {
        byte[] deepData = new byte[((data.length - dataSeparation[1]) - 1)];
        System.arraycopy(data, dataSeparation[1] + 1, deepData, 0, deepData.length);
        return deepData;
    }

    static int[] getDataSeparation(byte[] data) {
        List<Integer> list = new ArrayList();
        int length = data.length;
        long separationStart = System.currentTimeMillis();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEqual(data, i2, 255, 217)) {
                String str;
                if (list.size() != 0) {
                    str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("find end : ");
                    stringBuilder.append(i2);
                    stringBuilder.append(1);
                    Log.d(str, stringBuilder.toString());
                    if (list.size() == 2) {
                        list.remove(1);
                    }
                    list.add(Integer.valueOf(i2 + 1));
                    if (isEqual(data, i2 + 2, 255, 216)) {
                        list.set(1, Integer.valueOf(i2 + 3));
                        break;
                    }
                } else if (isEqual(data, i2 + 2, 255, 216)) {
                    str = TAG;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("find end : ");
                    stringBuilder2.append(i2);
                    stringBuilder2.append(1);
                    Log.d(str, stringBuilder2.toString());
                    list.add(Integer.valueOf(i2 + 1));
                }
            }
        }
        long separationEnd = System.currentTimeMillis();
        String str2 = TAG;
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append("search coast ");
        stringBuilder3.append(separationEnd - separationStart);
        Log.d(str2, stringBuilder3.toString());
        if (list.size() == 0) {
            return 0;
        }
        int[] separation = new int[list.size()];
        while (i < separation.length) {
            separation[i] = ((Integer) list.get(i)).intValue();
            i++;
        }
        return separation;
    }

    private static boolean isEqual(byte[] data, int index, int height, int low) {
        boolean z = false;
        if (index + 1 >= data.length) {
            return false;
        }
        if (isEqual(data, index, height) && isEqual(data, index + 1, low)) {
            z = true;
        }
        return z;
    }

    private static boolean isEqual(byte[] data, int index, int target) {
        boolean z = false;
        if (index >= data.length) {
            return false;
        }
        if ((data[index] & 255) == target) {
            z = true;
        }
        return z;
    }

    static byte[] loadData(String path) {
        FileInputStream fileInputStream = null;
        BufferedInputStream bufferedInputStream = null;
        byte[] buffer = null;
        try {
            fileInputStream = new FileInputStream(path);
            bufferedInputStream = new BufferedInputStream(fileInputStream);
            buffer = new byte[bufferedInputStream.available()];
            bufferedInputStream.read(buffer);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            RefocusIOUtils.close(TAG, fileInputStream);
            RefocusIOUtils.close(TAG, bufferedInputStream);
        }
        RefocusIOUtils.close(TAG, fileInputStream);
        RefocusIOUtils.close(TAG, bufferedInputStream);
        return buffer;
    }

    static File getTempPath(File origin) {
        File file = new File(origin.getParent(), ".refocusTemp");
        if (file.exists()) {
            file.delete();
        }
        return file;
    }

    static File createFileForSave(String parent, boolean video, Context context) {
        String name;
        parent = RefocusIOUtils.getWritablePath(parent, context);
        CharSequence stamp = DateFormat.format("yyyyMMdd_HHmmss", System.currentTimeMillis());
        if (video) {
            name = String.format(Locale.US, "VID_%s.%s", new Object[]{stamp, "mp4"});
        } else {
            name = String.format(Locale.US, "IMG_%s.%s", new Object[]{stamp, "jpg"});
        }
        return new File(parent, name);
    }

    public static Bitmap getBitmapForYUV(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int newWidth = width - (width % 8);
        Bitmap newBitmap = Bitmap.createScaledBitmap(bitmap, newWidth, Math.round(((float) newWidth) * (((float) bitmap.getHeight()) / ((float) width))), null);
        if (newBitmap != bitmap) {
            bitmap.recycle();
        }
        return newBitmap;
    }

    public static boolean isDeviceSupportRefocus() {
        boolean isSupport = "polaris".equals(Build.DEVICE);
        if (!isSupport) {
            return false;
        }
        try {
            System.loadLibrary("refocus");
            System.loadLibrary("arcsoft_dualcam_refocus");
            System.loadLibrary("mpbase");
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "load refocus so failed", e);
            isSupport = false;
        } catch (Exception e2) {
            Log.e(TAG, "load refocus so failed", e2);
            isSupport = false;
        }
        return isSupport;
    }
}
