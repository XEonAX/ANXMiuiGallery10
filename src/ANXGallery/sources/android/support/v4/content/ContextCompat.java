package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Process;
import android.util.TypedValue;

public class ContextCompat {
    private static final Object sLock = new Object();
    private static TypedValue sTempValue;

    public static void startActivity(Context context, Intent intent, Bundle options) {
        if (VERSION.SDK_INT >= 16) {
            ContextCompatJellybean.startActivity(context, intent, options);
        } else {
            context.startActivity(intent);
        }
    }

    public static final Drawable getDrawable(Context context, int id) {
        int version = VERSION.SDK_INT;
        if (version >= 21) {
            return ContextCompatApi21.getDrawable(context, id);
        }
        if (version >= 16) {
            return context.getResources().getDrawable(id);
        }
        int resolvedId;
        synchronized (sLock) {
            if (sTempValue == null) {
                sTempValue = new TypedValue();
            }
            context.getResources().getValue(id, sTempValue, true);
            resolvedId = sTempValue.resourceId;
        }
        return context.getResources().getDrawable(resolvedId);
    }

    public static int checkSelfPermission(Context context, String permission) {
        if (permission != null) {
            return context.checkPermission(permission, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }
}
