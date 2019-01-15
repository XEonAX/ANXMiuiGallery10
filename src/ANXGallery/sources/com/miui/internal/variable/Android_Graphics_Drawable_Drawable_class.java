package com.miui.internal.variable;

import android.graphics.drawable.Drawable;
import com.miui.internal.util.async.ConcurrentWeakHashMap;

public abstract class Android_Graphics_Drawable_Drawable_class {
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    private static final ConcurrentWeakHashMap<Drawable, Integer> kj = new ConcurrentWeakHashMap();

    public static class Factory extends AbsClassFactory {
        private Android_Graphics_Drawable_Drawable_class kk;

        private static class Holder {
            static final Factory kl = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.kk = (Android_Graphics_Drawable_Drawable_class) create("Android_Graphics_Drawable_Drawable_class");
        }

        public static Factory getInstance() {
            return Holder.kl;
        }

        public Android_Graphics_Drawable_Drawable_class get() {
            return this.kk;
        }
    }

    public abstract int getLayoutDirection(Drawable drawable);

    public int getId(Drawable drawable) {
        Integer num = (Integer) kj.get(drawable);
        return num == null ? 0 : num.intValue();
    }

    public void setId(Drawable drawable, int i) {
        kj.put(drawable, Integer.valueOf(i));
    }
}
