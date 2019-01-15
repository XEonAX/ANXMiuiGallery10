package com.miui.internal.variable;

import android.app.Activity;
import android.os.Bundle;
import miui.util.SoftReferenceSingleton;

public abstract class Android_App_PreferenceActivity_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ak */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_App_PreferenceActivity_class ka;

        private Factory() {
            this.ka = (Android_App_PreferenceActivity_class) create("Android_App_PreferenceActivity_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_App_PreferenceActivity_class get() {
            return this.ka;
        }
    }

    public abstract void onCreate(Activity activity, Bundle bundle);
}
