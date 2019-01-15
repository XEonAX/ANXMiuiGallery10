package com.miui.internal.variable.v16;

import android.graphics.drawable.Drawable;
import com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class.Factory;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Method;

public class Android_Graphics_Drawable_AnimatedRotateDrawable_class extends com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class {
    private static final Class<?> le;
    private static final Method lk = Method.of(le, "setFramesCount", "(I)V");
    private static final Method ll = Method.of(le, "setFramesDuration", "(I)V");
    private static final Method lm = Method.of(le, "start", "()V");
    private static final Method ln = Method.of(le, "stop", "()V");

    static {
        Class cls;
        try {
            cls = Class.forName(com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow(com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME, e);
            cls = null;
        }
        le = cls;
    }

    public void setFramesCount(Drawable drawable, int i) {
        try {
            lk.invoke(null, drawable, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.setFramesCount", e);
        }
    }

    public void setFramesDuration(Drawable drawable, int i) {
        try {
            ll.invoke(null, drawable, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.setFramesDuration", e);
        }
    }

    public void start(Drawable drawable) {
        try {
            lm.invoke(null, drawable, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.start", e);
        }
    }

    public void stop(Drawable drawable) {
        try {
            ln.invoke(null, drawable, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.stop", e);
        }
    }

    public int getLayoutDirection(Drawable drawable) {
        return Factory.getInstance().get().getLayoutDirection(drawable);
    }
}
