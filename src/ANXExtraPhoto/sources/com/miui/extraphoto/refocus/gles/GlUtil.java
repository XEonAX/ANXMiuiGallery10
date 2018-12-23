package com.miui.extraphoto.refocus.gles;

import android.opengl.GLES20;
import android.util.Log;

public class GlUtil {
    private static final String TAG = GlUtil.class.getSimpleName();

    public static void checkGlError(String op) {
        int error = GLES20.glGetError();
        if (error != 0) {
            String msg = new StringBuilder();
            msg.append(op);
            msg.append(": glError 0x");
            msg.append(Integer.toHexString(error));
            msg = msg.toString();
            Log.e(TAG, msg);
            throw new RuntimeException(msg);
        }
    }
}
