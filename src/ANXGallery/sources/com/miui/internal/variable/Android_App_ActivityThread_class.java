package com.miui.internal.variable;

import android.app.Application;

public interface Android_App_ActivityThread_class {

    public static class Factory extends AbsClassFactory {
        private Android_App_ActivityThread_class jU;

        private static class Holder {
            static final Factory jV = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.jU = (Android_App_ActivityThread_class) create("Android_App_ActivityThread_class");
        }

        public static Factory getInstance() {
            return Holder.jV;
        }

        public Android_App_ActivityThread_class get() {
            return this.jU;
        }
    }

    Object currentActivityThread();

    Application currentApplication();

    Object getInitialLoadedApk(Object obj);

    String getInitialPackageName(Object obj);
}
