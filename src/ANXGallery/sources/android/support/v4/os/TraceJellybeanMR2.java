package android.support.v4.os;

import android.annotation.TargetApi;
import android.os.Trace;

@TargetApi(18)
class TraceJellybeanMR2 {
    public static void beginSection(String section) {
        Trace.beginSection(section);
    }

    public static void endSection() {
        Trace.endSection();
    }
}
