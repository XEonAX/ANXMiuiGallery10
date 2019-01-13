package miui.util.async;

class TaskThread$1 extends Thread {
    final /* synthetic */ TaskManager KU;
    final /* synthetic */ Task KV;

    TaskThread$1(TaskManager taskManager, Task task) {
        this.KU = taskManager;
        this.KV = task;
    }

    public void run() {
        b.a(this.KU, this, this.KV);
    }
}
