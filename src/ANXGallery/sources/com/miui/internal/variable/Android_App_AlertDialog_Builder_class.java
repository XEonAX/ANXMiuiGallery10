package com.miui.internal.variable;

import android.app.AlertDialog.Builder;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_App_AlertDialog_Builder_class extends ClassProxy<Builder> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ah */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_App_AlertDialog_Builder_class jX;

        private Factory() {
            this.jX = (Android_App_AlertDialog_Builder_class) create("Android_App_AlertDialog_Builder_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_App_AlertDialog_Builder_class get() {
            return this.jX;
        }
    }

    public Android_App_AlertDialog_Builder_class() {
        super(Builder.class);
    }
}
