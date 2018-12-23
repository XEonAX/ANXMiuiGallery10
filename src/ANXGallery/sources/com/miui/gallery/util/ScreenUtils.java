package com.miui.gallery.util;

import android.app.Activity;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.android.internal.WindowCompat;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.compat.view.ViewCompat;

public class ScreenUtils {
    private static boolean sOptimizeForLowMemory;
    static float sPixelDensity = -1.0f;

    public static boolean needOptimizeForLowMemory() {
        return sOptimizeForLowMemory;
    }

    public static int getScreenWidth() {
        DisplayMetrics displayMetrics = GalleryApp.sGetAndroidContext().getResources().getDisplayMetrics();
        return Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public static int getScreenHeight() {
        DisplayMetrics displayMetrics = GalleryApp.sGetAndroidContext().getResources().getDisplayMetrics();
        return Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public static int getFullScreenHeight(Activity activity) {
        DisplayMetrics metric = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(metric);
        return Math.max(metric.widthPixels, metric.heightPixels);
    }

    public static int getExactScreenHeight(Activity activity) {
        if (activity == null) {
            return 0;
        }
        if (ViewCompat.getSystemWindowInsetBottom(activity.getWindow().getDecorView()) <= 0) {
            return getFullScreenHeight(activity);
        }
        int screenHeight = getScreenHeight();
        if (VERSION.SDK_INT >= 28) {
            return screenHeight + WindowCompat.getTopNotchHeight(activity);
        }
        return screenHeight;
    }
}
