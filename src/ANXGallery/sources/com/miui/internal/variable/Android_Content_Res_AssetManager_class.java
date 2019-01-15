package com.miui.internal.variable;

import android.content.res.AssetManager;
import miui.util.SoftReferenceSingleton;

public interface Android_Content_Res_AssetManager_class extends IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: al */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Content_Res_AssetManager_class kd;

        private Factory() {
            this.kd = (Android_Content_Res_AssetManager_class) create("Android_Content_Res_AssetManager_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Content_Res_AssetManager_class get() {
            return this.kd;
        }
    }

    int addAssetPath(AssetManager assetManager, String str);

    AssetManager newInstance();
}
