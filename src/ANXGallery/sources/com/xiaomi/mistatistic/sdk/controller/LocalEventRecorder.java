package com.xiaomi.mistatistic.sdk.controller;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.data.AbstractEvent;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import com.xiaomi.mistatistic.sdk.data.f;
import com.xiaomi.mistatistic.sdk.data.g;
import com.xiaomi.xmsf.push.service.b;
import java.util.ArrayList;
import java.util.List;

public class LocalEventRecorder {
    private static volatile b a = null;
    private static volatile boolean b = false;
    private static List<AbstractEvent> c = new ArrayList();
    private static Object d = new Object();
    private static ServiceConnection e = new ServiceConnection() {
        public void onServiceDisconnected(ComponentName componentName) {
            j.a("LER", "IStatService has unexpectedly disconnected");
            LocalEventRecorder.a = null;
            LocalEventRecorder.b = false;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            j.a("LER", "IStatService connected");
            LocalEventRecorder.a = com.xiaomi.xmsf.push.service.b.a.a(iBinder);
            if (LocalEventRecorder.a != null) {
                r.b.execute(new Runnable() {
                    /* JADX WARNING: Removed duplicated region for block: B:27:0x00c7 A:{ExcHandler: android.os.RemoteException (r0_17 'e' java.lang.Throwable), Splitter: B:3:0x0006} */
                    /* JADX WARNING: Failed to process nested try/catch */
                    /* JADX WARNING: Missing block: B:27:0x00c7, code:
            r0 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:29:?, code:
            com.xiaomi.mistatistic.sdk.controller.j.a("dispatch event to IStatService exception", r0);
     */
                    /* JADX WARNING: Missing block: B:31:?, code:
            com.xiaomi.mistatistic.sdk.controller.j.a("LER", "pending eventList size: " + com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.e().size());
            com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.a(com.xiaomi.mistatistic.sdk.controller.d.a());
     */
                    /* JADX WARNING: Missing block: B:33:0x00f6, code:
            com.xiaomi.mistatistic.sdk.controller.j.a("LER", "pending eventList size: " + com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.e().size());
            com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.a(com.xiaomi.mistatistic.sdk.controller.d.a());
     */
                    /* JADX WARNING: Missing block: B:35:0x011e, code:
            r1 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:36:0x011f, code:
            r5 = r1;
            r1 = r0;
            r0 = r5;
     */
                    public void run() {
                        /*
                        r6 = this;
                        r2 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.d;
                        monitor-enter(r2);
                        r1 = 0;
                        r0 = "LER";
                        r3 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r3.<init>();	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r4 = "start insert event to IStatService and eventList size: ";
                        r3 = r3.append(r4);	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r4 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r4 = r4.size();	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r3 = r3.append(r4);	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r3 = r3.toString();	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        com.xiaomi.mistatistic.sdk.controller.j.a(r0, r3);	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r0 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        if (r0 == 0) goto L_0x0066;
                    L_0x002d:
                        r0 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r0 = r0.isEmpty();	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        if (r0 != 0) goto L_0x0066;
                    L_0x0037:
                        r0 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r3 = r0.iterator();	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                    L_0x003f:
                        r0 = r3.hasNext();	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        if (r0 == 0) goto L_0x0066;
                    L_0x0045:
                        r0 = r3.next();	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r0 = (com.xiaomi.mistatistic.sdk.data.AbstractEvent) r0;	 Catch:{ JSONException -> 0x008f, RemoteException -> 0x00c7 }
                        r1 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.a;	 Catch:{ JSONException -> 0x011e, RemoteException -> 0x00c7 }
                        r4 = r0.valueToJSon();	 Catch:{ JSONException -> 0x011e, RemoteException -> 0x00c7 }
                        r4 = r4.toString();	 Catch:{ JSONException -> 0x011e, RemoteException -> 0x00c7 }
                        r1.a(r4);	 Catch:{ JSONException -> 0x011e, RemoteException -> 0x00c7 }
                        r1 = "LER";
                        r4 = "insert a reserved event into IStatService";
                        com.xiaomi.mistatistic.sdk.controller.j.a(r1, r4);	 Catch:{ JSONException -> 0x011e, RemoteException -> 0x00c7 }
                        r3.remove();	 Catch:{ JSONException -> 0x011e, RemoteException -> 0x00c7 }
                        r1 = r0;
                        goto L_0x003f;
                    L_0x0066:
                        r0 = "LER";
                        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c4 }
                        r1.<init>();	 Catch:{ all -> 0x00c4 }
                        r3 = "pending eventList size: ";
                        r1 = r1.append(r3);	 Catch:{ all -> 0x00c4 }
                        r3 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ all -> 0x00c4 }
                        r3 = r3.size();	 Catch:{ all -> 0x00c4 }
                        r1 = r1.append(r3);	 Catch:{ all -> 0x00c4 }
                        r1 = r1.toString();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.j.a(r0, r1);	 Catch:{ all -> 0x00c4 }
                        r0 = com.xiaomi.mistatistic.sdk.controller.d.a();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c(r0);	 Catch:{ all -> 0x00c4 }
                    L_0x008d:
                        monitor-exit(r2);	 Catch:{ all -> 0x00c4 }
                        return;
                    L_0x008f:
                        r0 = move-exception;
                    L_0x0090:
                        r3 = "dispatch event to IStatService exception";
                        com.xiaomi.mistatistic.sdk.controller.j.a(r3, r0);	 Catch:{ all -> 0x00f5 }
                        r0 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ all -> 0x00f5 }
                        r0.remove(r1);	 Catch:{ all -> 0x00f5 }
                        r0 = "LER";
                        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c4 }
                        r1.<init>();	 Catch:{ all -> 0x00c4 }
                        r3 = "pending eventList size: ";
                        r1 = r1.append(r3);	 Catch:{ all -> 0x00c4 }
                        r3 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ all -> 0x00c4 }
                        r3 = r3.size();	 Catch:{ all -> 0x00c4 }
                        r1 = r1.append(r3);	 Catch:{ all -> 0x00c4 }
                        r1 = r1.toString();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.j.a(r0, r1);	 Catch:{ all -> 0x00c4 }
                        r0 = com.xiaomi.mistatistic.sdk.controller.d.a();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c(r0);	 Catch:{ all -> 0x00c4 }
                        goto L_0x008d;
                    L_0x00c4:
                        r0 = move-exception;
                        monitor-exit(r2);	 Catch:{ all -> 0x00c4 }
                        throw r0;
                    L_0x00c7:
                        r0 = move-exception;
                        r1 = "dispatch event to IStatService exception";
                        com.xiaomi.mistatistic.sdk.controller.j.a(r1, r0);	 Catch:{ all -> 0x00f5 }
                        r0 = "LER";
                        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c4 }
                        r1.<init>();	 Catch:{ all -> 0x00c4 }
                        r3 = "pending eventList size: ";
                        r1 = r1.append(r3);	 Catch:{ all -> 0x00c4 }
                        r3 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ all -> 0x00c4 }
                        r3 = r3.size();	 Catch:{ all -> 0x00c4 }
                        r1 = r1.append(r3);	 Catch:{ all -> 0x00c4 }
                        r1 = r1.toString();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.j.a(r0, r1);	 Catch:{ all -> 0x00c4 }
                        r0 = com.xiaomi.mistatistic.sdk.controller.d.a();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c(r0);	 Catch:{ all -> 0x00c4 }
                        goto L_0x008d;
                    L_0x00f5:
                        r0 = move-exception;
                        r1 = "LER";
                        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c4 }
                        r3.<init>();	 Catch:{ all -> 0x00c4 }
                        r4 = "pending eventList size: ";
                        r3 = r3.append(r4);	 Catch:{ all -> 0x00c4 }
                        r4 = com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c;	 Catch:{ all -> 0x00c4 }
                        r4 = r4.size();	 Catch:{ all -> 0x00c4 }
                        r3 = r3.append(r4);	 Catch:{ all -> 0x00c4 }
                        r3 = r3.toString();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.j.a(r1, r3);	 Catch:{ all -> 0x00c4 }
                        r1 = com.xiaomi.mistatistic.sdk.controller.d.a();	 Catch:{ all -> 0x00c4 }
                        com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.c(r1);	 Catch:{ all -> 0x00c4 }
                        throw r0;	 Catch:{ all -> 0x00c4 }
                    L_0x011e:
                        r1 = move-exception;
                        r5 = r1;
                        r1 = r0;
                        r0 = r5;
                        goto L_0x0090;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.4.1.run():void");
                    }
                });
            }
        }
    };

    public static class a implements com.xiaomi.mistatistic.sdk.controller.e.a {
        private AbstractEvent a;

        public a(AbstractEvent abstractEvent) {
            this.a = abstractEvent;
        }

        public void execute() {
            StatEventPojo toPojo = this.a.toPojo();
            h hVar = new h();
            if ((this.a instanceof f) || (this.a instanceof g)) {
                String str = toPojo.mKey;
                String str2 = toPojo.mCategory;
                StatEventPojo a = hVar.a(str2, str);
                if (a == null || !toPojo.mType.equals(a.mType)) {
                    hVar.a(toPojo);
                    n.a("w", toPojo);
                    return;
                }
                hVar.a(str, str2, toPojo.mValue);
                return;
            }
            hVar.a(toPojo);
            n.a("w", toPojo);
        }
    }

    public static void insertEvent(final AbstractEvent abstractEvent) {
        try {
            Context a = d.a();
            if (a == null) {
                j.d("LER", "mistats is not initialized properly.");
                return;
            }
            n.a("c", abstractEvent);
            if (BuildSetting.isCTABuild()) {
                j.d("LER", "disable local event upload for CTA build");
            } else if (CustomSettings.isUseSystemStatService()) {
                j.a("LER", "insert event use SystemStatService.");
                e.a().a(new com.xiaomi.mistatistic.sdk.controller.e.a() {
                    public void execute() {
                        LocalEventRecorder.b(abstractEvent);
                    }
                });
            } else if (BuildSetting.isDisabled(a) && !t.e(abstractEvent.getCategory()) && abstractEvent.getAnonymous() == 0) {
                j.a("LER", "disabled local event upload, event category:" + abstractEvent.getCategory());
            } else {
                e.a().a(new a(abstractEvent));
                s.a().c();
            }
        } catch (Throwable e) {
            j.a("LER", "insertEvent exception", e);
        }
    }

    private static void b(final AbstractEvent abstractEvent) {
        try {
            b(d.a());
            if (a != null) {
                r.b.execute(new Runnable() {
                    public void run() {
                        try {
                            LocalEventRecorder.a.a(abstractEvent.valueToJSon().toString());
                        } catch (Throwable e) {
                            j.a("LER", "dispatch event to IStatService exception", e);
                        } catch (Throwable e2) {
                            j.a("LER", "dispatch event to IStatService exception", e2);
                        }
                    }
                });
                j.b("LER", "StatSystemService is not null, insert a event");
                return;
            }
            j.a("LER", "StatSystemService is null, insert event into eventList");
            synchronized (d) {
                c.add(abstractEvent);
            }
        } catch (Throwable th) {
            j.a("LER", "insertEventUseSystemService exception: ", th);
        }
    }

    private static void b(Context context) throws InterruptedException {
        if (!b) {
            Intent intent = new Intent();
            intent.setClassName("com.xiaomi.xmsf", "com.xiaomi.xmsf.push.service.StatService");
            b = context.bindService(intent, e, 1);
            j.a("LER", "bind StatSystemService: " + b);
        }
    }

    private static void c(final Context context) {
        e.a().a(new com.xiaomi.mistatistic.sdk.controller.e.a() {
            public void execute() {
                try {
                    if (LocalEventRecorder.b) {
                        context.unbindService(LocalEventRecorder.e);
                        LocalEventRecorder.b = false;
                        LocalEventRecorder.a = null;
                        j.a("LER", "unbind StatSystemService");
                    }
                } catch (Throwable e) {
                    j.a("unbindStatSystemService exception", e);
                }
            }
        }, 180000);
    }
}
