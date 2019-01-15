package com.miui.internal.variable;

import com.miui.internal.util.ClassProxy;
import java.util.ArrayList;
import java.util.List;

public abstract class Android_App_ResourcesManager_class extends ClassProxy<Object> implements IManagedClassProxy {
    protected static final Class<?> ResourcsManager_Class = getClass("android.app.ResourcesManager");
    protected static List<String> mAppendedAssetPaths;

    public static class Factory extends AbsClassFactory {
        private Android_App_ResourcesManager_class kb;

        private static final class Holder {
            static final Factory kc = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.kb = (Android_App_ResourcesManager_class) create("Android_App_ResourcesManager_class");
        }

        public static Factory getInstance() {
            return Holder.kc;
        }

        public Android_App_ResourcesManager_class get() {
            return this.kb;
        }
    }

    protected static Class<?> getClass(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.ResourcesManager", e);
            return null;
        }
    }

    public Android_App_ResourcesManager_class() {
        super(ResourcsManager_Class);
    }

    public static void appendAssetPath(String str) {
        if (mAppendedAssetPaths == null) {
            mAppendedAssetPaths = new ArrayList();
        }
        for (String equals : mAppendedAssetPaths) {
            if (equals.equals(str)) {
                return;
            }
        }
        mAppendedAssetPaths.add(str);
    }
}
