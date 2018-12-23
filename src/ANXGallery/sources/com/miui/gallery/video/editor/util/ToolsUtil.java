package com.miui.gallery.video.editor.util;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.View;
import com.miui.gallery.util.Log;
import java.io.IOException;
import java.util.Locale;

public class ToolsUtil {
    public static void showView(View view) {
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public static void hideView(View view) {
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public static boolean isRTLDirection() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public static int parseIntFromStr(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return Integer.parseInt(str.trim());
            }
        } catch (Exception e) {
            Log.d("ToolsUtil", "parseIntFromStr exception: %s ", e.getMessage());
        }
        return 0;
    }

    public static String getTrimedString(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.trim();
    }

    public static int getVideoFrameRate(String path) {
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
            return frameRate;
        } catch (IOException e) {
            Log.d("ToolsUtil", "getVideoFrameRate: %s", e.getMessage());
            extractor.release();
            return 0;
        } catch (Throwable th) {
            extractor.release();
            throw th;
        }
    }

    public static boolean isSupportEditVideo(String path) {
        boolean isSupported = true;
        try {
            if (VERSION.SDK_INT < 21) {
                return true;
            }
            MediaMetadataRetriever retr = new MediaMetadataRetriever();
            retr.setDataSource(path);
            String height = retr.extractMetadata(19);
            String width = retr.extractMetadata(18);
            double frames = (double) getVideoFrameRate(path);
            int numCodecs = MediaCodecList.getCodecCount();
            for (int i = 0; i < numCodecs; i++) {
                MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i);
                String[] types = codecInfo.getSupportedTypes();
                int j = 0;
                while (j < types.length && types[j].contains("video/")) {
                    isSupported = codecInfo.getCapabilitiesForType(types[j]).getVideoCapabilities().areSizeAndRateSupported(Integer.valueOf(width).intValue(), Integer.valueOf(height).intValue(), frames);
                    Log.d("ToolsUtil", "the MediaCodecInfo name is: %s, and the MediaCodecInfo type is %s , and the  phone is supported to edit:  %s", codecInfo.getName(), types[j], Boolean.valueOf(isSupported));
                    if (isSupported) {
                        return isSupported;
                    }
                    j++;
                }
            }
            return isSupported;
        } catch (Exception e) {
            Log.d("ToolsUtil", e.getMessage());
        }
    }
}
