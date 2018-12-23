package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.Display;
import android.view.View;

@TargetApi(17)
class ViewCompatJellybeanMr1 {
    public static int getLayoutDirection(View view) {
        return view.getLayoutDirection();
    }

    public static int getPaddingStart(View view) {
        return view.getPaddingStart();
    }

    public static int getPaddingEnd(View view) {
        return view.getPaddingEnd();
    }

    public static Display getDisplay(View view) {
        return view.getDisplay();
    }
}
