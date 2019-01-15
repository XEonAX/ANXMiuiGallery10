package com.miui.internal.variable.v16;

import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Field;
import miui.reflect.Method;

public class Android_Content_SyncStatusInfo_class extends com.miui.internal.variable.Android_Content_SyncStatusInfo_class {
    private static final Class<?> le;
    private static final Field lf = Field.of(le, "pending", Field.BOOLEAN_SIGNATURE_PRIMITIVE);
    private static final Field lg = Field.of(le, "initialize", Field.BOOLEAN_SIGNATURE_PRIMITIVE);
    private static final Field lh = Field.of(le, "lastSuccessTime", Field.LONG_SIGNATURE_PRIMITIVE);
    private static final Field li = Field.of(le, "lastFailureTime", Field.LONG_SIGNATURE_PRIMITIVE);
    private static final Method lj = Method.of(le, "getLastFailureMesgAsInt", "(I)I");

    static {
        Class cls;
        try {
            cls = Class.forName(com.miui.internal.variable.Android_Content_SyncStatusInfo_class.NAME);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow(com.miui.internal.variable.Android_Content_SyncStatusInfo_class.NAME, e);
            cls = null;
        }
        le = cls;
    }

    public boolean getPending(Object obj) {
        try {
            return lf.getBoolean(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.pending", e);
            return false;
        }
    }

    public boolean getInitialize(Object obj) {
        try {
            return lg.getBoolean(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.initialize", e);
            return false;
        }
    }

    public long getLastSuccessTime(Object obj) {
        try {
            return lh.getLong(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.lastSuccessTime", e);
            return 0;
        }
    }

    public long getLastFailureTime(Object obj) {
        try {
            return li.getLong(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.lastFailureTime", e);
            return 0;
        }
    }

    public int getLastFailureMesgAsInt(Object obj, int i) {
        try {
            return lj.invokeInt(null, obj, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.getLastFailureMesgAsInt", e);
            return i;
        }
    }
}
