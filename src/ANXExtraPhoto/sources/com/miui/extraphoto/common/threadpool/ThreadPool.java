package com.miui.extraphoto.common.threadpool;

import android.util.Log;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ThreadPool {
    public static final int CANCEL_INTERRUPT = 1;
    public static final int CANCEL_MANUAL = 0;
    private static final int CORE_POOL_SIZE = 4;
    public static final JobContext JOB_CONTEXT_STUB = new JobContextStub();
    private static final int KEEP_ALIVE_TIME = 10;
    private static final int MAX_POOL_SIZE = 8;
    public static final int MODE_CPU = 1;
    public static final int MODE_NETWORK = 2;
    public static final int MODE_NONE = 0;
    private static final String TAG = "ThreadPool";
    ResourceCounter mCpuCounter;
    private final ThreadPoolExecutor mExecutor;
    ResourceCounter mNetworkCounter;

    public interface CancelListener {
        void onCancel();
    }

    public interface Job<T> {
        T run(JobContext jobContext);
    }

    public interface JobContext {
        boolean isCancelled();

        void setCancelListener(CancelListener cancelListener);

        boolean setMode(int i);
    }

    private static class JobContextStub implements JobContext {
        private JobContextStub() {
        }

        public boolean isCancelled() {
            return false;
        }

        public void setCancelListener(CancelListener listener) {
        }

        public boolean setMode(int mode) {
            return true;
        }
    }

    private static class ResourceCounter {
        public int value;

        public ResourceCounter(int v) {
            this.value = v;
        }
    }

    private class Worker<T> implements Runnable, Future<T>, JobContext {
        private static final String TAG = "Worker";
        private CancelListener mCancelListener;
        private int mCancelType = 0;
        private volatile boolean mIsCancelled;
        private boolean mIsDone;
        private Job<T> mJob;
        private FutureListener<T> mListener;
        private int mMode;
        private T mResult;
        private ResourceCounter mWaitOnResource;

        public Worker(Job<T> job, FutureListener<T> listener) {
            this.mJob = job;
            this.mListener = listener;
        }

        public void run() {
            T result = null;
            if (setMode(1)) {
                try {
                    result = this.mJob.run(this);
                } catch (Throwable ex) {
                    Log.w(TAG, "Exception in running a job", ex);
                }
            }
            synchronized (this) {
                setMode(0);
                this.mResult = result;
                this.mIsDone = true;
                notifyAll();
            }
            if (this.mListener != null) {
                this.mListener.onFutureDone(this);
            }
        }

        /* JADX WARNING: Missing block: B:23:0x0025, code:
            return;
     */
        public synchronized void cancel() {
            /*
            r2 = this;
            monitor-enter(r2);
            r0 = r2.mIsCancelled;	 Catch:{ all -> 0x0026 }
            if (r0 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r2);
            return;
        L_0x0007:
            r0 = 1;
            r2.mIsCancelled = r0;	 Catch:{ all -> 0x0026 }
            r0 = r2.mWaitOnResource;	 Catch:{ all -> 0x0026 }
            if (r0 == 0) goto L_0x001b;
        L_0x000e:
            r0 = r2.mWaitOnResource;	 Catch:{ all -> 0x0026 }
            monitor-enter(r0);	 Catch:{ all -> 0x0026 }
            r1 = r2.mWaitOnResource;	 Catch:{ all -> 0x0018 }
            r1.notifyAll();	 Catch:{ all -> 0x0018 }
            monitor-exit(r0);	 Catch:{ all -> 0x0018 }
            goto L_0x001b;
        L_0x0018:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0018 }
            throw r1;	 Catch:{ all -> 0x0026 }
        L_0x001b:
            r0 = r2.mCancelListener;	 Catch:{ all -> 0x0026 }
            if (r0 == 0) goto L_0x0024;
        L_0x001f:
            r0 = r2.mCancelListener;	 Catch:{ all -> 0x0026 }
            r0.onCancel();	 Catch:{ all -> 0x0026 }
        L_0x0024:
            monitor-exit(r2);
            return;
        L_0x0026:
            r0 = move-exception;
            monitor-exit(r2);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.extraphoto.common.threadpool.ThreadPool.Worker.cancel():void");
        }

        public synchronized void cancel(int type) {
            this.mCancelType = type;
            cancel();
        }

        public int getCancelType() {
            return this.mCancelType;
        }

        public Job<T> getJob() {
            return this.mJob;
        }

        public boolean isCancelled() {
            return this.mIsCancelled;
        }

        public synchronized boolean isDone() {
            return this.mIsDone;
        }

        public synchronized T get() {
            while (!this.mIsDone) {
                try {
                    wait();
                } catch (Exception ex) {
                    Log.w(TAG, "ingore exception", ex);
                }
            }
            return this.mResult;
        }

        public void waitDone() {
            get();
        }

        public synchronized void setCancelListener(CancelListener listener) {
            this.mCancelListener = listener;
            if (this.mIsCancelled && this.mCancelListener != null) {
                this.mCancelListener.onCancel();
            }
        }

        public boolean setMode(int mode) {
            ResourceCounter rc = modeToCounter(this.mMode);
            if (rc != null) {
                releaseResource(rc);
            }
            this.mMode = 0;
            rc = modeToCounter(mode);
            if (rc != null) {
                if (!acquireResource(rc)) {
                    return false;
                }
                this.mMode = mode;
            }
            return true;
        }

        private ResourceCounter modeToCounter(int mode) {
            if (mode == 1) {
                return ThreadPool.this.mCpuCounter;
            }
            if (mode == 2) {
                return ThreadPool.this.mNetworkCounter;
            }
            return null;
        }

        /* JADX WARNING: Missing block: B:9:0x000e, code:
            monitor-enter(r4);
     */
        /* JADX WARNING: Missing block: B:12:0x0011, code:
            if (r4.value <= 0) goto L_0x0022;
     */
        /* JADX WARNING: Missing block: B:13:0x0013, code:
            r4.value--;
     */
        /* JADX WARNING: Missing block: B:14:0x0019, code:
            monitor-exit(r4);
     */
        /* JADX WARNING: Missing block: B:15:0x001a, code:
            monitor-enter(r3);
     */
        /* JADX WARNING: Missing block: B:17:?, code:
            r3.mWaitOnResource = null;
     */
        /* JADX WARNING: Missing block: B:18:0x001d, code:
            monitor-exit(r3);
     */
        /* JADX WARNING: Missing block: B:19:0x001e, code:
            return true;
     */
        /* JADX WARNING: Missing block: B:24:?, code:
            r4.wait();
     */
        private boolean acquireResource(com.miui.extraphoto.common.threadpool.ThreadPool.ResourceCounter r4) {
            /*
            r3 = this;
        L_0x0000:
            monitor-enter(r3);
            r0 = r3.mIsCancelled;	 Catch:{ all -> 0x002c }
            r1 = 0;
            if (r0 == 0) goto L_0x000b;
        L_0x0006:
            r3.mWaitOnResource = r1;	 Catch:{ all -> 0x002c }
            r0 = 0;
            monitor-exit(r3);	 Catch:{ all -> 0x002c }
            return r0;
        L_0x000b:
            r3.mWaitOnResource = r4;	 Catch:{ all -> 0x002c }
            monitor-exit(r3);	 Catch:{ all -> 0x002c }
            monitor-enter(r4);
            r0 = r4.value;	 Catch:{ all -> 0x0029 }
            if (r0 <= 0) goto L_0x0022;
        L_0x0013:
            r0 = r4.value;	 Catch:{ all -> 0x0029 }
            r2 = 1;
            r0 = r0 - r2;
            r4.value = r0;	 Catch:{ all -> 0x0029 }
            monitor-exit(r4);	 Catch:{ all -> 0x0029 }
            monitor-enter(r3);
            r3.mWaitOnResource = r1;	 Catch:{ all -> 0x001f }
            monitor-exit(r3);	 Catch:{ all -> 0x001f }
            return r2;
        L_0x001f:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x001f }
            throw r0;
        L_0x0022:
            r4.wait();	 Catch:{ InterruptedException -> 0x0026 }
            goto L_0x0027;
        L_0x0026:
            r0 = move-exception;
        L_0x0027:
            monitor-exit(r4);	 Catch:{ all -> 0x0029 }
            goto L_0x0000;
        L_0x0029:
            r0 = move-exception;
            monitor-exit(r4);	 Catch:{ all -> 0x0029 }
            throw r0;
        L_0x002c:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x002c }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.extraphoto.common.threadpool.ThreadPool.Worker.acquireResource(com.miui.extraphoto.common.threadpool.ThreadPool$ResourceCounter):boolean");
        }

        private void releaseResource(ResourceCounter counter) {
            synchronized (counter) {
                counter.value++;
                counter.notifyAll();
            }
        }
    }

    public ThreadPool() {
        this(4, 8);
    }

    public ThreadPool(int corePoolSize, int maxPoolSize) {
        this.mCpuCounter = new ResourceCounter(4);
        this.mNetworkCounter = new ResourceCounter(2);
        this.mExecutor = new ThreadPoolExecutor(corePoolSize, maxPoolSize, 10, TimeUnit.SECONDS, new LinkedBlockingQueue(), new PriorityThreadFactory("thread-pool", KEEP_ALIVE_TIME));
    }

    public void shutdown() {
        try {
            this.mExecutor.shutdown();
        } catch (Throwable throwable) {
            Log.w(TAG, throwable);
        }
    }

    public <T> Future<T> submit(Job<T> job, FutureListener<T> listener) {
        Worker<T> w = new Worker(job, listener);
        this.mExecutor.execute(w);
        return w;
    }

    public <T> Future<T> submit(Job<T> job) {
        return submit(job, null);
    }
}
