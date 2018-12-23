package com.miui.extraphoto.common.threadpool;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class PriorityThreadFactory implements ThreadFactory {
    private final String mName;
    private final AtomicInteger mNumber = new AtomicInteger();
    private final int mPriority;

    public PriorityThreadFactory(String name, int priority) {
        this.mName = name;
        this.mPriority = priority;
    }

    public Thread newThread(Runnable r) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.mName);
        stringBuilder.append('-');
        stringBuilder.append(this.mNumber.getAndIncrement());
        return new Thread(r, stringBuilder.toString()) {
            public void run() {
                Process.setThreadPriority(PriorityThreadFactory.this.mPriority);
                super.run();
            }
        };
    }
}
