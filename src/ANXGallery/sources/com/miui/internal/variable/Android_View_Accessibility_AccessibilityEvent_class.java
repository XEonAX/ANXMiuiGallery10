package com.miui.internal.variable;

import android.view.accessibility.AccessibilityEvent;
import miui.util.SoftReferenceSingleton;

public abstract class Android_View_Accessibility_AccessibilityEvent_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aw */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_View_Accessibility_AccessibilityEvent_class kx;

        private Factory() {
            this.kx = (Android_View_Accessibility_AccessibilityEvent_class) create("Android_View_Accessibility_AccessibilityEvent_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_View_Accessibility_AccessibilityEvent_class get() {
            return this.kx;
        }
    }

    public abstract void setContentChangeTypes(AccessibilityEvent accessibilityEvent, int i);
}
