package com.xiaomi.smack;

import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.network.Fallback;
import com.xiaomi.network.HostManager;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.util.TaskExecutor;
import java.io.IOException;
import java.net.Socket;

public abstract class SocketConnection extends Connection {
    private String connectedHost;
    String connectionID = null;
    private int curShortConnCount;
    protected Exception failedException = null;
    protected volatile long lastConnectedTime = 0;
    protected volatile long lastPingReceived = 0;
    protected volatile long lastPingSent = 0;
    protected XMPushService pushService;
    protected Socket socket;

    protected abstract void sendPing(boolean z) throws XMPPException;

    public SocketConnection(XMPushService pushService, ConnectionConfiguration config) {
        super(pushService, config);
        this.pushService = pushService;
    }

    public void ping(boolean isPong) throws XMPPException {
        final long current = System.currentTimeMillis();
        sendPing(isPong);
        if (!isPong) {
            this.pushService.executeJobDelayed(new Job(13) {
                public void process() {
                    Thread.yield();
                    if (SocketConnection.this.isConnected() && !SocketConnection.this.isReadAlive(current)) {
                        SocketConnection.this.pushService.disconnect(22, null);
                        SocketConnection.this.pushService.scheduleConnect(true);
                    }
                }

                public String getDesc() {
                    return "check the ping-pong." + current;
                }
            }, 10000);
        }
    }

    public String getChallenge() {
        return this.challenge;
    }

    public String getHost() {
        return this.connectedHost;
    }

    protected synchronized void shutdown(int reason, Exception ex) {
        if (getConnectionStatus() != 2) {
            setConnectionStatus(2, reason, ex);
            this.challenge = "";
            try {
                this.socket.close();
            } catch (Throwable th) {
            }
            this.lastPingSent = 0;
            this.lastPingReceived = 0;
        }
    }

    public void disconnect(int reason, Exception e) {
        shutdown(reason, e);
        if ((e != null || reason == 18) && this.lastConnectedTime != 0) {
            sinkdownHost(e);
        }
    }

    protected void sinkdownHost(Exception e) {
        if (SystemClock.elapsedRealtime() - this.lastConnectedTime >= 300000) {
            this.curShortConnCount = 0;
        } else if (Network.hasNetwork(this.pushService)) {
            this.curShortConnCount++;
            if (this.curShortConnCount >= 2) {
                String failedHost = getHost();
                MyLog.w("max short conn time reached, sink down current host:" + failedHost);
                sinkdownHost(failedHost, 0, e);
                this.curShortConnCount = 0;
            }
        }
    }

    protected void sinkdownHost(String host, long cost, Exception e) {
        Fallback fb = HostManager.getInstance().getFallbacksByHost(ConnectionConfiguration.getXmppServerHost(), false);
        if (fb != null) {
            fb.failedHost(host, cost, 0, e);
            HostManager.getInstance().persist();
        }
    }

    public void batchSend(Blob[] blobs) throws XMPPException {
        throw new XMPPException("Don't support send Blob");
    }

    private void connectUsingConfiguration(ConnectionConfiguration config) throws XMPPException, IOException {
        connectDirectly(config.getHost(), config.getPort());
    }

