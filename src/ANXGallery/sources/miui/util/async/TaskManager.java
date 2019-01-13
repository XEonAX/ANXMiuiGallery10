package miui.util.async;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import miui.os.Environment;
import miui.util.SoftReferenceSingleton;
import miui.util.async.Task.Priority;
import miui.util.async.Task.Status;
import miui.util.cache.Cache;
import miui.util.cache.LruCache;

public class TaskManager {
    public static final int DEFAULT_CACHE_SIZE = -1;
    static final boolean Kt = true;
    static final boolean Ku = true;
    static final boolean Kv = false;
    static final boolean Kw = false;
    static final boolean Kx = false;
    private static final int Ky = 10;
    private static final int Kz = -1;
    static final String TAG = "async";
    private static final SoftReferenceSingleton<TaskManager> s = new SoftReferenceSingleton<TaskManager>() {
        /* renamed from: dK */
        protected TaskManager createInstance() {
            return new TaskManager();
        }
    };
    private volatile boolean KA;
    private final a KC;
    private Cache<String, Object> KD;
    private TaskInfoDeliverer KF;
    private ArrayList<b> KJ;
    private Object zM;

    public TaskManager() {
        this(10, -1, -1);
    }

    public TaskManager(int i, int i2, int i3) {
        this.zM = new Object() {
            protected void finalize() throws Throwable {
                try {
                    TaskManager.this.shutdown();
                } finally {
                    super.finalize();
                }
            }
        };
        int i4 = 0;
        this.KA = false;
        this.KC = new a(this, i);
        if (i2 < 0) {
            i2 = Environment.getCpuCount();
            if (i2 <= 0) {
                i2 = 4;
            }
        }
        this.KJ = new ArrayList(i2);
        while (i4 < i2) {
            this.KJ.add(new b(this, this.KC, i4));
            ((b) this.KJ.get(i4)).start();
            i4++;
        }
        this.KF = new TaskInfoDeliverer(this);
        this.KD = new LruCache(i3);
    }

    public static TaskManager getDefault() {
        return (TaskManager) s.get();
    }

    public void setMaxCache(int i) {
        this.KD.setMaxSize(i);
    }

    public void setThreadCount(int i) {
        if (this.KA) {
            Log.e(TAG, "Cannot add task into a shut down task manager");
            return;
        }
        if (i < 0) {
            i = Environment.getCpuCount();
            if (i <= 0) {
                i = 4;
            }
        }
        int size = this.KJ.size();
        if (i > size) {
            while (size < i) {
                b bVar = new b(this, this.KC, size);
                bVar.start();
                this.KJ.add(bVar);
                size++;
            }
        } else if (i < size) {
            for (size--; size >= i; size--) {
                ((b) this.KJ.get(size)).shutdown();
                this.KJ.remove(size);
            }
        }
    }

    public void add(Task<?> task) {
        StringBuilder stringBuilder;
        if (this.KA) {
            Log.e(TAG, "Cannot add task into a shut down task manager");
        } else if (task.isRunning()) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Task ");
            stringBuilder2.append(task);
            stringBuilder2.append(" has already added into task manager and not finish yet");
            String stringBuilder3 = stringBuilder2.toString();
            Log.e(TAG, stringBuilder3);
            throw new IllegalArgumentException(stringBuilder3);
        } else if (task.getStatus() != Status.New && !task.restart()) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Status of task ");
            stringBuilder.append(task);
            stringBuilder.append(" is not New, and cannot restart.");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (task.a(this)) {
            if (this.KD != null && (task instanceof Cacheable)) {
                Object obj = this.KD.get(((Cacheable) task).getCacheKey());
                if (obj != null) {
                    task.a(Status.Queued, null);
                    task.a(Status.Executing, null);
                    task.a(Status.Done, obj);
                    return;
                }
            }
            if (task.getPriority() == Priority.RealTime) {
                task.a(Status.Queued, null);
                b.a(this, task);
            } else {
                this.KC.put(task);
            }
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Task ");
            stringBuilder.append(task);
            stringBuilder.append(" has already added into task manager and not finish yet");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public void pause() {
        this.KC.pause();
    }

    public void resume() {
        this.KC.resume();
    }

    public void shutdown() {
        if (this != getDefault() && !this.KA) {
            this.KA = true;
            Iterator it = this.KJ.iterator();
            while (it.hasNext()) {
                ((b) it.next()).shutdown();
            }
            this.KJ.clear();
            this.KD.clear();
            dI();
        }
    }

    private void dI() {
        while (!this.KC.isEmpty()) {
            Task dM = this.KC.get();
            if (dM != null) {
                dM.a(Status.Canceled, null);
            }
        }
    }

    boolean isShutdown() {
        return this.KA;
    }

    public void setCallbackThread(boolean z) {
        this.KF.setCallbackThread(z);
    }

    Cache<String, Object> dJ() {
        return this.KD;
    }

    boolean a(Task<?> task) {
        return this.KC.remove(task);
    }

    void b(Task<?> task, Delivery delivery, Object obj) {
        this.KF.a(task, delivery, obj);
    }
}
