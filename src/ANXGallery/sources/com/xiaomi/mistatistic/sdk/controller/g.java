package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.e.a;
import java.util.UUID;

/* compiled from: DeviceIdHolder */
public class g {
    private static final Object a = new Object();
    private static final Object b = new Object();
    private static final Object c = new Object();
    private static volatile String d = null;
    private static volatile String e = null;
    private static volatile String f = null;
    private static String g = null;

    public static String a() {
        if (!TextUtils.isEmpty(d)) {
            return d;
        }
        e.a().a(new a() {
            public void execute() {
                g.e(d.a());
            }
        });
        return null;
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(d)) {
            return e(context);
        }
        return d;
    }

    private static String e(Context context) {
        synchronized (a) {
            if (TextUtils.isEmpty(d)) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    Object a = m.a(applicationContext, "device_id", "");
                    if (TextUtils.isEmpty(a)) {
                        if (BuildSetting.isInternationalBuild() || t.c()) {
                            a = b(context);
                            if (TextUtils.isEmpty(a)) {
                                d = c(context);
                            } else {
                                d = a;
                            }
                        } else {
                            String c = t.c(applicationContext);
                            d = t.c(f(context) + c + t.a());
                        }
                        m.b(applicationContext, "device_id", d);
                    } else {
                        d = a;
                    }
                } catch (Throwable e) {
                    j.a("DIH", "getDeviceId exception", e);
                }
            }
        }
        return d;
    }

    @TargetApi(9)
    private static String f(Context context) {
        if (TextUtils.isEmpty(f)) {
            synchronized (c) {
                if (TextUtils.isEmpty(f)) {
                    try {
                        if (TextUtils.isEmpty(f)) {
                            if (context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0) {
                                f = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
                            } else {
                                j.d("DIH", "cannot get READ_PHONE_STATE permission");
                            }
                        }
                    } catch (Throwable e) {
                        j.a("DIH", "getImei exception:", e);
                    }
                }
            }
        }
        if (TextUtils.isEmpty(f)) {
            j.c("DIH", "Imei is empty");
        }
        return f;
    }

    public static String b(Context context) {
        Object a = m.a(context, "imei_md5", "");
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String f = f(context);
        if (TextUtils.isEmpty(f)) {
            return "";
        }
        f = t.b(f);
        if (TextUtils.isEmpty(f)) {
            return f;
        }
        m.b(context, "imei_md5", f);
        return f;
    }

    public static String b() {
        if (TextUtils.isEmpty(e)) {
            synchronized (b) {
                try {
                    String b = t.b(c());
                    if (b != null && b.length() > 0) {
                        e = b;
                    }
                } catch (Throwable e) {
                    j.a("DIH", "getDeviceIdTv exception", e);
                }
            }
        }
        return e;
    }

    private static String c() {
        Throwable e;
        Object obj = 1;
        String a;
        try {
            if (!TextUtils.equals("tv", t.e())) {
                String str = Build.PRODUCT;
                if (!("augustrush".equals(str) || "casablanca".equals(str))) {
                    obj = null;
                }
            }
            if (obj != null) {
                a = a("/sys/class/net/eth0/address");
            } else {
                a = t.f("ro.boot.btmac");
            }
            if (a == null) {
                return a;
            }
            try {
                if (a.length() > 0) {
                    return a.trim();
                }
                return a;
            } catch (Exception e2) {
                e = e2;
                j.a("DIH", "getDeviceMacTv exception", e);
                return a;
            }
        } catch (Throwable e3) {
            Throwable th = e3;
            a = null;
            e = th;
            j.a("DIH", "getDeviceMacTv exception", e);
            return a;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0061 A:{SYNTHETIC, Splitter: B:21:0x0061} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0072 A:{SYNTHETIC, Splitter: B:28:0x0072} */
    private static java.lang.String a(java.lang.String r6) {
        /*
        r3 = 0;
        r1 = "";
        r2 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0053, all -> 0x006e }
        r0 = new java.io.InputStreamReader;	 Catch:{ Exception -> 0x0053, all -> 0x006e }
        r4 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0053, all -> 0x006e }
        r4.<init>(r6);	 Catch:{ Exception -> 0x0053, all -> 0x006e }
        r0.<init>(r4);	 Catch:{ Exception -> 0x0053, all -> 0x006e }
        r4 = 512; // 0x200 float:7.175E-43 double:2.53E-321;
        r2.<init>(r0, r4);	 Catch:{ Exception -> 0x0053, all -> 0x006e }
        r0 = r2.readLine();	 Catch:{ Exception -> 0x0081 }
        if (r0 == 0) goto L_0x0086;
    L_0x001a:
        r3 = r1.length();	 Catch:{ Exception -> 0x0081 }
        if (r3 <= 0) goto L_0x0033;
    L_0x0020:
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0081 }
        r3.<init>();	 Catch:{ Exception -> 0x0081 }
        r3 = r3.append(r1);	 Catch:{ Exception -> 0x0081 }
        r4 = "\n";
        r3 = r3.append(r4);	 Catch:{ Exception -> 0x0081 }
        r1 = r3.toString();	 Catch:{ Exception -> 0x0081 }
    L_0x0033:
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0081 }
        r3.<init>();	 Catch:{ Exception -> 0x0081 }
        r3 = r3.append(r1);	 Catch:{ Exception -> 0x0081 }
        r0 = r3.append(r0);	 Catch:{ Exception -> 0x0081 }
        r0 = r0.toString();	 Catch:{ Exception -> 0x0081 }
    L_0x0044:
        if (r2 == 0) goto L_0x0049;
    L_0x0046:
        r2.close();	 Catch:{ Exception -> 0x004a }
    L_0x0049:
        return r0;
    L_0x004a:
        r1 = move-exception;
        r2 = "DIH";
        r3 = "catEntry finally exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r1);
        goto L_0x0049;
    L_0x0053:
        r0 = move-exception;
        r2 = r3;
        r5 = r1;
        r1 = r0;
        r0 = r5;
    L_0x0058:
        r3 = "DIH";
        r4 = "catEntry exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r3, r4, r1);	 Catch:{ all -> 0x007f }
        if (r2 == 0) goto L_0x0049;
    L_0x0061:
        r2.close();	 Catch:{ Exception -> 0x0065 }
        goto L_0x0049;
    L_0x0065:
        r1 = move-exception;
        r2 = "DIH";
        r3 = "catEntry finally exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r1);
        goto L_0x0049;
    L_0x006e:
        r0 = move-exception;
        r2 = r3;
    L_0x0070:
        if (r2 == 0) goto L_0x0075;
    L_0x0072:
        r2.close();	 Catch:{ Exception -> 0x0076 }
    L_0x0075:
        throw r0;
    L_0x0076:
        r1 = move-exception;
        r2 = "DIH";
        r3 = "catEntry finally exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r1);
        goto L_0x0075;
    L_0x007f:
        r0 = move-exception;
        goto L_0x0070;
    L_0x0081:
        r0 = move-exception;
        r5 = r0;
        r0 = r1;
        r1 = r5;
        goto L_0x0058;
    L_0x0086:
        r0 = r1;
        goto L_0x0044;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.g.a(java.lang.String):java.lang.String");
    }

    public static synchronized String c(Context context) {
        String str;
        synchronized (g.class) {
            if (TextUtils.isEmpty(g)) {
                long currentTimeMillis = System.currentTimeMillis();
                Object a = m.a(context, "anonymous_id", "");
                long a2 = m.a(context, "aigt", 0);
                long a3 = m.a(context, "anonymous_ei", 7776000000L);
                if (TextUtils.isEmpty(a) || currentTimeMillis - a2 >= a3) {
                    g = UUID.randomUUID().toString();
                    m.b(context, "anonymous_id", g);
                } else {
                    g = a;
                }
                m.b(context, "aigt", currentTimeMillis);
                str = g;
            } else {
                str = g;
            }
        }
        return str;
    }
}
