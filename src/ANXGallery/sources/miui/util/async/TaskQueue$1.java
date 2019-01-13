package miui.util.async;

import miui.util.async.Task.Priority;

/* synthetic */ class TaskQueue$1 {
    static final /* synthetic */ int[] Ka = new int[Priority.values().length];

    static {
        try {
            Ka[Priority.Low.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            Ka[Priority.Normal.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            Ka[Priority.High.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            Ka[Priority.RealTime.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
