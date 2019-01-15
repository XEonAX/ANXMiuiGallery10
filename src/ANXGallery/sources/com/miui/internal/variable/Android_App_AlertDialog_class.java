package com.miui.internal.variable;

import android.app.AlertDialog;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_App_AlertDialog_class extends ClassProxy<AlertDialog> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ai */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_App_AlertDialog_class jY;

        private Factory() {
            this.jY = (Android_App_AlertDialog_class) create("Android_App_AlertDialog_class");
            com.miui.internal.variable.Android_App_AlertDialog_Builder_class.Factory.getInstance().getClass();
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_App_AlertDialog_class get() {
            return this.jY;
        }
    }

    public Android_App_AlertDialog_class() {
        super(AlertDialog.class);
    }
}
