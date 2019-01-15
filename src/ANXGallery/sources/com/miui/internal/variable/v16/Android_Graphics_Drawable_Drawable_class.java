package com.miui.internal.variable.v16;

import android.graphics.drawable.Drawable;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Method;

public class Android_Graphics_Drawable_Drawable_class extends com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class {
    private static final Method lo = aG();

    private static Method aG() {
        try {
            return Method.of(Drawable.class, "getResolvedLayoutDirectionSelf", "()I");
        } catch (Exception e) {
            return null;
        }
    }

    public int getLayoutDirection(Drawable drawable) {
        if (lo != null) {
            try {
                return lo.invokeInt(null, drawable, new Object[0]);
            } catch (Throwable e) {
                VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.Drawable.getResolvedLayoutDirectionSelf", e);
            }
        }
        return 0;
    }
}
