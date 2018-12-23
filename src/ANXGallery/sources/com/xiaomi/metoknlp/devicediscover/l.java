package com.xiaomi.metoknlp.devicediscover;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* compiled from: Scanner */
public class l extends Thread {
    private WeakReference T;
    private WeakReference U;
    private final int mWhat;

    public l(Handler handler, Context context, int i) {
        this.T = new WeakReference(handler);
        this.U = new WeakReference(context);
        this.mWhat = i;
        start();
    }

    public static void a(Context context, Handler handler, int i) {
        l lVar = new l(handler, context, i);
    }

    public void run() {
        a(L());
    }

    private void a(HashMap hashMap) {
        Handler handler = getHandler();
        Message obtainMessage = handler.obtainMessage(this.mWhat);
        obtainMessage.obj = hashMap;
        handler.sendMessage(obtainMessage);
    }

    private Handler getHandler() {
        if (this.T == null) {
            return null;
        }
        return (Handler) this.T.get();
    }

    private Context getContext() {
        if (this.T == null) {
            return null;
        }
        return (Context) this.U.get();
    }

    private HashMap L() {
        HashMap hashMap = new HashMap();
        String c = i.c(getContext());
        if (c != null) {
            String substring = c.substring(0, c.lastIndexOf("."));
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(40);
            long dVar;
            try {
                int i;
                Runnable[] runnableArr = new Runnable[255];
                for (i = 1; i < 255; i++) {
                    dVar = new d(this, substring + "." + i);
                    runnableArr[i] = dVar;
                }
                for (i = 1; i < 255; i++) {
                    dVar = runnableArr[i];
                    newFixedThreadPool.execute(dVar);
                }
                try {
                    newFixedThreadPool.awaitTermination(dVar, TimeUnit.MILLISECONDS);
                } catch (Exception e) {
                }
            } catch (Exception e2) {
                try {
                    newFixedThreadPool.awaitTermination(dVar, TimeUnit.MILLISECONDS);
                } catch (Exception e3) {
                }
                a(substring, 1, 255, hashMap);
                return hashMap;
            } finally {
                newFixedThreadPool.shutdown();
                int hashMap2 = 10000;
                try {
                    newFixedThreadPool.awaitTermination(10000, TimeUnit.MILLISECONDS);
                } catch (Exception e4) {
                }
            }
            a(substring, 1, 255, hashMap2);
        }
        return hashMap2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007c A:{SYNTHETIC, Splitter: B:28:0x007c} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0086 A:{SYNTHETIC, Splitter: B:34:0x0086} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008f A:{SYNTHETIC, Splitter: B:39:0x008f} */
    private void a(java.lang.String r10, int r11, int r12, java.util.HashMap r13) {
        /*
        r9 = this;
        r2 = 0;
        r1 = 0;
        r0 = new java.io.BufferedReader;	 Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0082, all -> 0x008c }
        r3 = new java.io.FileReader;	 Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0082, all -> 0x008c }
        r4 = "/proc/net/arp";
        r3.<init>(r4);	 Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0082, all -> 0x008c }
        r0.<init>(r3);	 Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0082, all -> 0x008c }
        r0.readLine();	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r1 = r12 - r11;
        r1 = r1 + 1;
        r3 = new java.lang.String[r1];	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r1 = r2;
    L_0x0018:
        r4 = r12 - r11;
        r4 = r4 + 1;
        if (r1 >= r4) goto L_0x003a;
    L_0x001e:
        r4 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r4.<init>();	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r4 = r4.append(r10);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r5 = ".";
        r4 = r4.append(r5);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r4 = r4.append(r1);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r4 = r4.toString();	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r3[r1] = r4;	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r1 = r1 + 1;
        goto L_0x0018;
    L_0x003a:
        r1 = r0.readLine();	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        if (r1 == 0) goto L_0x0072;
    L_0x0040:
        r4 = "[ ]+";
        r1 = r1.split(r4);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r4 = r1.length;	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r5 = 6;
        if (r4 < r5) goto L_0x003a;
    L_0x004a:
        r4 = 0;
        r4 = r1[r4];	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r5 = 3;
        r5 = r1[r5];	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r6 = r3.length;	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r1 = r2;
    L_0x0052:
        if (r1 >= r6) goto L_0x003a;
    L_0x0054:
        r7 = r3[r1];	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        r7 = r7.equals(r4);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        if (r7 == 0) goto L_0x006f;
    L_0x005c:
        r7 = "..:..:..:..:..:..";
        r7 = r5.matches(r7);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        if (r7 == 0) goto L_0x006f;
    L_0x0064:
        r7 = "00:00:00:00:00:00";
        r7 = r7.equals(r5);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
        if (r7 != 0) goto L_0x006f;
    L_0x006c:
        r13.put(r4, r5);	 Catch:{ FileNotFoundException -> 0x009e, IOException -> 0x009c, all -> 0x0097 }
    L_0x006f:
        r1 = r1 + 1;
        goto L_0x0052;
    L_0x0072:
        if (r0 == 0) goto L_0x0077;
    L_0x0074:
        r0.close();	 Catch:{ IOException -> 0x0093 }
    L_0x0077:
        return;
    L_0x0078:
        r0 = move-exception;
        r0 = r1;
    L_0x007a:
        if (r0 == 0) goto L_0x0077;
    L_0x007c:
        r0.close();	 Catch:{ IOException -> 0x0080 }
        goto L_0x0077;
    L_0x0080:
        r0 = move-exception;
        goto L_0x0077;
    L_0x0082:
        r0 = move-exception;
        r0 = r1;
    L_0x0084:
        if (r0 == 0) goto L_0x0077;
    L_0x0086:
        r0.close();	 Catch:{ IOException -> 0x008a }
        goto L_0x0077;
    L_0x008a:
        r0 = move-exception;
        goto L_0x0077;
    L_0x008c:
        r0 = move-exception;
    L_0x008d:
        if (r1 == 0) goto L_0x0092;
    L_0x008f:
        r1.close();	 Catch:{ IOException -> 0x0095 }
    L_0x0092:
        throw r0;
    L_0x0093:
        r0 = move-exception;
        goto L_0x0077;
    L_0x0095:
        r1 = move-exception;
        goto L_0x0092;
    L_0x0097:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x008d;
    L_0x009c:
        r1 = move-exception;
        goto L_0x0084;
    L_0x009e:
        r1 = move-exception;
        goto L_0x007a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.metoknlp.devicediscover.l.a(java.lang.String, int, int, java.util.HashMap):void");
    }
}
