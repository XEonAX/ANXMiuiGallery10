package com.miui.internal.variable;

import android.widget.RemoteViews;
import com.miui.internal.util.ClassProxy;
import miui.R;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Widget_RemoteViews_class extends ClassProxy<RemoteViews> implements IManagedClassProxy {
    protected static final String PROCESS_NAME_SYSTEM_UI = "com.android.systemui";
    protected static final int REMOTE_VIEWS_TEMPLATE_THEME = R.style.Theme_Light_RemoteViews;

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aD */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_RemoteViews_class kN;

        private Factory() {
            this.kN = (Android_Widget_RemoteViews_class) create("Android_Widget_RemoteViews_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_RemoteViews_class get() {
            return this.kN;
        }
    }

    public Android_Widget_RemoteViews_class() {
        super(RemoteViews.class);
    }
}
