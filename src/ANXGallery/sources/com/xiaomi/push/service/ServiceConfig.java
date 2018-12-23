package com.xiaomi.push.service;

import android.content.SharedPreferences;
import android.util.Base64;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor.SerializedAsyncTask;
import com.xiaomi.network.HttpUtils;
import com.xiaomi.push.protobuf.ChannelConfig.PushServiceConfig;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.smack.util.TaskExecutor;
import java.io.BufferedOutputStream;
import java.util.ArrayList;
import java.util.List;

public class ServiceConfig {
    private static String sDeviceUUID;
    private static ServiceConfig sInstance = new ServiceConfig();
    private PushServiceConfig mConfig;
    private List<Listener> mListener = new ArrayList();
    private SerializedAsyncTask mPendingFetchTask;

    public static abstract class Listener {
        public void onConfigMsgReceive(PushServiceConfigMsg config) {
        }

        public void onConfigChange(PushServiceConfig cfg) {
        }
    }

    public static ServiceConfig getInstance() {
        return sInstance;
    }

    private ServiceConfig() {
    }

    public synchronized void addListener(Listener listener) {
        this.mListener.add(listener);
    }

    synchronized void clear() {
        this.mListener.clear();
    }

    private void checkLoad() {
        if (this.mConfig == null) {
            load();
        }
    }

    int getConfigVersion() {
        checkLoad();
        if (this.mConfig != null) {
            return this.mConfig.getConfigVersion();
        }
        return 0;
    }

    public PushServiceConfig getConfig() {
        checkLoad();
        return this.mConfig;
    }

    void handle(PushServiceConfigMsg config) {
        if (config.hasCloudVersion() && config.getCloudVersion() > getConfigVersion()) {
            fetchConfig();
        }
        synchronized (this) {
        }
        for (Listener listener : (Listener[]) this.mListener.toArray(new Listener[this.mListener.size()])) {
            listener.onConfigMsgReceive(config);
        }
    }

    public static synchronized String getDeviceUUID() {
        String str;
        synchronized (ServiceConfig.class) {
            if (sDeviceUUID == null) {
                SharedPreferences sp = SystemUtils.getContext().getSharedPreferences("XMPushServiceConfig", 0);
                sDeviceUUID = sp.getString("DeviceUUID", null);
                if (sDeviceUUID == null) {
                    sDeviceUUID = DeviceInfo.getDeviceId(SystemUtils.getContext(), false);
                    if (sDeviceUUID != null) {
                        sp.edit().putString("DeviceUUID", sDeviceUUID).commit();
                    }
                }
            }
            str = sDeviceUUID;
        }
        return str;
    }

    private void fetchConfig() {
        if (this.mPendingFetchTask == null) {
            this.mPendingFetchTask = new SerializedAsyncTask() {
                boolean success = false;

                public void process() {
                    try {
                        PushServiceConfig config = PushServiceConfig.parseFrom(Base64.decode(HttpUtils.get(SystemUtils.getContext(), "http://resolver.msg.xiaomi.net/psc/?t=a", null), 10));
                        if (config != null) {
                            ServiceConfig.this.mConfig = config;
                            this.success = true;
                            ServiceConfig.this.save();
                        }
                    } catch (Exception e) {
                        MyLog.w("fetch config failure: " + e.getMessage());
                    }
                }

                public void postProcess() {
                    ServiceConfig.this.mPendingFetchTask = null;
                    if (this.success) {
                        synchronized (ServiceConfig.this) {
                        }
                        for (Listener listener : (Listener[]) ServiceConfig.this.mListener.toArray(new Listener[ServiceConfig.this.mListener.size()])) {
                            listener.onConfigChange(ServiceConfig.this.mConfig);
                        }
                    }
                }
            };
            TaskExecutor.execute(this.mPendingFetchTask);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:21:? A:{SYNTHETIC, RETURN} */
    private void load() {
        /*
        r8 = this;
        r0 = 0;
        r2 = com.xiaomi.channel.commonutils.android.SystemUtils.getContext();	 Catch:{ Exception -> 0x002d }
        r6 = "XMCloudCfg";
        r4 = r2.openFileInput(r6);	 Catch:{ Exception -> 0x002d }
        r1 = new java.io.BufferedInputStream;	 Catch:{ Exception -> 0x002d }
        r1.<init>(r4);	 Catch:{ Exception -> 0x002d }
        r5 = com.google.protobuf.micro.CodedInputStreamMicro.newInstance(r1);	 Catch:{ Exception -> 0x0054, all -> 0x0051 }
        r6 = com.xiaomi.push.protobuf.ChannelConfig.PushServiceConfig.parseFrom(r5);	 Catch:{ Exception -> 0x0054, all -> 0x0051 }
        r8.mConfig = r6;	 Catch:{ Exception -> 0x0054, all -> 0x0051 }
        r1.close();	 Catch:{ Exception -> 0x0054, all -> 0x0051 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r1);
        r0 = r1;
    L_0x0021:
        r6 = r8.mConfig;
        if (r6 != 0) goto L_0x002c;
    L_0x0025:
        r6 = new com.xiaomi.push.protobuf.ChannelConfig$PushServiceConfig;
        r6.<init>();
        r8.mConfig = r6;
    L_0x002c:
        return;
    L_0x002d:
        r3 = move-exception;
    L_0x002e:
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004c }
        r6.<init>();	 Catch:{ all -> 0x004c }
        r7 = "load config failure: ";
        r6 = r6.append(r7);	 Catch:{ all -> 0x004c }
        r7 = r3.getMessage();	 Catch:{ all -> 0x004c }
        r6 = r6.append(r7);	 Catch:{ all -> 0x004c }
        r6 = r6.toString();	 Catch:{ all -> 0x004c }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r6);	 Catch:{ all -> 0x004c }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);
        goto L_0x0021;
    L_0x004c:
        r6 = move-exception;
    L_0x004d:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);
        throw r6;
    L_0x0051:
        r6 = move-exception;
        r0 = r1;
        goto L_0x004d;
    L_0x0054:
        r3 = move-exception;
        r0 = r1;
        goto L_0x002e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.ServiceConfig.load():void");
    }

    private void save() {
        try {
            if (this.mConfig != null) {
                BufferedOutputStream bw = new BufferedOutputStream(SystemUtils.getContext().openFileOutput("XMCloudCfg", 0));
                CodedOutputStreamMicro out = CodedOutputStreamMicro.newInstance(bw);
                this.mConfig.writeTo(out);
                out.flush();
                bw.close();
            }
        } catch (Exception e) {
            MyLog.w("save config failure: " + e.getMessage());
        }
    }
}
