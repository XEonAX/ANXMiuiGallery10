package com.miui.internal.variable.v16;

import android.os.Process;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Method;

public class Android_Os_Process_class extends com.miui.internal.variable.Android_Os_Process_class {
    private static final Method lu = Method.of(Process.class, "getTotalMemory", "()J");
    private static final Method lv = Method.of(Process.class, "getFreeMemory", "()J");

    public long getTotalMemory() {
        try {
            return lu.invokeLong(null, null, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.os.Process.getTotalMemory", e);
            return 0;
        }
    }

    public long getFreeMemory() {
        try {
            return lv.invokeLong(null, null, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.os.Process.getFreeMemory", e);
            return 0;
        }
    }
}
