package com.miui.extraphoto.refocus.compat;

import android.os.Build.VERSION;
import android.transition.Transition;

public class TransitionCompat {
    public static void addTarget(Transition transition, String targetName) {
        if (VERSION.SDK_INT >= 21) {
            transition.addTarget(targetName);
            return;
        }
        throw new UnsupportedOperationException("not support before v21");
    }
}
