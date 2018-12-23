package com.xiaomi.push.service;

import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.concurrent.RejectedExecutionException;

public class JobScheduler {
    private static long currentTime;
    private static long lastTime = currentTime;
    private static long timerId;
    private final FinalizerHelper finalizer;
    private final SchedulerImpl impl;

    public static abstract class Job implements Runnable {
        protected int type;

        public Job(int type) {
            this.type = type;
        }
    }

    private static final class FinalizerHelper {
        private final SchedulerImpl impl;

        FinalizerHelper(SchedulerImpl impl) {
            this.impl = impl;
        }

        protected void finalize() throws Throwable {
            try {
                synchronized (this.impl) {
                    this.impl.finished = true;
                    this.impl.notify();
                }
                super.finalize();
            } catch (Throwable th) {
                super.finalize();
            }
        }
    }

    private static final class SchedulerImpl extends Thread {
        private boolean cancelled;
        private long current_sleep_duration = 50;
        private volatile boolean executing = false;
        private boolean finished;
        private volatile long lastJob = 0;
        private TimerHeap tasks = new TimerHeap();

        private static final class TimerHeap {
            private int DEFAULT_HEAP_SIZE;
            private int deletedCancelledNumber;
            private int size;
            private TaskWraper[] timers;

            private TimerHeap() {
                this.DEFAULT_HEAP_SIZE = 256;
                this.timers = new TaskWraper[this.DEFAULT_HEAP_SIZE];
                this.size = 0;
                this.deletedCancelledNumber = 0;
            }

            public TaskWraper minimum() {
                return this.timers[0];
            }

            public boolean isEmpty() {
                return this.size == 0;
            }

            public void insert(TaskWraper task) {
                if (this.timers.length == this.size) {
                    TaskWraper[] appendedTimers = new TaskWraper[(this.size * 2)];
                    System.arraycopy(this.timers, 0, appendedTimers, 0, this.size);
                    this.timers = appendedTimers;
                }
                TaskWraper[] taskWraperArr = this.timers;
                int i = this.size;
                this.size = i + 1;
                taskWraperArr[i] = task;
                upHeap();
            }

            public boolean hasJob(int type) {
                for (int i = 0; i < this.size; i++) {
                    if (this.timers[i].type == type) {
                        return true;
                    }
                }
                return false;
            }

            public void removeJobs(int type) {
                for (int i = 0; i < this.size; i++) {
                    if (this.timers[i].type == type) {
                        this.timers[i].cancel();
                    }
                }
                deleteIfCancelled();
            }

            public void removeJobs(int type, Job job) {
                for (int i = 0; i < this.size; i++) {
                    if (this.timers[i].job == job) {
                        this.timers[i].cancel();
                    }
                }
                deleteIfCancelled();
            }

            public void delete(int pos) {
                if (pos >= 0 && pos < this.size) {
                    TaskWraper[] taskWraperArr = this.timers;
                    TaskWraper[] taskWraperArr2 = this.timers;
                    int i = this.size - 1;
                    this.size = i;
                    taskWraperArr[pos] = taskWraperArr2[i];
                    this.timers[this.size] = null;
                    downHeap(pos);
                }
            }

            private void upHeap() {
                int current = this.size - 1;
                while (true) {
                    int parent = (current - 1) / 2;
                    if (this.timers[current].when < this.timers[parent].when) {
                        TaskWraper tmp = this.timers[current];
                        this.timers[current] = this.timers[parent];
                        this.timers[parent] = tmp;
                        current = parent;
                    } else {
                        return;
                    }
                }
            }

            private void downHeap(int pos) {
                int current = pos;
                while (true) {
                    int child = (current * 2) + 1;
                    if (child < this.size && this.size > 0) {
                        if (child + 1 < this.size && this.timers[child + 1].when < this.timers[child].when) {
                            child++;
                        }
                        if (this.timers[current].when >= this.timers[child].when) {
                            TaskWraper tmp = this.timers[current];
                            this.timers[current] = this.timers[child];
                            this.timers[child] = tmp;
                            current = child;
                        } else {
                            return;
                        }
                    }
                    return;
                }
            }

            public void reset() {
                this.timers = new TaskWraper[this.DEFAULT_HEAP_SIZE];
                this.size = 0;
            }

