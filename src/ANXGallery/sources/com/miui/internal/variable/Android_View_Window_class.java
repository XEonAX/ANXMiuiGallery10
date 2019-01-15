package com.miui.internal.variable;

import android.view.Window;
import miui.reflect.Method;

public abstract class Android_View_Window_class {
    protected static Method setExtraFlags;

    public static class Factory extends AbsClassFactory {
        private Android_View_Window_class kF;

        private static final class Holder {
            static final Factory kG = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.kF = (Android_View_Window_class) create("Android_View_Window_class");
        }

        public static Factory getInstance() {
            return Holder.kG;
        }

        public Android_View_Window_class get() {
            return this.kF;
        }
    }

    public abstract boolean setTranslucentStatus(Window window, int i);

    static {
        try {
            setExtraFlags = Method.of(Window.class, "setExtraFlags", "(II)V");
        } catch (Exception e) {
            setExtraFlags = null;
        }
    }
}
