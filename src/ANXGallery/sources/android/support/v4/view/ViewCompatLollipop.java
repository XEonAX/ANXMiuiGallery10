package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

@TargetApi(21)
class ViewCompatLollipop {

    public interface OnApplyWindowInsetsListenerBridge {
        Object onApplyWindowInsets(View view, Object obj);
    }

    public static void setTransitionName(View view, String transitionName) {
        view.setTransitionName(transitionName);
    }

    public static void setElevation(View view, float elevation) {
        view.setElevation(elevation);
    }

    public static float getElevation(View view) {
        return view.getElevation();
    }

    public static void setOnApplyWindowInsetsListener(View view, final OnApplyWindowInsetsListenerBridge bridge) {
        if (bridge == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new OnApplyWindowInsetsListener() {
                public WindowInsets onApplyWindowInsets(View view, WindowInsets insets) {
                    return (WindowInsets) bridge.onApplyWindowInsets(view, insets);
                }
            });
        }
    }

    public static Object onApplyWindowInsets(View v, Object insets) {
        WindowInsets unwrapped = (WindowInsets) insets;
        WindowInsets result = v.onApplyWindowInsets(unwrapped);
        if (result != unwrapped) {
            return new WindowInsets(result);
        }
        return insets;
    }

    public static Object dispatchApplyWindowInsets(View v, Object insets) {
        WindowInsets unwrapped = (WindowInsets) insets;
        WindowInsets result = v.dispatchApplyWindowInsets(unwrapped);
        if (result != unwrapped) {
            return new WindowInsets(result);
        }
        return insets;
    }

    public static void stopNestedScroll(View view) {
        view.stopNestedScroll();
    }
}
