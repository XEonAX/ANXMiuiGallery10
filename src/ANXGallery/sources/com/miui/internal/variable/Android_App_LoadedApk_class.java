package com.miui.internal.variable;

import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import miui.util.SoftReferenceSingleton;

public interface Android_App_LoadedApk_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aj */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_App_LoadedApk_class jZ;

        private Factory() {
            this.jZ = (Android_App_LoadedApk_class) create("Android_App_LoadedApk_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_App_LoadedApk_class get() {
            return this.jZ;
        }
    }

    ApplicationInfo getApplicationInfo(Object obj);

    Resources getResources(Object obj);
}