            public void deleteIfCancelled() {
                int i = 0;
                while (i < this.size) {
                    if (this.timers[i].cancelled) {
                        this.deletedCancelledNumber++;
                        delete(i);
                        i--;
                    }
                    i++;
                }
            }

            private int getTask(TaskWraper task) {
                for (int i = 0; i < this.timers.length; i++) {
                    if (this.timers[i] == task) {
                        return i;
                    }
                }
                return -1;
            }
        }

        SchedulerImpl(String name, boolean isDaemon) {
            setName(name);
            setDaemon(isDaemon);
            start();
        }

        /* JADX WARNING: Missing block: B:71:?, code:
            r14.lastJob = android.os.SystemClock.uptimeMillis();
            r14.executing = true;
            r3.job.run();
            r14.executing = false;
     */
        /* JADX WARNING: Missing block: B:73:0x00b7, code:
            if (true != false) goto L_0x0000;
     */
        /* JADX WARNING: Missing block: B:74:0x00b9, code:
            monitor-enter(r14);
     */
        /* JADX WARNING: Missing block: B:77:?, code:
            r14.cancelled = true;
     */
        /* JADX WARNING: Missing block: B:78:0x00bd, code:
            monitor-exit(r14);
     */
        /* JADX WARNING: Missing block: B:89:0x00c7, code:
            if (false == false) goto L_0x00c9;
     */
        /* JADX WARNING: Missing block: B:90:0x00c9, code:
            monitor-enter(r14);
     */
        /* JADX WARNING: Missing block: B:93:?, code:
            r14.cancelled = true;
     */
        /* JADX WARNING: Missing block: B:114:0x0000, code:
            continue;
     */
        public void run() {
            /*
            r14 = this;
        L_0x0000:
            monitor-enter(r14);
            r5 = r14.cancelled;	 Catch:{ all -> 0x0015 }
            if (r5 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
        L_0x0006:
            return;
        L_0x0007:
            r5 = r14.tasks;	 Catch:{ all -> 0x0015 }
            r5 = r5.isEmpty();	 Catch:{ all -> 0x0015 }
            if (r5 == 0) goto L_0x001d;
        L_0x000f:
            r5 = r14.finished;	 Catch:{ all -> 0x0015 }
            if (r5 == 0) goto L_0x0018;
        L_0x0013:
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
            goto L_0x0006;
        L_0x0015:
            r5 = move-exception;
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
            throw r5;
        L_0x0018:
            r14.wait();	 Catch:{ InterruptedException -> 0x00cf }
        L_0x001b:
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
            goto L_0x0000;
        L_0x001d:
            r0 = com.xiaomi.push.service.JobScheduler.getCurrentTime();	 Catch:{ all -> 0x0015 }
            r5 = r14.tasks;	 Catch:{ all -> 0x0015 }
            r3 = r5.minimum();	 Catch:{ all -> 0x0015 }
            r8 = r3.lock;	 Catch:{ all -> 0x0015 }
            monitor-enter(r8);	 Catch:{ all -> 0x0015 }
            r5 = r3.cancelled;	 Catch:{ all -> 0x0062 }
            if (r5 == 0) goto L_0x0037;
        L_0x002e:
            r5 = r14.tasks;	 Catch:{ all -> 0x0062 }
            r9 = 0;
            r5.delete(r9);	 Catch:{ all -> 0x0062 }
            monitor-exit(r8);	 Catch:{ all -> 0x0062 }
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
            goto L_0x0000;
        L_0x0037:
            r10 = r3.when;	 Catch:{ all -> 0x0062 }
            r6 = r10 - r0;
            monitor-exit(r8);	 Catch:{ all -> 0x0062 }
            r8 = 0;
            r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
            if (r5 <= 0) goto L_0x0065;
        L_0x0042:
            r8 = r14.current_sleep_duration;	 Catch:{ all -> 0x0015 }
            r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
            if (r5 <= 0) goto L_0x004a;
        L_0x0048:
            r6 = r14.current_sleep_duration;	 Catch:{ all -> 0x0015 }
        L_0x004a:
            r8 = r14.current_sleep_duration;	 Catch:{ all -> 0x0015 }
            r10 = 50;
            r8 = r8 + r10;
            r14.current_sleep_duration = r8;	 Catch:{ all -> 0x0015 }
            r8 = r14.current_sleep_duration;	 Catch:{ all -> 0x0015 }
            r10 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
            r5 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
            if (r5 <= 0) goto L_0x005d;
        L_0x0059:
            r8 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
            r14.current_sleep_duration = r8;	 Catch:{ all -> 0x0015 }
        L_0x005d:
            r14.wait(r6);	 Catch:{ InterruptedException -> 0x00d2 }
        L_0x0060:
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
            goto L_0x0000;
        L_0x0062:
            r5 = move-exception;
            monitor-exit(r8);	 Catch:{ all -> 0x0062 }
            throw r5;	 Catch:{ all -> 0x0015 }
        L_0x0065:
            r8 = 50;
            r14.current_sleep_duration = r8;	 Catch:{ all -> 0x0015 }
            r8 = r3.lock;	 Catch:{ all -> 0x0015 }
            monitor-enter(r8);	 Catch:{ all -> 0x0015 }
            r2 = 0;
            r5 = r14.tasks;	 Catch:{ all -> 0x00c3 }
            r5 = r5.minimum();	 Catch:{ all -> 0x00c3 }
            r10 = r5.when;	 Catch:{ all -> 0x00c3 }
            r12 = r3.when;	 Catch:{ all -> 0x00c3 }
            r5 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
            if (r5 == 0) goto L_0x0081;
        L_0x007b:
            r5 = r14.tasks;	 Catch:{ all -> 0x00c3 }
            r2 = r5.getTask(r3);	 Catch:{ all -> 0x00c3 }
        L_0x0081:
            r5 = r3.cancelled;	 Catch:{ all -> 0x00c3 }
            if (r5 == 0) goto L_0x0094;
        L_0x0085:
            r5 = r14.tasks;	 Catch:{ all -> 0x00c3 }
            r9 = r14.tasks;	 Catch:{ all -> 0x00c3 }
            r9 = r9.getTask(r3);	 Catch:{ all -> 0x00c3 }
            r5.delete(r9);	 Catch:{ all -> 0x00c3 }
            monitor-exit(r8);	 Catch:{ all -> 0x00c3 }
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
            goto L_0x0000;
        L_0x0094:
            r10 = r3.when;	 Catch:{ all -> 0x00c3 }
            r3.setScheduledTime(r10);	 Catch:{ all -> 0x00c3 }
            r5 = r14.tasks;	 Catch:{ all -> 0x00c3 }
            r5.delete(r2);	 Catch:{ all -> 0x00c3 }
            r10 = 0;
            r3.when = r10;	 Catch:{ all -> 0x00c3 }
            monitor-exit(r8);	 Catch:{ all -> 0x00c3 }
            monitor-exit(r14);	 Catch:{ all -> 0x0015 }
            r4 = 0;
            r8 = android.os.SystemClock.uptimeMillis();	 Catch:{ all -> 0x00c6 }
            r14.lastJob = r8;	 Catch:{ all -> 0x00c6 }
            r5 = 1;
            r14.executing = r5;	 Catch:{ all -> 0x00c6 }
            r5 = r3.job;	 Catch:{ all -> 0x00c6 }
            r5.run();	 Catch:{ all -> 0x00c6 }
            r5 = 0;
            r14.executing = r5;	 Catch:{ all -> 0x00c6 }
            r4 = 1;
            if (r4 != 0) goto L_0x0000;
        L_0x00b9:
            monitor-enter(r14);
            r5 = 1;
            r14.cancelled = r5;	 Catch:{ all -> 0x00c0 }
            monitor-exit(r14);	 Catch:{ all -> 0x00c0 }
            goto L_0x0000;
        L_0x00c0:
            r5 = move-exception;
            monitor-exit(r14);	 Catch:{ all -> 0x00c0 }
            throw r5;
        L_0x00c3:
            r5 = move-exception;
            monitor-exit(r8);	 Catch:{ all -> 0x00c3 }
            throw r5;	 Catch:{ all -> 0x0015 }
        L_0x00c6:
            r5 = move-exception;
            if (r4 != 0) goto L_0x00ce;
        L_0x00c9:
            monitor-enter(r14);
            r8 = 1;
            r14.cancelled = r8;	 Catch:{ all -> 0x00d4 }
            monitor-exit(r14);	 Catch:{ all -> 0x00d4 }
        L_0x00ce:
            throw r5;
        L_0x00cf:
            r5 = move-exception;
            goto L_0x001b;
        L_0x00d2:
            r5 = move-exception;
            goto L_0x0060;
        L_0x00d4:
            r5 = move-exception;
            monitor-exit(r14);	 Catch:{ all -> 0x00d4 }
            throw r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.JobScheduler.SchedulerImpl.run():void");
        }

        private void insertTask(TaskWraper newTask) {
            this.tasks.insert(newTask);
            notify();
        }

        public synchronized void cancel() {
            this.cancelled = true;
            this.tasks.reset();
            notify();
        }

        public boolean isBlocked() {
            return this.executing && SystemClock.uptimeMillis() - this.lastJob > 600000;
        }
    }

    static class TaskWraper {
        boolean cancelled;
        Job job;
        final Object lock = new Object();
        private long scheduledTime;
        int type;
        long when;

        TaskWraper() {
        }

        void setScheduledTime(long time) {
            synchronized (this.lock) {
                this.scheduledTime = time;
            }
        }

        public boolean cancel() {
            boolean willRun = true;
            synchronized (this.lock) {
                if (this.cancelled || this.when <= 0) {
                    willRun = false;
                }
                this.cancelled = true;
            }
            return willRun;
        }
    }

    static {
        long j = 0;
        if (SystemClock.elapsedRealtime() > 0) {
            j = SystemClock.elapsedRealtime();
        }
        currentTime = j;
    }

    static synchronized long getCurrentTime() {
        long j;
        synchronized (JobScheduler.class) {
            long now = SystemClock.elapsedRealtime();
            if (now > lastTime) {
                currentTime += now - lastTime;
            }
            lastTime = now;
            j = currentTime;
        }
        return j;
    }

    private static synchronized long nextId() {
        long j;
        synchronized (JobScheduler.class) {
            j = timerId;
            timerId = 1 + j;
        }
        return j;
    }

    public JobScheduler(String name, boolean isDaemon) {
        if (name == null) {
            throw new NullPointerException("name == null");
        }
        this.impl = new SchedulerImpl(name, isDaemon);
        this.finalizer = new FinalizerHelper(this.impl);
    }

    public JobScheduler(String name) {
        this(name, false);
    }

    public JobScheduler(boolean isDaemon) {
        this("Timer-" + nextId(), isDaemon);
    }

    public JobScheduler() {
        this(false);
    }

    public void quit() {
        this.impl.cancel();
    }

    public boolean hasJob(int type) {
        boolean hasJob;
        synchronized (this.impl) {
            hasJob = this.impl.tasks.hasJob(type);
        }
        return hasJob;
    }

    public void removeJobs(int jobType) {
        synchronized (this.impl) {
            this.impl.tasks.removeJobs(jobType);
        }
    }

    public void removeAllJobs() {
        synchronized (this.impl) {
            this.impl.tasks.reset();
        }
    }

    public void removeJobs(int jobType, Job job) {
        synchronized (this.impl) {
            this.impl.tasks.removeJobs(jobType, job);
        }
    }

    public boolean isBlocked() {
        return this.impl.isBlocked();
    }

    public void executeJobNow(Job job) {
        if (MyLog.getLogLevel() >= 1 || Thread.currentThread() == this.impl) {
            job.run();
        } else {
            MyLog.e("run job outside job job thread");
            throw new RejectedExecutionException("Run job outside job thread");
        }
    }

    public void executeJobDelayed(Job task, long delay) {
        if (delay < 0) {
            throw new IllegalArgumentException("delay < 0: " + delay);
        }
        scheduleImpl(task, delay);
    }

    private void scheduleImpl(Job job, long delay) {
        synchronized (this.impl) {
            if (this.impl.cancelled) {
                throw new IllegalStateException("Timer was canceled");
            }
            long when = delay + getCurrentTime();
            if (when < 0) {
                throw new IllegalArgumentException("Illegal delay to start the TimerTask: " + when);
            }
            TaskWraper task = new TaskWraper();
            task.type = job.type;
            task.job = job;
            task.when = when;
            this.impl.insertTask(task);
        }
    }
}
