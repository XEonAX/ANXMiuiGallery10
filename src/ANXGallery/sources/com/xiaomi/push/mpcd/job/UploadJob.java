package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.push.mpcd.CDActionProvider;
import com.xiaomi.push.mpcd.CDActionProviderHolder;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.DataCollectionItem;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionCollectData;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.io.File;
import java.util.List;

public class UploadJob extends Job {
    private Context context;
    private OnlineConfig mOnlineConfig;
    private SharedPreferences mSharedPreference;

    public UploadJob(Context context) {
        this.context = context;
        this.mSharedPreference = context.getSharedPreferences("mipush_extra", 0);
        this.mOnlineConfig = OnlineConfig.getInstance(context);
    }

    public int getJobId() {
        return 1;
    }

    public void run() {
        File file = new File(this.context.getExternalFilesDir(null), "push_cdata.data");
        if (Network.isConnected(this.context)) {
            if (!verifyUploadDataWithoutWIFI() && file.exists()) {
                List<DataCollectionItem> dataCollectionItemList = readFromFile(file);
                if (!CollectionUtils.isEmpty(dataCollectionItemList)) {
                    int size = dataCollectionItemList.size();
                    if (size > 4000) {
                        dataCollectionItemList = dataCollectionItemList.subList(size - 4000, size);
                    }
                    XmPushActionCollectData dataMessage = new XmPushActionCollectData();
                    dataMessage.setDataCollectionItems(dataCollectionItemList);
                    byte[] data = IOUtils.gZip(XmPushThriftSerializeUtils.convertThriftObjectToBytes(dataMessage));
                    XmPushActionNotification notification = new XmPushActionNotification("-1", false);
                    notification.setType(NotificationType.DataCollection.value);
                    notification.setBinaryExtra(data);
                    CDActionProvider cdActionProvider = CDActionProviderHolder.getInstance().getCDActionProvider();
                    if (cdActionProvider != null) {
                        cdActionProvider.uploadNotification(notification, ActionType.Notification, null);
                    }
                    updateUpdateTimeStamp();
                }
                file.delete();
                this.mSharedPreference.edit().remove("ltapn").commit();
            }
        } else if (file.length() > 1863680) {
            file.delete();
        }
    }

    private boolean verifyUploadDataWithoutWIFI() {
        if (Network.isWIFIConnected(this.context)) {
            return false;
        }
        if (Network.is4GConnected(this.context) && !verify4GUploadData()) {
            return true;
        }
        if (Network.is3GConnected(this.context) && !verify3GUploadData()) {
            return true;
        }
        if (Network.is2GConnected(this.context)) {
            return true;
        }
        return false;
    }

    private boolean verify3GUploadData() {
        boolean z = true;
        if (!this.mOnlineConfig.getBooleanValue(ConfigKey.Upload3GSwitch.getValue(), true)) {
            return false;
        }
        int period = Math.max(86400, this.mOnlineConfig.getIntValue(ConfigKey.Upload3GFrequency.getValue(), 432000));
        if (Math.abs((System.currentTimeMillis() / 1000) - this.mSharedPreference.getLong("last_upload_data_timestamp", -1)) <= ((long) period)) {
            z = false;
        }
        return z;
    }

    private boolean verify4GUploadData() {
        boolean z = true;
        if (!this.mOnlineConfig.getBooleanValue(ConfigKey.Upload4GSwitch.getValue(), true)) {
            return false;
        }
        int period = Math.max(86400, this.mOnlineConfig.getIntValue(ConfigKey.Upload4GFrequency.getValue(), 259200));
        if (Math.abs((System.currentTimeMillis() / 1000) - this.mSharedPreference.getLong("last_upload_data_timestamp", -1)) <= ((long) period)) {
            z = false;
        }
        return z;
    }

