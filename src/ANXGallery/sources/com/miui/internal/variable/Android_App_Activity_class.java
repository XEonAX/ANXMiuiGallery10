package com.miui.internal.variable;

import android.app.Activity;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_App_Activity_class extends ClassProxy<Activity> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ag */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_App_Activity_class jW;

        private Factory() {
            this.jW = (Android_App_Activity_class) create("Android_App_Activity_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_App_Activity_class get() {
            return this.jW;
        }
    }

    public Android_App_Activity_class() {
        super(Activity.class);
    }
}
