package miui.util.async;

import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class Task<T> {
    private WeakReference<TaskManager> JT;
    private Priority JU;
    private Thread JV;
    private HashSet<Task<?>> JW;
    private final AtomicBoolean JX;
    private volatile Status JY;
    private ArrayList<Listener> bO;

    enum Delivery {
        Prepare,
        Result,
        Progress,
        Finalize
    }

    public interface Listener {
        void onCanceled(TaskManager taskManager, Task<?> task);

        void onException(TaskManager taskManager, Task<?> task, Exception exception);

        void onFinalize(TaskManager taskManager, Task<?> task);

        void onPrepare(TaskManager taskManager, Task<?> task);

        void onProgress(TaskManager taskManager, Task<?> task, int i, int i2);

        Object onResult(TaskManager taskManager, Task<?> task, Object obj);
    }

    public enum Priority {
        Low,
        Normal,
        High,
        RealTime
    }

    public enum Status {
        New,
        Queued,
        Executing,
        Done,
        Canceled
    }

    public abstract T doLoad() throws Exception;

    public Task() {
        this(Priority.Normal);
    }

    public Task(Priority priority) {
        this.JX = new AtomicBoolean(false);
        this.JY = Status.New;
        this.JU = priority;
    }

    final void a(Status status, Object obj) {
        StringBuilder stringBuilder;
        switch (this.JY) {
            case Queued:
                switch (status) {
                    case Canceled:
                        a(Delivery.Result, null);
                        a(Delivery.Finalize, null);
                        break;
                    case Executing:
                        break;
                    default:
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Task ");
                        stringBuilder.append(this);
                        stringBuilder.append(" error status change=> ");
                        stringBuilder.append(status);
                        Log.w("async", stringBuilder.toString());
                        return;
                }
            case Canceled:
            case Done:
                stringBuilder = new StringBuilder();
                stringBuilder.append("Task ");
                stringBuilder.append(this);
                stringBuilder.append(" error status change=> ");
                stringBuilder.append(status);
                Log.w("async", stringBuilder.toString());
                return;
            case Executing:
                int i = AnonymousClass1.JZ[status.ordinal()];
                if (i != 2) {
                    if (i == 4) {
                        a(Delivery.Result, obj);
                        a(Delivery.Finalize, null);
                        break;
                    }
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Task ");
                    stringBuilder.append(this);
                    stringBuilder.append(" error status change=> ");
                    stringBuilder.append(status);
                    Log.w("async", stringBuilder.toString());
                    return;
                }
                a(Delivery.Result, null);
                a(Delivery.Finalize, null);
                break;
            case New:
                switch (status) {
                    case Queued:
                        a(Delivery.Prepare, null);
                        break;
                    case Canceled:
                        a(Delivery.Result, null);
                        a(Delivery.Finalize, null);
                        break;
                    default:
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Task ");
                        stringBuilder.append(this);
                        stringBuilder.append(" error status change=> ");
                        stringBuilder.append(status);
                        Log.w("async", stringBuilder.toString());
                        return;
                }
        }
        this.JY = status;
    }

    public final Status getStatus() {
        return this.JY;
    }

    public final boolean isRunning() {
        return this.JY == Status.Queued || this.JY == Status.Executing;
    }

    private final boolean isCanceled() {
        return this.JY == Status.Canceled;
    }

    final void a(Thread thread) {
        this.JV = thread;
        if (thread != null) {
            switch (this.JU) {
                case Low:
                    thread.setPriority(1);
                    return;
                case Normal:
                    thread.setPriority(5);
                    return;
                case High:
                case RealTime:
                    thread.setPriority(10);
                    return;
                default:
                    return;
            }
        }
    }

    final boolean a(TaskManager taskManager) {
        if (this.JT != null && this.JT.get() != null) {
            return false;
        }
        this.JT = new WeakReference(taskManager);
        return true;
    }

    private void b(TaskManager taskManager) {
        synchronized (this.JX) {
            if (this.JW != null) {
                Iterator it = this.JW.iterator();
                while (it.hasNext()) {
                    taskManager.add((Task) it.next());
                }
            }
            this.JX.set(true);
        }
    }

    /* JADX WARNING: Missing block: B:24:0x0056, code:
            return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean dF() {
        if (this.JY == Status.Executing) {
            return false;
        }
        synchronized (this.JX) {
            if (this.JY == Status.Done && !this.JX.get()) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Task ");
                stringBuilder.append(this);
                stringBuilder.append(" is DONE but successor not done yet");
                Log.e("async", stringBuilder.toString());
                return false;
            } else if (this.JW != null) {
                Iterator it = this.JW.iterator();
                while (it.hasNext()) {
                    if (!((Task) it.next()).dF()) {
                        return false;
                    }
                }
            }
        }
    }

    private void a(Delivery delivery, Object obj) {
        TaskManager taskManager = (TaskManager) this.JT.get();
        if (taskManager != null) {
            taskManager.b(this, delivery, obj);
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Task has delivery ");
        stringBuilder.append(delivery);
        stringBuilder.append(", but has no task manager");
        Log.e("async", stringBuilder.toString());
    }

    final void a(TaskManager taskManager, Delivery delivery, Object obj) {
        switch (delivery) {
            case Prepare:
                e(taskManager);
                return;
            case Finalize:
                d(taskManager);
                return;
            case Result:
                if (obj == null || isCanceled()) {
                    c(taskManager);
                    return;
                } else if (obj instanceof TaskExecutingException) {
                    a(taskManager, (Exception) ((TaskExecutingException) obj).getCause());
                    return;
                } else {
                    try {
                        a(taskManager, obj);
                        b(taskManager);
                        return;
                    } catch (Exception e) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Task ");
                        stringBuilder.append(this);
                        stringBuilder.append(" return result cannot cast to expectation class");
                        Log.e("async", stringBuilder.toString());
                        a(taskManager, e);
                        return;
                    }
                }
            case Progress:
                int[] iArr = (int[]) obj;
                a(taskManager, iArr[0], iArr[1]);
                return;
            default:
                return;
        }
    }

    private void c(TaskManager taskManager) {
        if (this.bO != null) {
            Iterator it = this.bO.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onCanceled(taskManager, this);
            }
        }
        onCanceled(taskManager);
    }

    private void a(TaskManager taskManager, int i, int i2) {
        if (this.bO != null) {
            Iterator it = this.bO.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onProgress(taskManager, this, i, i2);
            }
        }
        onProgress(taskManager, i, i2);
    }

    private void a(TaskManager taskManager, T t) {
        Object onResult;
        if (this.bO != null) {
            Iterator it = this.bO.iterator();
            while (it.hasNext()) {
                onResult = ((Listener) it.next()).onResult(taskManager, this, onResult);
            }
        }
        onResult(taskManager, onResult);
    }

    private void a(TaskManager taskManager, Exception exception) {
        if (this.bO != null) {
            Iterator it = this.bO.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onException(taskManager, this, exception);
            }
        }
        onException(taskManager, exception);
    }

    private void d(TaskManager taskManager) {
        if (this.bO != null) {
            Iterator it = this.bO.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onFinalize(taskManager, this);
            }
        }
        onFinalize(taskManager);
        this.JT.clear();
    }

    private void e(TaskManager taskManager) {
        if (this.bO != null) {
            Iterator it = this.bO.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onPrepare(taskManager, this);
            }
        }
        onPrepare(taskManager);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        String description = getDescription();
        if (description != null) {
            stringBuilder.append('<');
            stringBuilder.append(description);
            stringBuilder.append('>');
        }
        stringBuilder.append(": Status=");
        stringBuilder.append(this.JY);
        stringBuilder.append(", Priority=");
        stringBuilder.append(this.JU);
        return stringBuilder.toString();
    }

    public String getDescription() {
        return null;
    }

    public final void publishProgress(int i, int i2) {
        a(Delivery.Progress, new int[]{i, i2});
    }

    public final Task<T> addListener(Listener listener) {
        if (this.bO == null) {
            this.bO = new ArrayList();
        }
        this.bO.add(listener);
        return this;
    }

    public final Task<T> removeListener(Listener listener) {
        if (this.bO != null) {
            this.bO.remove(listener);
        }
        return this;
    }

    public final void cancel() {
        if (this.JY != Status.Done) {
            if (this.JY == Status.Queued) {
                TaskManager taskManager = (TaskManager) this.JT.get();
                if (taskManager != null) {
                    taskManager.a(this);
                }
            }
            a(Status.Canceled, null);
        }
    }

    public final void depends(Task<T> task) {
        synchronized (this.JX) {
            if (this.JX.get()) {
                if (task.JW == null) {
                    task.JW = new HashSet();
                }
                task.JW.add(this);
            } else {
                TaskManager taskManager = (TaskManager) this.JT.get();
                if (taskManager != null) {
                    taskManager.add(this);
                } else {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Task ");
                    stringBuilder.append(this);
                    stringBuilder.append(" is done but has no task manager to execute task ");
                    stringBuilder.append(task);
                    Log.e("async", stringBuilder.toString());
                }
            }
        }
    }

    public final Priority getPriority() {
        return this.JU;
    }

    public final Task<T> setPriority(Priority priority) {
        if (this.JU != priority) {
            if (this.JY == Status.Queued) {
                TaskManager taskManager = (TaskManager) this.JT.get();
                if (taskManager != null && taskManager.a(this)) {
                    this.JU = priority;
                    this.JY = Status.New;
                    taskManager.add(this);
                }
            }
            if (this.JY == Status.Executing) {
                a(this.JV);
            }
            this.JU = priority;
        }
        return this;
    }

    public final boolean restart() {
        if (!dF()) {
            return false;
        }
        if (this.JY == Status.Queued) {
            TaskManager taskManager = (TaskManager) this.JT.get();
            if (taskManager == null || !taskManager.a(this)) {
                return false;
            }
        }
        if (this.JY == Status.Executing) {
            return false;
        }
        synchronized (this.JX) {
            if (this.JW != null) {
                Iterator it = this.JW.iterator();
                while (it.hasNext()) {
                    ((Task) it.next()).restart();
                }
            }
            this.JX.set(true);
        }
        this.JY = Status.New;
        return true;
    }

    public void onPrepare(TaskManager taskManager) {
    }

    public void onCanceled(TaskManager taskManager) {
    }

    public void onResult(TaskManager taskManager, T t) {
    }

    public void onException(TaskManager taskManager, Exception exception) {
    }

    public void onProgress(TaskManager taskManager, int i, int i2) {
    }

    public void onFinalize(TaskManager taskManager) {
    }
}