    private void updateUpdateTimeStamp() {
        Editor editor = this.mSharedPreference.edit();
        editor.putLong("last_upload_data_timestamp", System.currentTimeMillis() / 1000);
        editor.commit();
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x00ae A:{SYNTHETIC, Splitter: B:43:0x00ae} */
    private java.util.List<com.xiaomi.xmpush.thrift.DataCollectionItem> readFromFile(java.io.File r21) {
        /*
        r20 = this;
        r17 = com.xiaomi.push.mpcd.CDActionProviderHolder.getInstance();
        r3 = r17.getCDActionProvider();
        if (r3 != 0) goto L_0x0014;
    L_0x000a:
        r14 = "";
    L_0x000c:
        r17 = android.text.TextUtils.isEmpty(r14);
        if (r17 == 0) goto L_0x0019;
    L_0x0012:
        r15 = 0;
    L_0x0013:
        return r15;
    L_0x0014:
        r14 = r3.getRegSecret();
        goto L_0x000c;
    L_0x0019:
        r15 = new java.util.ArrayList;
        r15.<init>();
        r5 = 0;
        r17 = 4;
        r0 = r17;
        r9 = new byte[r0];
        r12 = 0;
        r10 = 0;
        r18 = com.xiaomi.push.mpcd.Constants.cDataLock4Thread;
        monitor-enter(r18);
        r11 = new java.io.File;	 Catch:{ Exception -> 0x00e2, all -> 0x00be }
        r0 = r20;
        r0 = r0.context;	 Catch:{ Exception -> 0x00e2, all -> 0x00be }
        r17 = r0;
        r19 = 0;
        r0 = r17;
        r1 = r19;
        r17 = r0.getExternalFilesDir(r1);	 Catch:{ Exception -> 0x00e2, all -> 0x00be }
        r19 = "push_cdata.lock";
        r0 = r17;
        r1 = r19;
        r11.<init>(r0, r1);	 Catch:{ Exception -> 0x00e2, all -> 0x00be }
        com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r11);	 Catch:{ Exception -> 0x00e2, all -> 0x00be }
        r13 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x00e2, all -> 0x00be }
        r17 = "rw";
        r0 = r17;
        r13.<init>(r11, r0);	 Catch:{ Exception -> 0x00e2, all -> 0x00be }
        r17 = r13.getChannel();	 Catch:{ Exception -> 0x00e4, all -> 0x00db }
        r10 = r17.lock();	 Catch:{ Exception -> 0x00e4, all -> 0x00db }
        r6 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x00e4, all -> 0x00db }
        r0 = r21;
        r6.<init>(r0);	 Catch:{ Exception -> 0x00e4, all -> 0x00db }
    L_0x0060:
        r16 = r6.read(r9);	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        r17 = 4;
        r0 = r16;
        r1 = r17;
        if (r0 == r1) goto L_0x0084;
    L_0x006c:
        if (r10 == 0) goto L_0x0077;
    L_0x006e:
        r17 = r10.isValid();	 Catch:{ all -> 0x00d7 }
        if (r17 == 0) goto L_0x0077;
    L_0x0074:
        r10.release();	 Catch:{ IOException -> 0x00d1 }
    L_0x0077:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r6);	 Catch:{ all -> 0x00d7 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r13);	 Catch:{ all -> 0x00d7 }
        r12 = r13;
        r5 = r6;
    L_0x007f:
        monitor-exit(r18);	 Catch:{ all -> 0x0081 }
        goto L_0x0013;
    L_0x0081:
        r17 = move-exception;
    L_0x0082:
        monitor-exit(r18);	 Catch:{ all -> 0x0081 }
        throw r17;
    L_0x0084:
        r8 = com.xiaomi.channel.commonutils.misc.ByteUtils.toInt(r9);	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        r2 = new byte[r8];	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        r16 = r6.read(r2);	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        r0 = r16;
        if (r0 != r8) goto L_0x006c;
    L_0x0092:
        r4 = com.xiaomi.push.mpcd.CDataHelper.decryptData(r14, r2);	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        if (r4 == 0) goto L_0x0060;
    L_0x0098:
        r0 = r4.length;	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        r17 = r0;
        if (r17 == 0) goto L_0x0060;
    L_0x009d:
        r7 = new com.xiaomi.xmpush.thrift.DataCollectionItem;	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        r7.<init>();	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils.convertByteArrayToThriftObject(r7, r4);	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        r15.add(r7);	 Catch:{ Exception -> 0x00a9, all -> 0x00de }
        goto L_0x0060;
    L_0x00a9:
        r17 = move-exception;
        r12 = r13;
        r5 = r6;
    L_0x00ac:
        if (r10 == 0) goto L_0x00b7;
    L_0x00ae:
        r17 = r10.isValid();	 Catch:{ all -> 0x0081 }
        if (r17 == 0) goto L_0x00b7;
    L_0x00b4:
        r10.release();	 Catch:{ IOException -> 0x00d3 }
    L_0x00b7:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r5);	 Catch:{ all -> 0x0081 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r12);	 Catch:{ all -> 0x0081 }
        goto L_0x007f;
    L_0x00be:
        r17 = move-exception;
    L_0x00bf:
        if (r10 == 0) goto L_0x00ca;
    L_0x00c1:
        r19 = r10.isValid();	 Catch:{ all -> 0x0081 }
        if (r19 == 0) goto L_0x00ca;
    L_0x00c7:
        r10.release();	 Catch:{ IOException -> 0x00d5 }
    L_0x00ca:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r5);	 Catch:{ all -> 0x0081 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r12);	 Catch:{ all -> 0x0081 }
        throw r17;	 Catch:{ all -> 0x0081 }
    L_0x00d1:
        r17 = move-exception;
        goto L_0x0077;
    L_0x00d3:
        r17 = move-exception;
        goto L_0x00b7;
    L_0x00d5:
        r19 = move-exception;
        goto L_0x00ca;
    L_0x00d7:
        r17 = move-exception;
        r12 = r13;
        r5 = r6;
        goto L_0x0082;
    L_0x00db:
        r17 = move-exception;
        r12 = r13;
        goto L_0x00bf;
    L_0x00de:
        r17 = move-exception;
        r12 = r13;
        r5 = r6;
        goto L_0x00bf;
    L_0x00e2:
        r17 = move-exception;
        goto L_0x00ac;
    L_0x00e4:
        r17 = move-exception;
        r12 = r13;
        goto L_0x00ac;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.mpcd.job.UploadJob.readFromFile(java.io.File):java.util.List<com.xiaomi.xmpush.thrift.DataCollectionItem>");
    }
}
