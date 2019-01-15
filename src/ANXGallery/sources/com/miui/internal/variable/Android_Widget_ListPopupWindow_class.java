package com.miui.internal.variable;

import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Widget_ListPopupWindow_class extends ClassProxy<ListPopupWindow> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aA */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_ListPopupWindow_class kK;

        private Factory() {
            this.kK = (Android_Widget_ListPopupWindow_class) create("Android_Widget_ListPopupWindow_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_ListPopupWindow_class get() {
            return this.kK;
        }
    }

    public abstract void setPopupWindow(ListPopupWindow listPopupWindow, PopupWindow popupWindow);

    public Android_Widget_ListPopupWindow_class() {
        super(ListPopupWindow.class);
    }
}
