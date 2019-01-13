package miui.util.async;

import android.util.Log;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import miui.util.async.Task.Status;
import miui.util.concurrent.ConcurrentRingQueue;
import miui.util.concurrent.Queue;
import miui.util.concurrent.Queue.Predicate;

class a implements Queue<Task<?>> {
    private final Queue<Task<?>> KL;
    private final Queue<Task<?>> KO;
    private final Queue<Task<?>> KQ;
    private final Semaphore KS = new Semaphore(0, true);
    private final AtomicBoolean KT = new AtomicBoolean(false);
    private final TaskManager Kk;

    public a(TaskManager taskManager, int i) {
        this.Kk = taskManager;
        this.KL = new ConcurrentRingQueue(i, true, true);
        this.KO = new ConcurrentRingQueue(i, true, true);
        this.KQ = new ConcurrentRingQueue(i, true, true);
    }

    /* renamed from: b */
    public boolean put(Task<?> task) {
        boolean put;
        switch (task.getPriority()) {
            case Low:
                put = this.KQ.put(task);
                break;
            case Normal:
                put = this.KO.put(task);
                break;
            case High:
                put = this.KL.put(task);
                break;
            case RealTime:
                Log.e("async", "Realtime task must NOT be put in Queue");
                break;
        }
        put = false;
        if (put) {
            task.a(Status.Queued, null);
            this.KS.release();
        }
        return put;
    }

    private Task<?> dL() {
        Task<?> task = (Task) this.KL.get();
        if (task == null) {
            task = (Task) this.KO.get();
        }
        if (task == null) {
            return (Task) this.KQ.get();
        }
        return task;
    }

    /* renamed from: dM */
    public Task<?> get() {
        Task<?> task;
        if (!this.Kk.isShutdown()) {
            loop0:
            while (true) {
                task = null;
                while (task == null) {
                    try {
                        this.KS.acquire();
                        if (this.KT.get()) {
                            synchronized (this.KT) {
                                while (this.KT.get()) {
                                    try {
                                        this.KT.wait();
                                    } catch (InterruptedException e) {
                                        this.KS.release();
                                        return null;
                                    }
                                }
                            }
                        }
                        task = dL();
                        if (task.getStatus() == Status.Canceled) {
                        }
                    } catch (InterruptedException e2) {
                        return null;
                    }
                }
                break loop0;
            }
        }
        task = null;
        while (this.KS.tryAcquire()) {
            task = dL();
            if (task.getStatus() != Status.Canceled) {
                break;
            }
        }
        return task;
    }

    /* renamed from: a */
    public boolean remove(Task<?> task) {
        if (!this.KS.tryAcquire()) {
            return false;
        }
        boolean remove = this.KL.remove((Object) task);
        if (!remove) {
            remove = this.KO.remove((Object) task);
        }
        if (!remove) {
            remove = this.KQ.remove((Object) task);
        }
        if (remove) {
            return remove;
        }
        this.KS.release();
        return remove;
    }

    public int remove(Predicate<Task<?>> predicate) {
        throw new RuntimeException("no support for this method");
    }

    public int clear() {
        int i = 0;
        while (this.KS.tryAcquire()) {
            if (dL().getStatus() != Status.Canceled) {
                i++;
            }
        }
        return i;
    }

    public boolean isEmpty() {
        return this.KS.availablePermits() == 0;
    }

    public int getCapacity() {
        return -1;
    }

    public void pause() {
        synchronized (this.KT) {
            this.KT.set(true);
        }
    }

    public void resume() {
        synchronized (this.KT) {
            this.KT.set(false);
            this.KT.notifyAll();
        }
    }
}
