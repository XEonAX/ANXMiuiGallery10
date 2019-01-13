package com.miui.internal.util.async;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.Map;
import miui.util.ArrayMap;

public class WorkerThreads {
    public static final String TAG_COMMON_WORK = "common_work";
    private static final Map<String, ThreadWrapper> jK = new ArrayMap();

    private static class ThreadWrapper {
        final HandlerThread jL;
        int jM = 1;

        ThreadWrapper(String str) {
            this.jL = new HandlerThread(str);
            this.jL.start();
        }
    }

    private WorkerThreads() {
    }

    public static synchronized Looper aquireWorker(String str) {
        Looper looper;
        synchronized (WorkerThreads.class) {
            ThreadWrapper threadWrapper = (ThreadWrapper) jK.get(str);
            if (threadWrapper == null) {
                threadWrapper = new ThreadWrapper(str);
                jK.put(str, threadWrapper);
            } else {
                threadWrapper.jM++;
            }
            looper = threadWrapper.jL.getLooper();
        }
        return looper;
    }

    public static synchronized void releaseWorker(String str) {
        synchronized (WorkerThreads.class) {
            ThreadWrapper threadWrapper = (ThreadWrapper) jK.get(str);
            if (threadWrapper != null) {
                threadWrapper.jM--;
                if (threadWrapper.jM == 0) {
                    jK.remove(str);
                    threadWrapper.jL.quitSafely();
                }
            }
        }
    }
}
