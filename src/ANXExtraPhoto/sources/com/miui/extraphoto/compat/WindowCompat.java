package com.miui.extraphoto.compat;

import android.os.Build.VERSION;
import android.view.Window;
import android.view.WindowManager.LayoutParams;

public class WindowCompat {
    public static void setCutoutModeShortEdges(Window hostwindow) {
        if (VERSION.SDK_INT >= 28) {
            LayoutParams lp = hostwindow.getAttributes();
            lp.layoutInDisplayCutoutMode = 1;
            hostwindow.setAttributes(lp);
        }
    }
}
