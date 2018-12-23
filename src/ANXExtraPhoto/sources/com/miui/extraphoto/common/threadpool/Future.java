package com.miui.extraphoto.common.threadpool;

import com.miui.extraphoto.common.threadpool.ThreadPool.Job;

public interface Future<T> {
    void cancel();

    void cancel(int i);

    T get();

    int getCancelType();

    Job<T> getJob();

    boolean isCancelled();

    boolean isDone();

    void waitDone();
}
