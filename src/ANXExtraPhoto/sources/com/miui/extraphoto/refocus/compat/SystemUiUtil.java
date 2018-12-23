package com.miui.extraphoto.refocus.compat;

import android.os.Build.VERSION;
import android.view.View;
import android.view.Window;

public class SystemUiUtil {
    public static void showSystemBars(View decorView) {
        if (VERSION.SDK_INT < 23) {
            decorView.setSystemUiVisibility(1792);
        } else {
            decorView.setSystemUiVisibility(9984);
        }
    }

    public static void hideSystemBars(View decorView) {
        if (VERSION.SDK_INT < 23) {
            decorView.setSystemUiVisibility(5894);
        } else {
            decorView.setSystemUiVisibility(14086);
        }
    }

    public static void setLayoutFullScreen(View decorView, boolean showBars) {
        int flag = 1792;
        if (!showBars) {
            flag = 1792 | 4102;
        }
        if (VERSION.SDK_INT > 22) {
            flag |= 8192;
        }
        decorView.setSystemUiVisibility(flag);
    }

    public static void setDrawSystemBarBackground(Window window) {
        if (VERSION.SDK_INT >= 23 && window != null) {
            window.addFlags(Integer.MIN_VALUE);
        }
    }

    public static void setSystemBarsVisibility(boolean visibility, View decorView) {
        if (visibility) {
            showSystemBars(decorView);
        } else {
            hideSystemBars(decorView);
        }
    }
}
