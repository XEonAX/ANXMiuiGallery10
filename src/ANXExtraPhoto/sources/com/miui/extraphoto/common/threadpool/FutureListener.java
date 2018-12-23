package com.miui.extraphoto.common.threadpool;

public interface FutureListener<T> {
    void onFutureDone(Future<T> future);
}
