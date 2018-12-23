package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.WindowInsets;

@TargetApi(21)
class WindowInsetsCompatApi21 {
    public static boolean isConsumed(Object insets) {
        return ((WindowInsets) insets).isConsumed();
    }
}
