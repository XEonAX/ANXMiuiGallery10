package com.miui.extraphoto.refocus;

import android.content.Context;
import miui.external.Application;

public class ExtraPhotoApp extends Application {
    private static volatile Context sContext;

    public class ApplicationDelegate extends miui.external.ApplicationDelegate {
        public void onCreate() {
            super.onCreate();
        }
    }

    public ApplicationDelegate onCreateApplicationDelegate() {
        sContext = this;
        return new ApplicationDelegate();
    }

    public static Context sGetAndroidContext() {
        return sContext;
    }
}
