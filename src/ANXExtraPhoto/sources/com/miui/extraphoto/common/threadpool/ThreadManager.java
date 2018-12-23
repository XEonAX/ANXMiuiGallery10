package com.miui.extraphoto.common.threadpool;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class ThreadManager {
    private static final Object sDecodeLock = new Object();
    private static ThreadPool sDecodePool;
    private static Handler sMainHandler;
    private static final Object sMainHandlerLock = new Object();
    private static final Object sMiscLock = new Object();
    private static ThreadPool sMiscPool;
    private static final Object sNetworkLock = new Object();
    private static ThreadPool sNetworkPool;
    private static final Object sRequestLock = new Object();
    private static HandlerThread sRequestThread;
    private static Handler sRequestThreadHandler;

    public static ThreadPool getDecodePool() {
        ThreadPool threadPool;
        synchronized (sDecodeLock) {
            if (sDecodePool == null) {
                sDecodePool = new ThreadPool(2, 4);
            }
            threadPool = sDecodePool;
        }
        return threadPool;
    }

    public static ThreadPool getMiscPool() {
        ThreadPool threadPool;
        synchronized (sMiscLock) {
            if (sMiscPool == null) {
                sMiscPool = new ThreadPool();
            }
            threadPool = sMiscPool;
        }
        return threadPool;
    }

    public static ThreadPool getNetworkPool() {
        ThreadPool threadPool;
        synchronized (sNetworkLock) {
            if (sNetworkPool == null) {
                sNetworkPool = new ThreadPool(2, 2);
            }
            threadPool = sNetworkPool;
        }
        return threadPool;
    }

    public static Handler getMainHandler() {
        Handler handler;
        synchronized (sMainHandlerLock) {
            if (sMainHandler == null) {
                sMainHandler = new Handler(Looper.getMainLooper());
            }
            handler = sMainHandler;
        }
        return handler;
    }

    public static Handler getRequestThreadHandler() {
        Handler handler;
        synchronized (sRequestLock) {
            if (sRequestThreadHandler == null) {
                sRequestThread = new HandlerThread("request_thread");
                sRequestThread.start();
                sRequestThreadHandler = new Handler(sRequestThread.getLooper());
            }
            handler = sRequestThreadHandler;
        }
        return handler;
    }

    public static Looper getRequestThreadLooper() {
        return getRequestThreadHandler().getLooper();
    }

    public static void executeOnRequestThread(Runnable run) {
        getRequestThreadHandler().post(run);
    }
}
