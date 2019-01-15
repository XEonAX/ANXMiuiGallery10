package com.miui.internal.variable;

import android.media.AudioRecord;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Media_AudioRecord_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aq */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Media_AudioRecord_class kn;

        private Factory() {
            this.kn = (Android_Media_AudioRecord_class) create("Android_Media_AudioRecord_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Media_AudioRecord_class get() {
            return this.kn;
        }
    }

    public abstract boolean isExtraParamSupported();

    public abstract int setParameters(AudioRecord audioRecord, String str);
}
