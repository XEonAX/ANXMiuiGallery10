package com.cdv.io;

import android.util.Log;

public class NvSyncEvent {
    private boolean m_manualReset = false;
    private volatile boolean m_signaled = false;

    public NvSyncEvent(boolean z) {
        this.m_manualReset = z;
    }

    public void setEvent() {
        synchronized (this) {
            if (!this.m_signaled) {
                this.m_signaled = true;
                notifyAll();
            }
        }
    }

    public void resetEvent() {
        synchronized (this) {
            this.m_signaled = false;
        }
    }

    public boolean waitEvent(long j) {
        if (j == 0) {
            boolean z;
            synchronized (this) {
                z = this.m_signaled;
            }
            return z;
        } else if (j > 0) {
            return waitEventWithTimeout(j);
        } else {
            try {
                synchronized (this) {
                    while (!this.m_signaled) {
                        wait();
                    }
                    if (!this.m_manualReset) {
                        this.m_signaled = false;
                    }
                }
                return true;
            } catch (Exception e) {
                Log.e("SyncEvent", "" + e.getMessage());
                e.printStackTrace();
                return false;
            }
        }
    }

    /* JADX WARNING: Missing block: B:30:?, code:
            return true;
     */
    /* JADX WARNING: Missing block: B:33:?, code:
            return true;
     */
    private boolean waitEventWithTimeout(long r8) {
        /*
        r7 = this;
        r0 = 1;
        r1 = 0;
        monitor-enter(r7);	 Catch:{ Exception -> 0x0037 }
        r2 = r7.m_signaled;	 Catch:{ all -> 0x0034 }
        if (r2 == 0) goto L_0x0010;
    L_0x0007:
        r2 = r7.m_manualReset;	 Catch:{ all -> 0x0034 }
        if (r2 != 0) goto L_0x000e;
    L_0x000b:
        r2 = 0;
        r7.m_signaled = r2;	 Catch:{ all -> 0x0034 }
    L_0x000e:
        monitor-exit(r7);	 Catch:{ all -> 0x0034 }
    L_0x000f:
        return r0;
    L_0x0010:
        r2 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0034 }
    L_0x0014:
        r4 = r7.m_signaled;	 Catch:{ all -> 0x0034 }
        if (r4 != 0) goto L_0x002b;
    L_0x0018:
        r7.wait(r8);	 Catch:{ all -> 0x0034 }
        r4 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0034 }
        r2 = r4 - r2;
        r6 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r6 < 0) goto L_0x0028;
    L_0x0025:
        monitor-exit(r7);	 Catch:{ all -> 0x0034 }
        r0 = r1;
        goto L_0x000f;
    L_0x0028:
        r8 = r8 - r2;
        r2 = r4;
        goto L_0x0014;
    L_0x002b:
        r2 = r7.m_manualReset;	 Catch:{ all -> 0x0034 }
        if (r2 != 0) goto L_0x0032;
    L_0x002f:
        r2 = 0;
        r7.m_signaled = r2;	 Catch:{ all -> 0x0034 }
    L_0x0032:
        monitor-exit(r7);	 Catch:{ all -> 0x0034 }
        goto L_0x000f;
    L_0x0034:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0034 }
        throw r0;	 Catch:{ Exception -> 0x0037 }
    L_0x0037:
        r0 = move-exception;
        r2 = "SyncEvent";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "";
        r3 = r3.append(r4);
        r4 = r0.getMessage();
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        r0.printStackTrace();
        r0 = r1;
        goto L_0x000f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cdv.io.NvSyncEvent.waitEventWithTimeout(long):boolean");
    }
}
