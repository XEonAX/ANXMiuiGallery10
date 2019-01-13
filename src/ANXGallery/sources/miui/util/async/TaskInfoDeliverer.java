package miui.util.async;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import miui.util.AppConstants;
import miui.util.C0010Pools;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C0003Pool;
import miui.util.concurrent.ConcurrentRingQueue;
import miui.util.concurrent.Queue.Predicate;

class TaskInfoDeliverer {
    private static final C0003Pool<TaskDeliveryInfo> Kj = C0010Pools.createSimplePool(new C0000Manager<TaskDeliveryInfo>() {
        /* renamed from: dH */
        public TaskDeliveryInfo createInstance() {
            return new TaskDeliveryInfo();
        }

        /* renamed from: a */
        public void onRelease(TaskDeliveryInfo taskDeliveryInfo) {
            taskDeliveryInfo.clear();
        }
    }, 8);
    private TaskManager Kk;
    private DeliverHandler Kl = new DeliverHandler(AppConstants.getCurrentApplication().getMainLooper());
    private ConcurrentRingQueue<TaskDeliveryInfo> Km = new ConcurrentRingQueue(20, true, true);

    private static class DeliverHandler extends Handler {
        static final int Kp = 0;

        public DeliverHandler(Looper looper) {
            super(looper);
        }

        public void b(TaskInfoDeliverer taskInfoDeliverer) {
            obtainMessage(0, taskInfoDeliverer).sendToTarget();
        }

        public void handleMessage(Message message) {
            ((TaskInfoDeliverer) message.obj).dG();
            message.obj = null;
        }
    }

    static class TaskDeliveryInfo {
        public Task<?> Kq;
        public Delivery Kr;
        public Object Ks;

        TaskDeliveryInfo() {
        }

        public void clear() {
            this.Kq = null;
            this.Kr = null;
            this.Ks = null;
        }
    }

    public TaskInfoDeliverer(TaskManager taskManager) {
        this.Kk = taskManager;
    }

    public void setCallbackThread(boolean z) {
        Looper mainLooper = AppConstants.getCurrentApplication().getMainLooper();
        if (z && this.Kl.getLooper() != mainLooper) {
            this.Kl.getLooper().quit();
            this.Kl = new DeliverHandler(mainLooper);
        } else if (!z && this.Kl.getLooper() == mainLooper) {
            Thread anonymousClass2 = new Thread() {
                public void run() {
                    Looper.prepare();
                    TaskInfoDeliverer.this.Kl = new DeliverHandler(Looper.myLooper());
                    Looper.loop();
                }
            };
            anonymousClass2.setName("TaskInfoDeliverer-Callback");
            anonymousClass2.start();
        }
    }

    public void a(final Task<?> task, Delivery delivery, Object obj) {
        TaskDeliveryInfo taskDeliveryInfo = (TaskDeliveryInfo) Kj.acquire();
        taskDeliveryInfo.Kq = task;
        taskDeliveryInfo.Kr = delivery;
        taskDeliveryInfo.Ks = obj;
        if (delivery == Delivery.Result && obj == null) {
            this.Km.remove(new Predicate<TaskDeliveryInfo>() {
                /* renamed from: b */
                public boolean apply(TaskDeliveryInfo taskDeliveryInfo) {
                    return taskDeliveryInfo != null && taskDeliveryInfo.Kq == task;
                }
            });
        }
        this.Km.put(taskDeliveryInfo);
        dG();
    }

    private void dG() {
        if (Looper.myLooper() == this.Kl.getLooper()) {
            while (!this.Km.isEmpty()) {
                TaskDeliveryInfo taskDeliveryInfo = (TaskDeliveryInfo) this.Km.get();
                if (taskDeliveryInfo != null) {
                    taskDeliveryInfo.Kq.a(this.Kk, taskDeliveryInfo.Kr, taskDeliveryInfo.Ks);
                    Kj.release(taskDeliveryInfo);
                }
            }
            return;
        }
        this.Kl.b(this);
    }
}
