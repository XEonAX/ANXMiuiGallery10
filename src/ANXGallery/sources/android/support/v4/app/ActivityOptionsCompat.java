package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.util.Pair;
import android.view.View;

public class ActivityOptionsCompat {

    @TargetApi(21)
    private static class ActivityOptionsImpl21 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat21 mImpl;

        ActivityOptionsImpl21(ActivityOptionsCompat21 impl) {
            this.mImpl = impl;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }
    }

    @TargetApi(23)
    private static class ActivityOptionsImpl23 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat23 mImpl;

        ActivityOptionsImpl23(ActivityOptionsCompat23 impl) {
            this.mImpl = impl;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }
    }

    @TargetApi(24)
    private static class ActivityOptionsImpl24 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat24 mImpl;

        ActivityOptionsImpl24(ActivityOptionsCompat24 impl) {
            this.mImpl = impl;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, Pair<View, String>... sharedElements) {
        if (VERSION.SDK_INT < 21) {
            return new ActivityOptionsCompat();
        }
        View[] views = null;
        String[] names = null;
        if (sharedElements != null) {
            views = new View[sharedElements.length];
            names = new String[sharedElements.length];
            for (int i = 0; i < sharedElements.length; i++) {
                views[i] = (View) sharedElements[i].first;
                names[i] = (String) sharedElements[i].second;
            }
        }
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeSceneTransitionAnimation(activity, views, names));
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeSceneTransitionAnimation(activity, views, names));
        }
        return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, views, names));
    }

    protected ActivityOptionsCompat() {
    }

    public Bundle toBundle() {
        return null;
    }
}
