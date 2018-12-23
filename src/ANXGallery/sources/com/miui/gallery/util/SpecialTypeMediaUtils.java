package com.miui.gallery.util;

import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.text.TextUtils;
import android.util.Log;
import com.miui.extraphoto.sdk.refocus.RefocusSDK;
import com.miui.gallery.R;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy.SpecialTypeMediaStrategy;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import miui.util.SoftReferenceSingleton;
import org.jcodec.containers.mp4.boxes.MetaValue;
import org.jcodec.movtool.MetadataEditor;

public class SpecialTypeMediaUtils {
    private static final boolean DEBUG_ENABLE = Log.isLoggable("SpecialTypeMedia", 3);
    private static final SoftReferenceSingleton<SpecialTypeMediaStrategy> SPECIAL_TYPE_MEDIA_STRATEGY = new SoftReferenceSingleton<SpecialTypeMediaStrategy>() {
        protected SpecialTypeMediaStrategy createInstance() {
            Object strategy = CloudControlStrategyHelper.getSpecialTypeMediaStrategy();
            if (SpecialTypeMediaUtils.DEBUG_ENABLE) {
                Log.d("SpecialTypeMediaUtils", strategy);
            }
            return strategy;
        }
    };

    public static long parseFlagsForImage(String path) {
        long start = System.currentTimeMillis();
        long specialTypeFlags = 0;
        if (!TextUtils.isEmpty(path) && FileMimeUtil.hasExif(path) && ExifUtil.hasFocusPoint(path)) {
            specialTypeFlags = 0 | 1;
        }
        if (DEBUG_ENABLE) {
            Log.d("SpecialTypeMediaUtils", "parseFlagsForImage costs [%dms], path [%s]", Long.valueOf(System.currentTimeMillis() - start), path);
        }
        return specialTypeFlags;
    }

    public static long parseFlagsForVideo(String path) {
        long start = System.currentTimeMillis();
        long specialTypeFlags = 0;
        if (!TextUtils.isEmpty(path)) {
            SpecialTypeMediaStrategy strategy = (SpecialTypeMediaStrategy) SPECIAL_TYPE_MEDIA_STRATEGY.get();
            int frameRate = extractFrameRate(path);
            if (((long) frameRate) >= strategy.getHfr120FpsLowerBound() && ((long) frameRate) <= strategy.getHfr120FpsUpperBound()) {
                specialTypeFlags = 0 | 4;
            } else if (((long) frameRate) < strategy.getHfr240FpsLowerBound() || ((long) frameRate) > strategy.getHfr240FpsUpperBound()) {
                String mimeType = FileMimeUtil.getMimeTypeByParseFile(path);
                if (mimeType != null && "video/mp4".equals(mimeType) && is960FpsVideo(path)) {
                    specialTypeFlags = 0 | 16;
                }
            } else {
                specialTypeFlags = 0 | 8;
            }
        }
        if (DEBUG_ENABLE) {
            Log.d("SpecialTypeMediaUtils", "parseFlagsForVideo costs [%dms], flags [%d], path [%s]", Long.valueOf(System.currentTimeMillis() - start), Long.valueOf(specialTypeFlags), path);
        }
        return specialTypeFlags;
    }

    private static boolean is960FpsVideo(String path) {
        try {
            Map<String, MetaValue> keyedMeta = MetadataEditor.createFrom(new File(path)).getKeyedMeta();
            if (keyedMeta == null) {
                return false;
            }
            MetaValue metadata = (MetaValue) keyedMeta.get("com.xiaomi.capture_framerate");
            if (metadata == null || metadata.getInt() != 960) {
                return false;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static int extractFrameRate(String path) {
        if (TextUtils.isEmpty(path)) {
            return 0;
        }
        MediaExtractor extractor = new MediaExtractor();
        int frameRate = 0;
        try {
            extractor.setDataSource(path);
            int numTracks = extractor.getTrackCount();
            for (int i = 0; i < numTracks; i++) {
                MediaFormat format = extractor.getTrackFormat(i);
                String mime = format.getString("mime");
                if (!TextUtils.isEmpty(mime) && mime.startsWith("video/") && format.containsKey("frame-rate")) {
                    frameRate = format.getInteger("frame-rate");
                    break;
                }
            }
            extractor.release();
        } catch (IOException e) {
            e.printStackTrace();
            extractor.release();
        } catch (Throwable th) {
            extractor.release();
            throw th;
        }
        if (!DEBUG_ENABLE) {
            return frameRate;
        }
        Log.d("SpecialTypeMediaUtils", "path [%s] frameRate [%d]", path, Integer.valueOf(frameRate));
        return frameRate;
    }

    public static boolean isRefocusSupported(Context context, long specialTypeFlags) {
        return (1 & specialTypeFlags) != 0 && RefocusSDK.isDeviceSupportRefocus(context);
    }

    public static int tryGetHFRIndicatorResId(long specialTypeFlags) {
        if ((4 & specialTypeFlags) != 0 || (8 & specialTypeFlags) != 0) {
            return R.drawable.type_indicator_hfr;
        }
        if ((16 & specialTypeFlags) != 0) {
            return R.drawable.type_indicator_extra_hfr;
        }
        return 0;
    }
}
