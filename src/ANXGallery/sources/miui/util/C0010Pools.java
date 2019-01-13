package miui.util;

import java.util.HashMap;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C00011;
import miui.util.Pools.C0003Pool;
import miui.util.Pools.C0006InstanceHolder;
import miui.util.Pools.C0007SimplePool;
import miui.util.Pools.C0008SoftReferenceInstanceHolder;
import miui.util.Pools.C0009SoftReferencePool;

/* renamed from: miui.util.Pools */
public final class C0010Pools {
    private static final HashMap<Class<?>, C0006InstanceHolder<?>> Jv = new HashMap();
    private static final HashMap<Class<?>, C0008SoftReferenceInstanceHolder<?>> Jw = new HashMap();
    private static final C0003Pool<StringBuilder> Jx = C0010Pools.createSoftReferencePool(new C00011(), 4);

    public static C0003Pool<StringBuilder> getStringBuilderPool() {
        return Jx;
    }

    static <T> C0006InstanceHolder<T> b(Class<T> cls, int i) {
        C0006InstanceHolder<T> c0006InstanceHolder;
        synchronized (Jv) {
            c0006InstanceHolder = (C0006InstanceHolder) Jv.get(cls);
            if (c0006InstanceHolder == null) {
                c0006InstanceHolder = new C0006InstanceHolder(cls, i);
                Jv.put(cls, c0006InstanceHolder);
            } else {
                c0006InstanceHolder.resize(i);
            }
        }
        return c0006InstanceHolder;
    }

    static <T> void a(C0006InstanceHolder<T> c0006InstanceHolder, int i) {
        synchronized (Jv) {
            c0006InstanceHolder.resize(-i);
        }
    }

    static <T> C0008SoftReferenceInstanceHolder<T> c(Class<T> cls, int i) {
        C0008SoftReferenceInstanceHolder<T> c0008SoftReferenceInstanceHolder;
        synchronized (Jw) {
            c0008SoftReferenceInstanceHolder = (C0008SoftReferenceInstanceHolder) Jw.get(cls);
            if (c0008SoftReferenceInstanceHolder == null) {
                c0008SoftReferenceInstanceHolder = new C0008SoftReferenceInstanceHolder(cls, i);
                Jw.put(cls, c0008SoftReferenceInstanceHolder);
            } else {
                c0008SoftReferenceInstanceHolder.resize(i);
            }
        }
        return c0008SoftReferenceInstanceHolder;
    }

    static <T> void a(C0008SoftReferenceInstanceHolder<T> c0008SoftReferenceInstanceHolder, int i) {
        synchronized (Jw) {
            c0008SoftReferenceInstanceHolder.resize(-i);
        }
    }

    public static <T> C0007SimplePool<T> createSimplePool(C0000Manager<T> c0000Manager, int i) {
        return new C0007SimplePool(c0000Manager, i);
    }

    public static <T> C0009SoftReferencePool<T> createSoftReferencePool(C0000Manager<T> c0000Manager, int i) {
        return new C0009SoftReferencePool(c0000Manager, i);
    }
}
