package com.miui.internal.variable;

import android.content.res.AssetManager;
import android.content.res.ResourcesImpl;
import com.miui.internal.util.ClassProxy;

public abstract class Android_Content_Res_ResourcesImpl_class extends ClassProxy<ResourcesImpl> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private Android_Content_Res_ResourcesImpl_class ke;

        private static final class Holder {
            static final Factory kf = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.ke = (Android_Content_Res_ResourcesImpl_class) create("Android_Content_Res_ResourcesImpl_class");
        }

        public static Factory getInstance() {
            return Holder.kf;
        }

        public Android_Content_Res_ResourcesImpl_class get() {
            return this.ke;
        }
    }

    public abstract AssetManager getAssets(ResourcesImpl resourcesImpl);

    public Android_Content_Res_ResourcesImpl_class() {
        super(ResourcesImpl.class);
    }
}
