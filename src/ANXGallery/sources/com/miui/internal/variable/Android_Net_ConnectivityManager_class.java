package com.miui.internal.variable;

import android.net.ConnectivityManager;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Net_ConnectivityManager_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ar */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Net_ConnectivityManager_class ko;

        private Factory() {
            this.ko = (Android_Net_ConnectivityManager_class) create("Android_Net_ConnectivityManager_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Net_ConnectivityManager_class get() {
            return this.ko;
        }
    }

    public abstract boolean isNetworkSupported(ConnectivityManager connectivityManager, int i);
}
