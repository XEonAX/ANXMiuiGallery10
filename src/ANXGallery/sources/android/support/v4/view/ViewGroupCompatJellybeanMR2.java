package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.ViewGroup;

@TargetApi(18)
class ViewGroupCompatJellybeanMR2 {
    public static int getLayoutMode(ViewGroup group) {
        return group.getLayoutMode();
    }
}
