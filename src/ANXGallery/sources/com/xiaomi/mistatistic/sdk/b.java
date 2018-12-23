package com.xiaomi.mistatistic.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.g;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.l;
import com.xiaomi.mistatistic.sdk.controller.m;
import com.xiaomi.mistatistic.sdk.controller.r;
import com.xiaomi.mistatistic.sdk.controller.s;
import com.xiaomi.mistatistic.sdk.controller.t;
import java.io.File;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: MIStatsExceptionHandler */
public class b implements UncaughtExceptionHandler {
    private static int a = 1;
    private static boolean b = false;
    private final UncaughtExceptionHandler c;

    /* compiled from: MIStatsExceptionHandler */
    public static class a implements Serializable {
        public Throwable a;
        public String b;
        public String c;
        public String d;
        public String e;

        public a(Throwable th) {
            this.a = th;
            this.b = d.e();
            this.c = d.d();
            this.d = d.f();
            this.e = String.valueOf(System.currentTimeMillis());
        }

        public a() {
            this.a = null;
            this.b = d.e();
            this.c = d.d();
            this.d = d.f();
            this.e = null;
        }
    }

    public static boolean a() {
        return b;
    }

    public static void a(a aVar, boolean z) {
        j.a("MEH", "uploadException, isManually:" + z);
        if (!b) {
            return;
        }
        if (aVar == null || aVar.a == null) {
            j.d("MEH", "the throwable is null.");
        } else if (aVar.a.getStackTrace() == null || aVar.a.getStackTrace().length == 0) {
            j.d("MEH", "There is no useful call stack.");
        } else {
            Context a = d.a();
            if (!BuildSetting.isUploadDebugLogEnable(a)) {
                j.d("MEH", "not allowed to upload debug or exception log");
            } else if (s.a().b(4)) {
                Object obj;
                Writer stringWriter = new StringWriter();
                aVar.a.printStackTrace(new PrintWriter(stringWriter));
                String obj2 = stringWriter.toString();
                final Map treeMap = new TreeMap();
                final String str = BuildSetting.isTestNetworkEnabled() ? "http://test.data.mistat.xiaomi.srv/micrash" : "https://data.mistat.xiaomi.com/micrash";
                t.a(a, str, treeMap);
                treeMap.put("device_uuid", g.a(a));
                treeMap.put("device_os", "Android " + VERSION.SDK_INT);
                treeMap.put("device_model", Build.MODEL);
                treeMap.put("app_version", aVar.b);
                treeMap.put("app_channel", aVar.c);
                treeMap.put("app_start_time", aVar.d);
                treeMap.put("app_crash_time", aVar.e);
                treeMap.put("crash_exception_type", aVar.a.getClass().getName() + ":" + aVar.a.getMessage());
                String str2 = "crash_exception_desc";
                if (aVar.a instanceof OutOfMemoryError) {
                    obj = "OutOfMemoryError";
                } else {
                    String obj3 = obj2;
                }
                treeMap.put(str2, obj3);
                treeMap.put("crash_callstack", obj2);
                if (z) {
                    treeMap.put("manual", "true");
                }
                r.b.execute(new Runnable() {
                    public void run() {
                        try {
                            l.a(str, treeMap, new com.xiaomi.mistatistic.sdk.controller.l.b() {
                                public void a(String str) {
                                    j.a("MEH", "upload exception result: " + str);
                                }
                            });
                        } catch (Throwable e) {
                            j.a("MEH", "Error to upload the exception ", e);
                        }
                    }
                });
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void uncaughtException(Thread thread, Throwable th) {
        j.a("MEH", "uncaughtException...");
        try {
            if (VERSION.SDK_INT >= 9) {
                StrictMode.setThreadPolicy(new Builder().build());
            }
            com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.a();
            if (!d()) {
                a(th);
            } else if (f()) {
                j.a("MEH", "crazy crash...");
            } else {
                a(new a(th), false);
            }
            if (this.c != null) {
                this.c.uncaughtException(thread, th);
            }
        } catch (Throwable e) {
            j.a("MEH", "uncaughtException exception", e);
        }
    }

    private boolean f() {
        Context a = d.a();
        if (System.currentTimeMillis() - m.a(a, "crash_time", 0) > 300000) {
            m.b(a, "crash_count", 1);
            m.b(a, "crash_time", System.currentTimeMillis());
        } else {
            int a2 = m.a(a, "crash_count", 0);
            if (a2 == 0) {
                m.b(a, "crash_time", System.currentTimeMillis());
            }
            a2++;
            m.b(a, "crash_count", a2);
            if (a2 > 10) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0043 A:{SYNTHETIC, Splitter: B:18:0x0043} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0053 A:{SYNTHETIC, Splitter: B:24:0x0053} */
    private static void a(java.lang.Throwable r5) {
        /*
        r3 = 0;
        r0 = b();
        r1 = new com.xiaomi.mistatistic.sdk.b$a;
        r1.<init>(r5);
        r0.add(r1);
        r1 = r0.size();
        r2 = 5;
        if (r1 <= r2) goto L_0x0017;
    L_0x0014:
        r0.remove(r3);
    L_0x0017:
        r2 = 0;
        r1 = com.xiaomi.mistatistic.sdk.controller.d.a();	 Catch:{ IOException -> 0x003a, all -> 0x0050 }
        r3 = ".exceptiondetail";
        r4 = 0;
        r3 = r1.openFileOutput(r3, r4);	 Catch:{ IOException -> 0x003a, all -> 0x0050 }
        r1 = new java.io.ObjectOutputStream;	 Catch:{ IOException -> 0x003a, all -> 0x0050 }
        r1.<init>(r3);	 Catch:{ IOException -> 0x003a, all -> 0x0050 }
        r1.writeObject(r0);	 Catch:{ IOException -> 0x0063 }
        if (r1 == 0) goto L_0x0030;
    L_0x002d:
        r1.close();	 Catch:{ IOException -> 0x0031 }
    L_0x0030:
        return;
    L_0x0031:
        r0 = move-exception;
        r1 = "MEH";
        r2 = "saveException exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r1, r2, r0);
        goto L_0x0030;
    L_0x003a:
        r0 = move-exception;
        r1 = r2;
    L_0x003c:
        r2 = "";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r0);	 Catch:{ all -> 0x0060 }
        if (r1 == 0) goto L_0x0030;
    L_0x0043:
        r1.close();	 Catch:{ IOException -> 0x0047 }
        goto L_0x0030;
    L_0x0047:
        r0 = move-exception;
        r1 = "MEH";
        r2 = "saveException exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r1, r2, r0);
        goto L_0x0030;
    L_0x0050:
        r0 = move-exception;
    L_0x0051:
        if (r2 == 0) goto L_0x0056;
    L_0x0053:
        r2.close();	 Catch:{ IOException -> 0x0057 }
    L_0x0056:
        throw r0;
    L_0x0057:
        r1 = move-exception;
        r2 = "MEH";
        r3 = "saveException exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r1);
        goto L_0x0056;
    L_0x0060:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0051;
    L_0x0063:
        r0 = move-exception;
        goto L_0x003c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.b.a(java.lang.Throwable):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031 A:{SYNTHETIC, Splitter: B:11:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0065 A:{SYNTHETIC, Splitter: B:32:0x0065} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0053 A:{SYNTHETIC, Splitter: B:25:0x0053} */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0038  */
    public static java.util.ArrayList<com.xiaomi.mistatistic.sdk.b.a> b() {
        /*
        r4 = new java.util.ArrayList;
        r4.<init>();
        r2 = 0;
        r3 = 0;
        r0 = com.xiaomi.mistatistic.sdk.controller.d.a();	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        r0 = r0.getFilesDir();	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        if (r0 == 0) goto L_0x007c;
    L_0x0011:
        r5 = new java.io.File;	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        r1 = ".exceptiondetail";
        r5.<init>(r0, r1);	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        r0 = r5.isFile();	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        if (r0 == 0) goto L_0x007c;
    L_0x001e:
        r1 = new java.io.ObjectInputStream;	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        r0 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        r0.<init>(r5);	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        r1.<init>(r0);	 Catch:{ Exception -> 0x0047, all -> 0x0062 }
        r0 = r1.readObject();	 Catch:{ Exception -> 0x0075 }
        r0 = (java.util.ArrayList) r0;	 Catch:{ Exception -> 0x0075 }
        r2 = r1;
    L_0x002f:
        if (r2 == 0) goto L_0x0079;
    L_0x0031:
        r2.close();	 Catch:{ IOException -> 0x003c }
        r1 = r0;
        r0 = r3;
    L_0x0036:
        if (r0 == 0) goto L_0x003b;
    L_0x0038:
        c();
    L_0x003b:
        return r1;
    L_0x003c:
        r1 = move-exception;
        r2 = "MEH";
        r4 = "loadException exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r4, r1);
        r1 = r0;
        r0 = r3;
        goto L_0x0036;
    L_0x0047:
        r0 = move-exception;
        r1 = r2;
    L_0x0049:
        r2 = "MEH";
        r3 = "loadException exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x0072 }
        r0 = 1;
        if (r1 == 0) goto L_0x0077;
    L_0x0053:
        r1.close();	 Catch:{ IOException -> 0x0058 }
        r1 = r4;
        goto L_0x0036;
    L_0x0058:
        r1 = move-exception;
        r2 = "MEH";
        r3 = "loadException exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r1);
        r1 = r4;
        goto L_0x0036;
    L_0x0062:
        r0 = move-exception;
    L_0x0063:
        if (r2 == 0) goto L_0x0068;
    L_0x0065:
        r2.close();	 Catch:{ IOException -> 0x0069 }
    L_0x0068:
        throw r0;
    L_0x0069:
        r1 = move-exception;
        r2 = "MEH";
        r3 = "loadException exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r1);
        goto L_0x0068;
    L_0x0072:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0063;
    L_0x0075:
        r0 = move-exception;
        goto L_0x0049;
    L_0x0077:
        r1 = r4;
        goto L_0x0036;
    L_0x0079:
        r1 = r0;
        r0 = r3;
        goto L_0x0036;
    L_0x007c:
        r0 = r4;
        goto L_0x002f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.b.b():java.util.ArrayList<com.xiaomi.mistatistic.sdk.b$a>");
    }

    public static void c() {
        new File(d.a().getFilesDir(), ".exceptiondetail").delete();
    }

    public static boolean d() {
        return a == 2;
    }

    public static boolean e() {
        return a != 1;
    }
}
