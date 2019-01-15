package com.miui.internal.variable;

import android.os.Build.VERSION;
import com.miui.internal.util.ClassProxy;

public abstract class Internal_Policy_Impl_PhoneWindow_class extends ClassProxy<Object> implements IManagedClassProxy {
    protected static final Class<? extends Object> TARGET_CLASS = aF();
    private static final String kP;

    public static class Factory extends AbsClassFactory {
        private Internal_Policy_Impl_PhoneWindow_class kQ;

        private static class Holder {
            static final Factory kR = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.kQ = (Internal_Policy_Impl_PhoneWindow_class) create("Internal_Policy_Impl_PhoneWindow_class");
        }

        public static Factory getInstance() {
            return Holder.kR;
        }

        public Internal_Policy_Impl_PhoneWindow_class get() {
            return this.kQ;
        }
    }

    static {
        String str;
        if (VERSION.SDK_INT >= 23) {
            str = "com.android.internal.policy.PhoneWindow";
        } else {
            str = "com.android.internal.policy.impl.PhoneWindow";
        }
        kP = str;
    }

    private static Class<? extends Object> aF() {
        try {
            return Class.forName(kP);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("com.android.internal.policy.impl.PhoneWindow", e);
            return null;
        }
    }

    public Internal_Policy_Impl_PhoneWindow_class() {
        super(TARGET_CLASS);
    }
}
