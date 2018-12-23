package com.miui.gallery.search.core.context;

import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.Job;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class PriorityTaskExecutor<E extends PriorityTask> implements TaskExecutor<E>, FutureListener<Void> {
    private int mLimit;
    private final Object mLock = new Object();
    private final ThreadPool mPool;
    private LinkedList<Future<Void>> mRunningQueue = new LinkedList();
    private final PriorityQueue<E> mWaitQueue = new PriorityQueue();

    public static abstract class PriorityTask implements Job<Void>, Comparable<PriorityTask> {
        private final long mNewTime = System.currentTimeMillis();
        protected int mPriority;

        public int getPriority() {
            return this.mPriority;
        }

        public long getNewTime() {
            return this.mNewTime;
        }

        public int compareTo(PriorityTask another) {
            if (another == null) {
                return -1;
            }
            if (this == another) {
                return 0;
            }
            int priority = this.mPriority - another.getPriority();
            return priority == 0 ? Long.valueOf(another.getNewTime()).compareTo(Long.valueOf(this.mNewTime)) : priority;
        }
    }

    public PriorityTaskExecutor(int threadSize) {
        this.mPool = new ThreadPool(threadSize, threadSize);
        this.mLimit = threadSize;
    }

    protected boolean isSameTask(Job task1, Job task2) {
        return task1.equals(task2);
    }

    public void submit(E task) {
        if (task != null) {
            synchronized (this.mLock) {
                if (contains(task)) {
                    SearchLog.i("PriorityTaskExecutor", "contains task %s, priority: %d", task, Integer.valueOf(task.getPriority()));
                    return;
                }
                this.mWaitQueue.offer(task);
                submitIfAllowed();
            }
        }
    }

    private boolean contains(E task) {
        Iterator it = this.mRunningQueue.iterator();
        while (it.hasNext()) {
            Future future = (Future) it.next();
            if (!future.isCancelled() && task.equals((PriorityTask) future.getJob())) {
                return true;
            }
        }
        return this.mWaitQueue.contains(task);
    }

    private void submitIfAllowed() {
        if (this.mPool.isShutdown()) {
            cancelAll();
            return;
        }
        while (this.mLimit > 0 && !this.mWaitQueue.isEmpty()) {
            PriorityTask task = (PriorityTask) this.mWaitQueue.poll();
            this.mLimit--;
            this.mRunningQueue.add(this.mPool.submit(task, this));
        }
    }

    public void onFutureDone(Future<Void> future) {
        synchronized (this.mLock) {
            if (future != null) {
                if (future.getCancelType() == 1) {
                    PriorityTask job = (PriorityTask) future.getJob();
                    if (job != null) {
                        SearchLog.i("PriorityTaskExecutor", "CANCEL_INTERRUPT %d", Integer.valueOf(job.getPriority()));
                        this.mWaitQueue.offer(job);
                    }
                }
            }
            this.mRunningQueue.remove(future);
            this.mLimit++;
            submitIfAllowed();
        }
    }

    /* JADX WARNING: Missing block: B:20:?, code:
            return;
     */
    public void cancel(E r6) {
        /*
        r5 = this;
        r3 = r5.mLock;
        monitor-enter(r3);
        r2 = r5.mRunningQueue;	 Catch:{ all -> 0x003c }
        r2 = r2.iterator();	 Catch:{ all -> 0x003c }
    L_0x0009:
        r4 = r2.hasNext();	 Catch:{ all -> 0x003c }
        if (r4 == 0) goto L_0x002b;
    L_0x000f:
        r0 = r2.next();	 Catch:{ all -> 0x003c }
        r0 = (com.miui.gallery.threadpool.Future) r0;	 Catch:{ all -> 0x003c }
        r4 = r0.getJob();	 Catch:{ all -> 0x003c }
        r4 = r5.isSameTask(r4, r6);	 Catch:{ all -> 0x003c }
        if (r4 == 0) goto L_0x0009;
    L_0x001f:
        r2 = "PriorityTaskExecutor";
        r4 = "Cancel running task [%s]";
        com.miui.gallery.search.utils.SearchLog.d(r2, r4, r6);	 Catch:{ all -> 0x003c }
        r0.cancel();	 Catch:{ all -> 0x003c }
        monitor-exit(r3);	 Catch:{ all -> 0x003c }
    L_0x002a:
        return;
    L_0x002b:
        r2 = r5.mWaitQueue;	 Catch:{ all -> 0x003c }
        r1 = r2.remove(r6);	 Catch:{ all -> 0x003c }
        if (r1 == 0) goto L_0x003a;
    L_0x0033:
        r2 = "PriorityTaskExecutor";
        r4 = "Remove task from waiting queue [%s]";
        com.miui.gallery.search.utils.SearchLog.d(r2, r4, r6);	 Catch:{ all -> 0x003c }
    L_0x003a:
        monitor-exit(r3);	 Catch:{ all -> 0x003c }
        goto L_0x002a;
    L_0x003c:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x003c }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.search.core.context.PriorityTaskExecutor.cancel(com.miui.gallery.search.core.context.PriorityTaskExecutor$PriorityTask):void");
    }

    public void cancelAll() {
        synchronized (this.mLock) {
            this.mWaitQueue.clear();
            Iterator it = this.mRunningQueue.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel();
            }
        }
    }
}
