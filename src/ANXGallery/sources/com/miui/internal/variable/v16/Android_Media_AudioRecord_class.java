package com.miui.internal.variable.v16;

import android.media.AudioRecord;
import miui.reflect.Method;
import miui.reflect.NoSuchMethodException;

public class Android_Media_AudioRecord_class extends com.miui.internal.variable.Android_Media_AudioRecord_class {
    private static final Method ls;

    static {
        Method of;
        try {
            of = Method.of(AudioRecord.class, "setParameters", "(Ljava/lang/String;)I");
        } catch (NoSuchMethodException e) {
            of = null;
        }
        ls = of;
    }

    public boolean isExtraParamSupported() {
        return ls != null;
    }

    public int setParameters(AudioRecord audioRecord, String str) {
        if (ls == null) {
            return -1;
        }
        return ls.invokeInt(audioRecord.getClass(), audioRecord, str);
    }
}