    /* JADX WARNING: Missing block: B:52:0x02e8, code:
            if (android.text.TextUtils.equals(r10, com.xiaomi.channel.commonutils.network.Network.getActiveConnPoint(r19.pushService)) == false) goto L_0x016d;
     */
    private void connectDirectly(java.lang.String r20, int r21) throws com.xiaomi.smack.XMPPException {
        /*
        r19 = this;
        r15 = 0;
        r4 = 0;
        r0 = r19;
        r0.failedException = r4;
        r13 = new java.util.ArrayList;
        r13.<init>();
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "get bucket for host : ";
        r4 = r4.append(r5);
        r0 = r20;
        r4 = r4.append(r0);
        r4 = r4.toString();
        r4 = com.xiaomi.channel.commonutils.logger.MyLog.ps(r4);
        r9 = r4.intValue();
        r2 = r19.getFallback(r20);
        r4 = java.lang.Integer.valueOf(r9);
        com.xiaomi.channel.commonutils.logger.MyLog.pe(r4);
        if (r2 == 0) goto L_0x003a;
    L_0x0035:
        r4 = 1;
        r13 = r2.getHosts(r4);
    L_0x003a:
        r4 = r13.isEmpty();
        if (r4 == 0) goto L_0x0045;
    L_0x0040:
        r0 = r20;
        r13.add(r0);
    L_0x0045:
        r4 = 0;
        r0 = r19;
        r0.lastConnectedTime = r4;
        r0 = r19;
        r4 = r0.pushService;
        r10 = com.xiaomi.channel.commonutils.network.Network.getActiveConnPoint(r4);
        r12 = new java.lang.StringBuilder;
        r12.<init>();
        r18 = r13.iterator();
    L_0x005c:
        r4 = r18.hasNext();
        if (r4 == 0) goto L_0x016d;
    L_0x0062:
        r3 = r18.next();
        r3 = (java.lang.String) r3;
        r16 = java.lang.System.currentTimeMillis();
        r0 = r19;
        r4 = r0.connTimes;
        r4 = r4 + 1;
        r0 = r19;
        r0.connTimes = r4;
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4.<init>();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r5 = "begin to connect to ";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = r4.append(r3);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = r4.toString();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = r19.createSocket();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r19;
        r0.socket = r4;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r21;
        r14 = com.xiaomi.network.Host.from(r3, r0);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r19;
        r4 = r0.socket;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r5 = 8000; // 0x1f40 float:1.121E-41 double:3.9525E-320;
        r4.connect(r14, r5);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = "tcp connected";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r19;
        r4 = r0.socket;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r5 = 1;
        r4.setTcpNoDelay(r5);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r19;
        r0.connectedHost = r3;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r19.initConnection();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r15 = 1;
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = r4 - r16;
        r0 = r19;
        r0.connectTime = r4;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r19;
        r0.connectionPoint = r10;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        if (r2 == 0) goto L_0x00d2;
    L_0x00c9:
        r0 = r19;
        r4 = r0.connectTime;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r6 = 0;
        r2.succeedHost(r3, r4, r6);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
    L_0x00d2:
        r4 = android.os.SystemClock.elapsedRealtime();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r19;
        r0.lastConnectedTime = r4;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4.<init>();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r5 = "connected to ";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = r4.append(r3);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r5 = " in ";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r0 = r19;
        r6 = r0.connectTime;	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = r4.append(r6);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        r4 = r4.toString();	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);	 Catch:{ Exception -> 0x0180, Throwable -> 0x01f6 }
        if (r15 != 0) goto L_0x016d;
    L_0x0100:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "SMACK: Could not connect to:";
        r4 = r4.append(r5);
        r4 = r4.append(r3);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.e(r4);
        r4 = "SMACK: Could not connect to ";
        r4 = r12.append(r4);
        r4 = r4.append(r3);
        r5 = " port:";
        r4 = r4.append(r5);
        r0 = r21;
        r4 = r4.append(r0);
        r5 = " err:";
        r4 = r4.append(r5);
        r0 = r19;
        r5 = r0.failedException;
        r5 = r5.getClass();
        r5 = r5.getSimpleName();
        r4 = r4.append(r5);
        r5 = "\n";
        r4.append(r5);
        r0 = r19;
        r4 = r0.failedException;
        com.xiaomi.stats.StatsHelper.connectFail(r3, r4);
        if (r2 == 0) goto L_0x015f;
    L_0x0150:
        r4 = java.lang.System.currentTimeMillis();
        r4 = r4 - r16;
        r6 = 0;
        r0 = r19;
        r8 = r0.failedException;
        r2.failedHost(r3, r4, r6, r8);
    L_0x015f:
        r0 = r19;
        r4 = r0.pushService;
        r4 = com.xiaomi.channel.commonutils.network.Network.getActiveConnPoint(r4);
        r4 = android.text.TextUtils.equals(r10, r4);
        if (r4 != 0) goto L_0x016d;
    L_0x016d:
        r4 = com.xiaomi.network.HostManager.getInstance();
        r4.persist();
        if (r15 != 0) goto L_0x0277;
    L_0x0176:
        r4 = new com.xiaomi.smack.XMPPException;
        r5 = r12.toString();
        r4.<init>(r5);
        throw r4;
    L_0x0180:
        r11 = move-exception;
        r0 = r19;
        r0.failedException = r11;	 Catch:{ all -> 0x0278 }
        if (r15 != 0) goto L_0x005c;
    L_0x0187:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "SMACK: Could not connect to:";
        r4 = r4.append(r5);
        r4 = r4.append(r3);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.e(r4);
        r4 = "SMACK: Could not connect to ";
        r4 = r12.append(r4);
        r4 = r4.append(r3);
        r5 = " port:";
        r4 = r4.append(r5);
        r0 = r21;
        r4 = r4.append(r0);
        r5 = " err:";
        r4 = r4.append(r5);
        r0 = r19;
        r5 = r0.failedException;
        r5 = r5.getClass();
        r5 = r5.getSimpleName();
        r4 = r4.append(r5);
        r5 = "\n";
        r4.append(r5);
        r0 = r19;
        r4 = r0.failedException;
        com.xiaomi.stats.StatsHelper.connectFail(r3, r4);
        if (r2 == 0) goto L_0x01e6;
    L_0x01d7:
        r4 = java.lang.System.currentTimeMillis();
        r4 = r4 - r16;
        r6 = 0;
        r0 = r19;
        r8 = r0.failedException;
        r2.failedHost(r3, r4, r6, r8);
    L_0x01e6:
        r0 = r19;
        r4 = r0.pushService;
        r4 = com.xiaomi.channel.commonutils.network.Network.getActiveConnPoint(r4);
        r4 = android.text.TextUtils.equals(r10, r4);
        if (r4 != 0) goto L_0x005c;
    L_0x01f4:
        goto L_0x016d;
    L_0x01f6:
        r11 = move-exception;
        r4 = new java.lang.Exception;	 Catch:{ all -> 0x0278 }
        r5 = "abnormal exception";
        r4.<init>(r5, r11);	 Catch:{ all -> 0x0278 }
        r0 = r19;
        r0.failedException = r4;	 Catch:{ all -> 0x0278 }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r11);	 Catch:{ all -> 0x0278 }
        if (r15 != 0) goto L_0x005c;
    L_0x0207:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "SMACK: Could not connect to:";
        r4 = r4.append(r5);
        r4 = r4.append(r3);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.e(r4);
        r4 = "SMACK: Could not connect to ";
        r4 = r12.append(r4);
        r4 = r4.append(r3);
        r5 = " port:";
        r4 = r4.append(r5);
        r0 = r21;
        r4 = r4.append(r0);
        r5 = " err:";
        r4 = r4.append(r5);
        r0 = r19;
        r5 = r0.failedException;
        r5 = r5.getClass();
        r5 = r5.getSimpleName();
        r4 = r4.append(r5);
        r5 = "\n";
        r4.append(r5);
        r0 = r19;
        r4 = r0.failedException;
        com.xiaomi.stats.StatsHelper.connectFail(r3, r4);
        if (r2 == 0) goto L_0x0266;
    L_0x0257:
        r4 = java.lang.System.currentTimeMillis();
        r4 = r4 - r16;
        r6 = 0;
        r0 = r19;
        r8 = r0.failedException;
        r2.failedHost(r3, r4, r6, r8);
    L_0x0266:
        r0 = r19;
        r4 = r0.pushService;
        r4 = com.xiaomi.channel.commonutils.network.Network.getActiveConnPoint(r4);
        r4 = android.text.TextUtils.equals(r10, r4);
        if (r4 != 0) goto L_0x005c;
    L_0x0274:
        goto L_0x016d;
    L_0x0276:
        throw r18;
    L_0x0277:
        return;
    L_0x0278:
        r4 = move-exception;
        r18 = r4;
        if (r15 != 0) goto L_0x0276;
    L_0x027d:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "SMACK: Could not connect to:";
        r4 = r4.append(r5);
        r4 = r4.append(r3);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.e(r4);
        r4 = "SMACK: Could not connect to ";
        r4 = r12.append(r4);
        r4 = r4.append(r3);
        r5 = " port:";
        r4 = r4.append(r5);
        r0 = r21;
        r4 = r4.append(r0);
        r5 = " err:";
        r4 = r4.append(r5);
        r0 = r19;
        r5 = r0.failedException;
        r5 = r5.getClass();
        r5 = r5.getSimpleName();
        r4 = r4.append(r5);
        r5 = "\n";
        r4.append(r5);
        r0 = r19;
        r4 = r0.failedException;
        com.xiaomi.stats.StatsHelper.connectFail(r3, r4);
        if (r2 == 0) goto L_0x02dc;
    L_0x02cd:
        r4 = java.lang.System.currentTimeMillis();
        r4 = r4 - r16;
        r6 = 0;
        r0 = r19;
        r8 = r0.failedException;
        r2.failedHost(r3, r4, r6, r8);
    L_0x02dc:
        r0 = r19;
        r4 = r0.pushService;
        r4 = com.xiaomi.channel.commonutils.network.Network.getActiveConnPoint(r4);
        r4 = android.text.TextUtils.equals(r10, r4);
        if (r4 != 0) goto L_0x0276;
    L_0x02ea:
        goto L_0x016d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.smack.SocketConnection.connectDirectly(java.lang.String, int):void");
    }

    protected synchronized void initConnection() throws XMPPException, IOException {
    }

    public synchronized void connect() throws XMPPException {
        try {
            if (isConnected() || isConnecting()) {
                MyLog.w("WARNING: current xmpp has connected");
            } else {
                setConnectionStatus(0, 0, null);
                connectUsingConfiguration(this.config);
            }
        } catch (Throwable e) {
            throw new XMPPException(e);
        }
    }

    public void notifyConnectionError(final int error, final Exception e) {
        this.pushService.executeJob(new Job(2) {
            public void process() {
                SocketConnection.this.pushService.disconnect(error, e);
            }

            public String getDesc() {
                return "shutdown the connection. " + error + ", " + e;
            }
        });
    }

    public Socket createSocket() {
        return new Socket();
    }

    Fallback getFallback(final String host) {
        Fallback fallback = HostManager.getInstance().getFallbacksByHost(host, false);
        if (!fallback.isEffective()) {
            TaskExecutor.execute(new Runnable() {
                public void run() {
                    HostManager.getInstance().getFallbacksByHost(host, true);
                }
            });
        }
        return fallback;
    }

    public void updateLastSent() {
        this.lastPingSent = SystemClock.elapsedRealtime();
    }

    public void updateLastReceived() {
        this.lastPingReceived = SystemClock.elapsedRealtime();
    }
}
