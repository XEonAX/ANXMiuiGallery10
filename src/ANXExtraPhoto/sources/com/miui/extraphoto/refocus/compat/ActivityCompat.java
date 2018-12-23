package com.miui.extraphoto.refocus.compat;

import android.app.Activity;
import android.os.Build.VERSION;
import android.transition.Transition;
import android.view.View;
import java.util.List;

public abstract class ActivityCompat {

    public interface SharedElementCallback {
        void onSharedElementStart();
    }

    public static void postponeEnterTransition(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void startPostponedEnterTransition(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }

    public static void setEnterTransition(Activity activity, Transition transition) {
        if (VERSION.SDK_INT >= 21) {
            activity.getWindow().setEnterTransition(transition);
        }
    }

    public static void finishAfterTransition(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static void setEnterSharedElementCallback(Activity activity, final SharedElementCallback callback) {
        if (VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(new android.app.SharedElementCallback() {
                public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
                    if (callback != null) {
                        callback.onSharedElementStart();
                    }
                }
            });
        }
    }

    public static boolean isInMultiWindowMode(Activity activity) {
        return VERSION.SDK_INT >= 24 && activity.isInMultiWindowMode();
    }
}
