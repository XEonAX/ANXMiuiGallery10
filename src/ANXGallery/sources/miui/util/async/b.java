package miui.util.async;

import miui.util.async.Task.Status;
import miui.util.cache.Cache;

class b extends Thread {
    private volatile boolean KA = false;
    private final a KC;
    private final TaskManager Kk;

    public b(TaskManager taskManager, a aVar, int i) {
        this.Kk = taskManager;
        this.KC = aVar;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("TaskThread-");
        stringBuilder.append(i);
        setName(stringBuilder.toString());
    }

    public static void a(TaskManager taskManager, Task<?> task) {
        Thread taskThread$1 = new TaskThread$1(taskManager, task);
        taskThread$1.setName("TaskThread-RealTime");
        taskThread$1.start();
    }

    public void shutdown() {
        this.KA = true;
        interrupt();
    }

    public void run() {
        a aVar = this.KC;
        while (!this.KA) {
            Task dM = aVar.get();
            if (dM != null) {
                a(this.Kk, this, dM);
                setPriority(5);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0046  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(TaskManager taskManager, Thread thread, Task<?> task) {
        Exception e;
        Cacheable cacheable;
        if (taskManager != null && task != null) {
            Object doLoad;
            Cache dJ;
            task.a(Status.Executing, null);
            task.a(thread);
            try {
                doLoad = task.doLoad();
                try {
                    task.a(Status.Done, doLoad == null ? new NullPointerException("result is null") : doLoad);
                } catch (Exception e2) {
                    e = e2;
                    task.a(Status.Done, new TaskExecutingException(e));
                    dJ = taskManager.dJ();
                    cacheable = (Cacheable) task;
                    if (cacheable.getCacheKey() != null) {
                    }
                    task.a(null);
                }
            } catch (Exception e3) {
                e = e3;
                doLoad = null;
                task.a(Status.Done, new TaskExecutingException(e));
                dJ = taskManager.dJ();
                cacheable = (Cacheable) task;
                if (cacheable.getCacheKey() != null) {
                }
                task.a(null);
            }
            dJ = taskManager.dJ();
            if (!(dJ == null || doLoad == null || !(task instanceof Cacheable))) {
                cacheable = (Cacheable) task;
                if (cacheable.getCacheKey() != null) {
                    dJ.put(cacheable.getCacheKey(), doLoad, cacheable.sizeOf(doLoad));
                }
            }
            task.a(null);
        }
    }
}
