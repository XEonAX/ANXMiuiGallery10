package com.miui.gallery.search.core.context;

import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.Job;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.LinkedBlockingQueue;

public class SimpleTaskExecutor implements TaskExecutor<Job>, FutureListener {
    private int mLimit;
    private final Object mLock = new Object();
    private final ThreadPool mPool;
    private LinkedList<Future> mRunningQueue = new LinkedList();
    private final LinkedBlockingQueue<Job> mWaitQueue = new LinkedBlockingQueue();

    public SimpleTaskExecutor(int threadSize) {
        this.mPool = new ThreadPool(threadSize, threadSize);
        this.mLimit = threadSize;
    }

    public void submit(Job task) {
        if (task != null) {
            synchronized (this.mLock) {
                if (contains(task)) {
                    SearchLog.i("SimpleTaskExecutor", "contain task %d", task);
                    return;
                }
                this.mWaitQueue.add(task);
                submitIfAllowed();
            }
        }
    }

    protected boolean isSameTask(Job task1, Job task2) {
        return task1.equals(task2);
    }

    /* JADX WARNING: Missing block: B:20:?, code:
            return;
     */
    public void cancel(com.miui.gallery.threadpool.ThreadPool.Job r6) {
        /*
        r5 = this;
        r3 = r5.mLock;
        monitor-enter(r3);
        r2 = r5.mRunningQueue;	 Catch:{ all -> 0x003f }
        r2 = r2.iterator();	 Catch:{ all -> 0x003f }
    L_0x0009:
        r4 = r2.hasNext();	 Catch:{ all -> 0x003f }
        if (r4 == 0) goto L_0x002e;
    L_0x000f:
        r0 = r2.next();	 Catch:{ all -> 0x003f }
        r0 = (com.miui.gallery.threadpool.Future) r0;	 Catch:{ all -> 0x003f }
        r4 = r0.getJob();	 Catch:{ all -> 0x003f }
        r4 = r5.isSameTask(r4, r6);	 Catch:{ all -> 0x003f }
        if (r4 == 0) goto L_0x0009;
    L_0x001f:
        r2 = "SimpleTaskExecutor";
        r4 = "Cancel running task [%s]";
        com.miui.gallery.search.utils.SearchLog.d(r2, r4, r6);	 Catch:{ all -> 0x003f }
        r0.cancel();	 Catch:{ all -> 0x003f }
        r5.onFutureDone(r0);	 Catch:{ all -> 0x003f }
        monitor-exit(r3);	 Catch:{ all -> 0x003f }
    L_0x002d:
        return;
    L_0x002e:
        r2 = r5.mWaitQueue;	 Catch:{ all -> 0x003f }
        r1 = r2.remove(r6);	 Catch:{ all -> 0x003f }
        if (r1 == 0) goto L_0x003d;
    L_0x0036:
        r2 = "SimpleTaskExecutor";
        r4 = "Remove task from waiting queue [%s]";
        com.miui.gallery.search.utils.SearchLog.d(r2, r4, r6);	 Catch:{ all -> 0x003f }
    L_0x003d:
        monitor-exit(r3);	 Catch:{ all -> 0x003f }
        goto L_0x002d;
    L_0x003f:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x003f }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.search.core.context.SimpleTaskExecutor.cancel(com.miui.gallery.threadpool.ThreadPool$Job):void");
    }

    private boolean contains(Job task) {
        Iterator it = this.mRunningQueue.iterator();
        while (it.hasNext()) {
            Future future = (Future) it.next();
            if (!future.isCancelled() && task.equals(future.getJob())) {
                return true;
            }
        }
        if (this.mWaitQueue.contains(task)) {
            return true;
        }
        return false;
    }

    private void submitIfAllowed() {
        while (this.mLimit > 0 && !this.mWaitQueue.isEmpty()) {
            try {
                Job task = (Job) this.mWaitQueue.take();
                this.mLimit--;
                Future future = this.mPool.submit(task, this);
                SearchLog.i("SimpleTaskExecutor", "submit task %s, running %s", task, future);
                this.mRunningQueue.add(future);
            } catch (Throwable e) {
                SearchLog.w("SimpleTaskExecutor", e);
            }
        }
    }

    public void onFutureDone(Future future) {
        synchronized (this.mLock) {
            if (this.mRunningQueue.remove(future)) {
                this.mLimit++;
            }
            submitIfAllowed();
        }
    }
}
