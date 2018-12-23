package com.xiaomi.push.service;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.packet.CommonPacketExtension;
import com.xiaomi.smack.packet.Message;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.util.TrafficUtils;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.XmPushActionAckMessage;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MIPushEventProcessor {
    public void processChannelOpenResult(Context context, ClientLoginInfo loginInfo, boolean succeeded, int reason, String msg) {
        if (!succeeded) {
            MIPushAccount pushAccount = MIPushAccountUtils.getMIPushAccount(context);
            if (pushAccount != null && "token-expired".equals(msg)) {
                try {
                    MIPushAccountUtils.register(context, pushAccount.packageName, pushAccount.appId, pushAccount.appToken);
                } catch (Throwable e) {
                    MyLog.e(e);
                } catch (Throwable e2) {
                    MyLog.e(e2);
                }
            }
        }
    }

    public void processNewPacket(XMPushService pushService, Packet packet, ClientLoginInfo loginInfo) {
        if (packet instanceof Message) {
            Message miMessage = (Message) packet;
            CommonPacketExtension extension = miMessage.getExtension("s");
            if (extension != null) {
                try {
                    processMIPushMessage(pushService, RC4Cryption.decrypt(RC4Cryption.generateKeyForRC4(loginInfo.security, miMessage.getPacketID()), extension.getText()), (long) TrafficUtils.getTrafficFlow(packet.toXML()));
                    return;
                } catch (Throwable e) {
                    MyLog.e(e);
                    return;
                }
            }
            return;
        }
        MyLog.w("not a mipush message");
    }

    public void processNewPacket(XMPushService pushService, Blob blob, ClientLoginInfo loginInfo) {
        try {
            processMIPushMessage(pushService, blob.getDecryptedPayload(loginInfo.security), (long) blob.getSerializedSize());
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    /* JADX WARNING: Missing block: B:63:0x021b, code:
            if (android.text.TextUtils.equals(r19, r18.name) == false) goto L_0x021d;
     */
    private static void processMIPushMessage(com.xiaomi.push.service.XMPushService r26, byte[] r27, long r28) {
        /*
        r13 = buildContainer(r27);
        if (r13 != 0) goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        r4 = r13.packageName;
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 == 0) goto L_0x0015;
    L_0x000f:
        r4 = "receive a mipush message without package name";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
        goto L_0x0006;
    L_0x0015:
        r6 = java.lang.System.currentTimeMillis();
        r21 = java.lang.Long.valueOf(r6);
        r6 = r21.longValue();
        r0 = r27;
        r15 = buildIntent(r0, r6);
        r5 = com.xiaomi.push.service.MIPushNotificationHelper.getTargetPackage(r13);
        r8 = 1;
        r9 = 1;
        r10 = java.lang.System.currentTimeMillis();
        r4 = r26;
        r6 = r28;
        com.xiaomi.smack.util.TrafficUtils.distributionTraffic(r4, r5, r6, r8, r9, r10);
        r17 = r13.getMetaInfo();
        if (r17 == 0) goto L_0x004d;
    L_0x003e:
        r4 = "mrt";
        r6 = r21.longValue();
        r6 = java.lang.Long.toString(r6);
        r0 = r17;
        r0.putToExtra(r4, r6);
    L_0x004d:
        r4 = com.xiaomi.xmpush.thrift.ActionType.SendMessage;
        r6 = r13.getAction();
        if (r4 != r6) goto L_0x00ad;
    L_0x0055:
        r4 = com.xiaomi.push.service.MIPushAppInfo.getInstance(r26);
        r6 = r13.packageName;
        r4 = r4.isUnRegistered(r6);
        if (r4 == 0) goto L_0x00ad;
    L_0x0061:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isBusinessMessage(r13);
        if (r4 != 0) goto L_0x00ad;
    L_0x0067:
        r20 = "";
        if (r17 == 0) goto L_0x008c;
    L_0x006b:
        r20 = r17.getId();
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x008c;
    L_0x0075:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r6 = r13.getPackageName();
        r7 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r8 = "Drop a message for unregistered";
        r0 = r20;
        r4.reportEvent4NeedDrop(r6, r7, r0, r8);
    L_0x008c:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r6 = "Drop a message for unregistered, msgid=";
        r4 = r4.append(r6);
        r0 = r20;
        r4 = r4.append(r0);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
        r4 = r13.packageName;
        r0 = r26;
        sendAppAbsentAck(r0, r13, r4);
        goto L_0x0006;
    L_0x00ad:
        r4 = com.xiaomi.xmpush.thrift.ActionType.SendMessage;
        r6 = r13.getAction();
        if (r4 != r6) goto L_0x010d;
    L_0x00b5:
        r4 = com.xiaomi.push.service.MIPushAppInfo.getInstance(r26);
        r6 = r13.packageName;
        r4 = r4.isPushDisabled4User(r6);
        if (r4 == 0) goto L_0x010d;
    L_0x00c1:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isBusinessMessage(r13);
        if (r4 != 0) goto L_0x010d;
    L_0x00c7:
        r20 = "";
        if (r17 == 0) goto L_0x00ec;
    L_0x00cb:
        r20 = r17.getId();
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x00ec;
    L_0x00d5:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r6 = r13.getPackageName();
        r7 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r8 = "Drop a message for push closed";
        r0 = r20;
        r4.reportEvent4NeedDrop(r6, r7, r0, r8);
    L_0x00ec:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r6 = "Drop a message for push closed, msgid=";
        r4 = r4.append(r6);
        r0 = r20;
        r4 = r4.append(r0);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
        r4 = r13.packageName;
        r0 = r26;
        sendAppAbsentAck(r0, r13, r4);
        goto L_0x0006;
    L_0x010d:
        r4 = com.xiaomi.xmpush.thrift.ActionType.SendMessage;
        r6 = r13.getAction();
        if (r4 != r6) goto L_0x01a1;
    L_0x0115:
        r4 = r26.getPackageName();
        r6 = "com.xiaomi.xmsf";
        r4 = android.text.TextUtils.equals(r4, r6);
        if (r4 != 0) goto L_0x01a1;
    L_0x0121:
        r4 = r26.getPackageName();
        r6 = r13.packageName;
        r4 = android.text.TextUtils.equals(r4, r6);
        if (r4 != 0) goto L_0x01a1;
    L_0x012d:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r6 = "Receive a message with wrong package name, expect ";
        r4 = r4.append(r6);
        r6 = r26.getPackageName();
        r4 = r4.append(r6);
        r6 = ", received ";
        r4 = r4.append(r6);
        r6 = r13.packageName;
        r4 = r4.append(r6);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
        r4 = "unmatched_package";
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "package should be ";
        r6 = r6.append(r7);
        r7 = r26.getPackageName();
        r6 = r6.append(r7);
        r7 = ", but got ";
        r6 = r6.append(r7);
        r7 = r13.packageName;
        r6 = r6.append(r7);
        r6 = r6.toString();
        r0 = r26;
        sendErrorAck(r0, r13, r4, r6);
        if (r17 == 0) goto L_0x0006;
    L_0x0180:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x0006;
    L_0x0186:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r6 = r13.getPackageName();
        r7 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r8 = r17.getId();
        r9 = "Receive a message with wrong package name";
        r4.reportEvent4NeedDrop(r6, r7, r8, r9);
        goto L_0x0006;
    L_0x01a1:
        if (r17 == 0) goto L_0x01c3;
    L_0x01a3:
        r4 = r17.getId();
        if (r4 == 0) goto L_0x01c3;
    L_0x01a9:
        r4 = "receive a message, appid=%1$s, msgid= %2$s";
        r6 = 2;
        r6 = new java.lang.Object[r6];
        r7 = 0;
        r8 = r13.getAppid();
        r6[r7] = r8;
        r7 = 1;
        r8 = r17.getId();
        r6[r7] = r8;
        r4 = java.lang.String.format(r4, r6);
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
    L_0x01c3:
        if (r17 == 0) goto L_0x01eb;
    L_0x01c5:
        r14 = r17.getExtra();
        if (r14 == 0) goto L_0x01eb;
    L_0x01cb:
        r4 = "hide";
        r4 = r14.containsKey(r4);
        if (r4 == 0) goto L_0x01eb;
    L_0x01d3:
        r6 = "true";
        r4 = "hide";
        r4 = r14.get(r4);
        r4 = (java.lang.String) r4;
        r4 = r6.equalsIgnoreCase(r4);
        if (r4 == 0) goto L_0x01eb;
    L_0x01e4:
        r0 = r26;
        sendAckMessage(r0, r13);
        goto L_0x0006;
    L_0x01eb:
        if (r17 == 0) goto L_0x0290;
    L_0x01ed:
        r4 = r17.getExtra();
        if (r4 == 0) goto L_0x0290;
    L_0x01f3:
        r4 = r17.getExtra();
        r6 = "__miid";
        r4 = r4.containsKey(r6);
        if (r4 == 0) goto L_0x0290;
    L_0x01ff:
        r14 = r17.getExtra();
        r4 = "__miid";
        r19 = r14.get(r4);
        r19 = (java.lang.String) r19;
        r18 = com.xiaomi.channel.commonutils.android.MIIDUtils.getXiaomiAccount(r26);
        if (r18 == 0) goto L_0x021d;
    L_0x0211:
        r0 = r18;
        r4 = r0.name;
        r0 = r19;
        r4 = android.text.TextUtils.equals(r0, r4);
        if (r4 != 0) goto L_0x0290;
    L_0x021d:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x023c;
    L_0x0223:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r6 = r13.getPackageName();
        r7 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r8 = r17.getId();
        r9 = "miid already logout or anther already login";
        r4.reportEvent4NeedDrop(r6, r7, r8, r9);
    L_0x023c:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r0 = r19;
        r4 = r4.append(r0);
        r6 = " should be login, but got ";
        r4 = r4.append(r6);
        r0 = r18;
        r4 = r4.append(r0);
        r4 = r4.toString();
        if (r4 != 0) goto L_0x0286;
    L_0x0259:
        r4 = "nothing";
    L_0x025b:
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
        r6 = "miid already logout or anther already login";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r0 = r19;
        r4 = r4.append(r0);
        r7 = " should be login, but got ";
        r4 = r4.append(r7);
        r0 = r18;
        r4 = r4.append(r0);
        r4 = r4.toString();
        if (r4 != 0) goto L_0x028b;
    L_0x027d:
        r4 = "nothing";
    L_0x027f:
        r0 = r26;
        sendErrorAck(r0, r13, r6, r4);
        goto L_0x0006;
    L_0x0286:
        r0 = r18;
        r4 = r0.name;
        goto L_0x025b;
    L_0x028b:
        r0 = r18;
        r4 = r0.name;
        goto L_0x027f;
    L_0x0290:
        if (r17 == 0) goto L_0x02b2;
    L_0x0292:
        r4 = r17.getExtra();
        r4 = verifyGeoMessage(r4);
        if (r4 == 0) goto L_0x02b2;
    L_0x029c:
        r22 = 1;
    L_0x029e:
        if (r22 == 0) goto L_0x02d1;
    L_0x02a0:
        r4 = com.xiaomi.push.service.GeoFenceUtils.getGeoEnableSwitch(r26);
        if (r4 != 0) goto L_0x02b5;
    L_0x02a6:
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r11 = 1;
        r6 = r26;
        r7 = r13;
        sendGeoAck(r6, r7, r8, r9, r10, r11);
        goto L_0x0006;
    L_0x02b2:
        r22 = 0;
        goto L_0x029e;
    L_0x02b5:
        r23 = shouldGeoLocalCheck(r17);
        r12 = com.xiaomi.push.service.GeoFenceUtils.canLocalCheck(r26);
        if (r23 == 0) goto L_0x02dc;
    L_0x02bf:
        if (r12 == 0) goto L_0x02dc;
    L_0x02c1:
        r16 = 1;
    L_0x02c3:
        if (r16 != 0) goto L_0x02df;
    L_0x02c5:
        r24 = 1;
    L_0x02c7:
        r4 = 1;
        r6 = 0;
        r7 = 0;
        r0 = r26;
        sendGeoAck(r0, r13, r4, r6, r7);
        if (r24 == 0) goto L_0x0006;
    L_0x02d1:
        r0 = r26;
        r1 = r27;
        r2 = r22;
        postProcessMIPushMessage(r0, r5, r1, r15, r2);
        goto L_0x0006;
    L_0x02dc:
        r16 = 0;
        goto L_0x02c3;
    L_0x02df:
        r0 = r26;
        r4 = geoMessageIsValidated(r0, r13);
        if (r4 == 0) goto L_0x0006;
    L_0x02e7:
        r0 = r26;
        r1 = r17;
        r2 = r27;
        r24 = processGeoMessage(r0, r1, r2);
        goto L_0x02c7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.MIPushEventProcessor.processMIPushMessage(com.xiaomi.push.service.XMPushService, byte[], long):void");
    }

    private static boolean processGeoMessage(XMPushService pushService, PushMetaInfo metaInfo, byte[] decryptedContent) {
        Map<String, String> extra = metaInfo.getExtra();
        String[] ids = ((String) extra.get("__geo_ids")).split(",");
        ArrayList<ContentValues> geoMessages = new ArrayList();
        for (String id : ids) {
            if (GeoFenceDao.getInstance(pushService).findGeoFencingById(id) != null) {
                ContentValues geoMessage = new ContentValues();
                geoMessage.put("geo_id", id);
                geoMessage.put("message_id", metaInfo.getId());
                int action = Integer.parseInt((String) extra.get("__geo_action"));
                geoMessage.put("action", Integer.valueOf(action));
                geoMessage.put("content", decryptedContent);
                geoMessage.put("deadline", Long.valueOf(Long.parseLong((String) extra.get("__geo_deadline"))));
                if (TextUtils.equals(GeoFenceDao.getInstance(pushService).findGeoStatueByGeoId(id), "Enter") && action == 1) {
                    return true;
                }
                geoMessages.add(geoMessage);
            }
        }
        if (!GeoFenceMessageDao.getInstance(pushService).insertGeoMessages(geoMessages)) {
            MyLog.v("geofence added some new geofence message failed messagi_id:" + metaInfo.getId());
        }
        return false;
    }

    public static Intent buildIntent(byte[] decryptedContent, long receiveTime) {
        XmPushActionContainer container = buildContainer(decryptedContent);
        if (container == null) {
            return null;
        }
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.putExtra("mipush_payload", decryptedContent);
        intent.putExtra("mrt", Long.toString(receiveTime));
        intent.setPackage(container.packageName);
        return intent;
    }

    public static XmPushActionContainer buildContainer(byte[] decryptedContent) {
        XmPushActionContainer container = new XmPushActionContainer();
        try {
            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(container, decryptedContent);
            return container;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:130:? A:{SYNTHETIC, RETURN, SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0207  */
    /* JADX WARNING: Missing block: B:24:0x0093, code:
            if (com.xiaomi.channel.commonutils.android.AppInfoUtils.isPkgInstalled(r26, r13.packageName) == false) goto L_0x0095;
     */
    /* JADX WARNING: Missing block: B:55:0x01ba, code:
            if (com.xiaomi.push.service.MIPushNotificationHelper.isApplicationForeground(r26, r13.packageName) != false) goto L_0x01bc;
     */
    public static void postProcessMIPushMessage(com.xiaomi.push.service.XMPushService r26, java.lang.String r27, byte[] r28, android.content.Intent r29, boolean r30) {
        /*
        r13 = buildContainer(r28);
        r20 = r13.getMetaInfo();
        if (r28 == 0) goto L_0x001d;
    L_0x000a:
        r4 = r13.getPackageName();
        r5 = r26.getApplicationContext();
        r6 = 0;
        r7 = r13.getAction();
        r0 = r28;
        r8 = r0.length;
        com.xiaomi.push.clientreport.PerfMessageHelper.collectPerfData(r4, r5, r6, r7, r8);
    L_0x001d:
        r4 = isMIUIOldAdsSDKMessage(r13);
        if (r4 == 0) goto L_0x004e;
    L_0x0023:
        r4 = isMIUIPushSupported(r26, r27);
        if (r4 == 0) goto L_0x004e;
    L_0x0029:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x0048;
    L_0x002f:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "old message received by new SDK.";
        r4.reportEvent4NeedDrop(r5, r6, r7, r8);
    L_0x0048:
        r0 = r26;
        sendMIUIOldAdsAckMessage(r0, r13);
    L_0x004d:
        return;
    L_0x004e:
        r4 = isMIUIPushMessage(r13);
        if (r4 == 0) goto L_0x0085;
    L_0x0054:
        r4 = isMIUIPushSupported(r26, r27);
        if (r4 != 0) goto L_0x0085;
    L_0x005a:
        r4 = predefinedNotification(r13);
        if (r4 != 0) goto L_0x0085;
    L_0x0060:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x007f;
    L_0x0066:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "new message received by old SDK.";
        r4.reportEvent4NeedDrop(r5, r6, r7, r8);
    L_0x007f:
        r0 = r26;
        sendMIUINewAdsAckMessage(r0, r13);
        goto L_0x004d;
    L_0x0085:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isBusinessMessage(r13);
        if (r4 == 0) goto L_0x0095;
    L_0x008b:
        r4 = r13.packageName;
        r0 = r26;
        r4 = com.xiaomi.channel.commonutils.android.AppInfoUtils.isPkgInstalled(r0, r4);
        if (r4 != 0) goto L_0x009f;
    L_0x0095:
        r0 = r26;
        r1 = r29;
        r4 = isIntentAvailable(r0, r1);
        if (r4 == 0) goto L_0x03cf;
    L_0x009f:
        r4 = com.xiaomi.xmpush.thrift.ActionType.Registration;
        r5 = r13.getAction();
        if (r4 != r5) goto L_0x00c2;
    L_0x00a7:
        r21 = r13.getPackageName();
        r4 = "pref_registered_pkg_names";
        r5 = 0;
        r0 = r26;
        r25 = r0.getSharedPreferences(r4, r5);
        r15 = r25.edit();
        r4 = r13.appid;
        r0 = r21;
        r15.putString(r0, r4);
        r15.commit();
    L_0x00c2:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNormalNotificationMessage(r13);
        if (r4 == 0) goto L_0x0105;
    L_0x00c8:
        r4 = r26.getApplicationContext();
        r5 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r6 = r13.getPackageName();
        r7 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r8 = r20.getId();
        r9 = 1001; // 0x3e9 float:1.403E-42 double:4.946E-321;
        r10 = java.lang.System.currentTimeMillis();
        r12 = "receive notification message ";
        r5.reportEvent(r6, r7, r8, r9, r10, r12);
        r4 = r20.getId();
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 != 0) goto L_0x0105;
    L_0x00f1:
        r4 = "messageId";
        r5 = r20.getId();
        r0 = r29;
        r0.putExtra(r4, r5);
        r4 = "eventMessageType";
        r5 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r0 = r29;
        r0.putExtra(r4, r5);
    L_0x0105:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isPassThoughMessage(r13);
        if (r4 == 0) goto L_0x0148;
    L_0x010b:
        r4 = r26.getApplicationContext();
        r5 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r6 = r13.getPackageName();
        r7 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r8 = r20.getId();
        r9 = 2001; // 0x7d1 float:2.804E-42 double:9.886E-321;
        r10 = java.lang.System.currentTimeMillis();
        r12 = "receive passThrough message";
        r5.reportEvent(r6, r7, r8, r9, r10, r12);
        r4 = r20.getId();
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 != 0) goto L_0x0148;
    L_0x0134:
        r4 = "messageId";
        r5 = r20.getId();
        r0 = r29;
        r0.putExtra(r4, r5);
        r4 = "eventMessageType";
        r5 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        r0 = r29;
        r0.putExtra(r4, r5);
    L_0x0148:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isBusinessMessage(r13);
        if (r4 == 0) goto L_0x018b;
    L_0x014e:
        r4 = r26.getApplicationContext();
        r5 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r6 = r13.getPackageName();
        r7 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r8 = r20.getId();
        r9 = 3001; // 0xbb9 float:4.205E-42 double:1.4827E-320;
        r10 = java.lang.System.currentTimeMillis();
        r12 = "receive business message";
        r5.reportEvent(r6, r7, r8, r9, r10, r12);
        r4 = r20.getId();
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 != 0) goto L_0x018b;
    L_0x0177:
        r4 = "messageId";
        r5 = r20.getId();
        r0 = r29;
        r0.putExtra(r4, r5);
        r4 = "eventMessageType";
        r5 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
        r0 = r29;
        r0.putExtra(r4, r5);
    L_0x018b:
        if (r20 == 0) goto L_0x01bc;
    L_0x018d:
        r4 = r20.getTitle();
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 != 0) goto L_0x01bc;
    L_0x0197:
        r4 = r20.getDescription();
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 != 0) goto L_0x01bc;
    L_0x01a1:
        r0 = r20;
        r4 = r0.passThrough;
        r5 = 1;
        if (r4 == r5) goto L_0x01bc;
    L_0x01a8:
        r4 = r20.getExtra();
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNotifyForeground(r4);
        if (r4 != 0) goto L_0x02bd;
    L_0x01b2:
        r4 = r13.packageName;
        r0 = r26;
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isApplicationForeground(r0, r4);
        if (r4 == 0) goto L_0x02bd;
    L_0x01bc:
        r4 = "com.xiaomi.xmsf";
        r5 = r13.packageName;
        r4 = r4.contains(r5);
        if (r4 == 0) goto L_0x0218;
    L_0x01c6:
        r4 = r13.isEncryptAction();
        if (r4 != 0) goto L_0x0218;
    L_0x01cc:
        if (r20 == 0) goto L_0x0218;
    L_0x01ce:
        r4 = r20.getExtra();
        if (r4 == 0) goto L_0x0218;
    L_0x01d4:
        r4 = r20.getExtra();
        r5 = "ab";
        r4 = r4.containsKey(r5);
        if (r4 == 0) goto L_0x0218;
    L_0x01e0:
        r0 = r26;
        sendAckMessage(r0, r13);
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "receive abtest message. ack it.";
        r4 = r4.append(r5);
        r5 = r20.getId();
        r4 = r4.append(r5);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.v(r4);
    L_0x01ff:
        r4 = r13.getAction();
        r5 = com.xiaomi.xmpush.thrift.ActionType.UnRegistration;
        if (r4 != r5) goto L_0x004d;
    L_0x0207:
        r4 = "com.xiaomi.xmsf";
        r5 = r26.getPackageName();
        r4 = r4.equals(r5);
        if (r4 != 0) goto L_0x004d;
    L_0x0213:
        r26.stopSelf();
        goto L_0x004d;
    L_0x0218:
        r0 = r26;
        r1 = r27;
        r2 = r20;
        r24 = shouldSendBroadcast(r0, r1, r13, r2);
        if (r24 == 0) goto L_0x02a2;
    L_0x0224:
        if (r20 == 0) goto L_0x0252;
    L_0x0226:
        r4 = r20.getId();
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 != 0) goto L_0x0252;
    L_0x0230:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isPassThoughMessage(r13);
        if (r4 == 0) goto L_0x0260;
    L_0x0236:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = 2002; // 0x7d2 float:2.805E-42 double:9.89E-321;
        r9 = "try send passThrough message Broadcast";
        r4.reportEvent(r5, r6, r7, r8, r9);
    L_0x0252:
        r4 = r13.packageName;
        r4 = com.xiaomi.push.service.MIPushHelper.getReceiverPermission(r4);
        r0 = r26;
        r1 = r29;
        r0.sendBroadcast(r1, r4);
        goto L_0x01ff;
    L_0x0260:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isBusinessMessage(r13);
        if (r4 == 0) goto L_0x0281;
    L_0x0266:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "try show awake message , but it don't show in foreground";
        r4.reportEvent4NeedDrop(r5, r6, r7, r8);
        goto L_0x0252;
    L_0x0281:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNormalNotificationMessage(r13);
        if (r4 == 0) goto L_0x0252;
    L_0x0287:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "try show notification message , but it don't show in foreground";
        r4.reportEvent4NeedDrop(r5, r6, r7, r8);
        goto L_0x0252;
    L_0x02a2:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "passThough message: not permit to send broadcast ";
        r4.reportEvent4NeedDrop(r5, r6, r7, r8);
        goto L_0x01ff;
    L_0x02bd:
        r17 = 0;
        r18 = 0;
        if (r20 == 0) goto L_0x02eb;
    L_0x02c3:
        r0 = r20;
        r4 = r0.extra;
        if (r4 == 0) goto L_0x02d5;
    L_0x02c9:
        r0 = r20;
        r4 = r0.extra;
        r5 = "jobkey";
        r18 = r4.get(r5);
        r18 = (java.lang.String) r18;
    L_0x02d5:
        r4 = android.text.TextUtils.isEmpty(r18);
        if (r4 == 0) goto L_0x02df;
    L_0x02db:
        r18 = r20.getId();
    L_0x02df:
        r4 = r13.packageName;
        r5 = r20.getId();
        r0 = r26;
        r17 = com.xiaomi.push.service.MiPushMessageDuplicate.isDuplicateMessage(r0, r4, r5);
    L_0x02eb:
        if (r17 == 0) goto L_0x032a;
    L_0x02ed:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "drop a duplicate message";
        r4.reportEvent4DUPMD(r5, r6, r7, r8);
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "drop a duplicate message, key=";
        r4 = r4.append(r5);
        r0 = r18;
        r4 = r4.append(r0);
        r4 = r4.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
    L_0x031e:
        if (r30 == 0) goto L_0x03c8;
    L_0x0320:
        r4 = 0;
        r5 = 1;
        r6 = 0;
        r0 = r26;
        sendGeoAck(r0, r13, r4, r5, r6);
        goto L_0x01ff;
    L_0x032a:
        r0 = r26;
        r1 = r28;
        r16 = com.xiaomi.push.service.MIPushNotificationHelper.notifyPushMessage(r0, r13, r1);
        r0 = r16;
        r4 = r0.traffic;
        r6 = 0;
        r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r4 <= 0) goto L_0x0359;
    L_0x033c:
        r0 = r16;
        r4 = r0.targetPkgName;
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 != 0) goto L_0x0359;
    L_0x0346:
        r0 = r16;
        r5 = r0.targetPkgName;
        r0 = r16;
        r6 = r0.traffic;
        r8 = 1;
        r9 = 0;
        r10 = java.lang.System.currentTimeMillis();
        r4 = r26;
        com.xiaomi.smack.util.TrafficUtils.distributionTraffic(r4, r5, r6, r8, r9, r10);
    L_0x0359:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isBusinessMessage(r13);
        if (r4 != 0) goto L_0x031e;
    L_0x035f:
        r19 = new android.content.Intent;
        r4 = "com.xiaomi.mipush.MESSAGE_ARRIVED";
        r0 = r19;
        r0.<init>(r4);
        r4 = "mipush_payload";
        r0 = r19;
        r1 = r28;
        r0.putExtra(r4, r1);
        r4 = r13.packageName;
        r0 = r19;
        r0.setPackage(r4);
        r22 = r26.getPackageManager();	 Catch:{ Exception -> 0x039b }
        r4 = 0;
        r0 = r22;
        r1 = r19;
        r23 = r0.queryBroadcastReceivers(r1, r4);	 Catch:{ Exception -> 0x039b }
        if (r23 == 0) goto L_0x031e;
    L_0x0387:
        r4 = r23.isEmpty();	 Catch:{ Exception -> 0x039b }
        if (r4 != 0) goto L_0x031e;
    L_0x038d:
        r4 = r13.packageName;	 Catch:{ Exception -> 0x039b }
        r4 = com.xiaomi.push.service.MIPushHelper.getReceiverPermission(r4);	 Catch:{ Exception -> 0x039b }
        r0 = r26;
        r1 = r19;
        r0.sendBroadcast(r1, r4);	 Catch:{ Exception -> 0x039b }
        goto L_0x031e;
    L_0x039b:
        r14 = move-exception;
        r4 = r13.packageName;
        r4 = com.xiaomi.push.service.MIPushHelper.getReceiverPermission(r4);
        r0 = r26;
        r1 = r19;
        r0.sendBroadcast(r1, r4);
        if (r14 == 0) goto L_0x031e;
    L_0x03ab:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = r14.getMessage();
        r4.reportEvent4ERROR(r5, r6, r7, r8);
        goto L_0x031e;
    L_0x03c8:
        r0 = r26;
        sendAckMessage(r0, r13);
        goto L_0x01ff;
    L_0x03cf:
        r4 = r13.packageName;
        r0 = r26;
        r4 = com.xiaomi.channel.commonutils.android.AppInfoUtils.isPkgInstalled(r0, r4);
        if (r4 != 0) goto L_0x03ff;
    L_0x03d9:
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x03f8;
    L_0x03df:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "receive a message, but the package is removed.";
        r4.reportEvent4ERROR(r5, r6, r7, r8);
    L_0x03f8:
        r0 = r26;
        sendAppNotInstallNotification(r0, r13);
        goto L_0x004d;
    L_0x03ff:
        r4 = "receive a mipush message, we can see the app, but we can't see the receiver.";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r4);
        r4 = com.xiaomi.push.service.MIPushNotificationHelper.isNPBMessage(r13);
        if (r4 == 0) goto L_0x004d;
    L_0x040a:
        r4 = r26.getApplicationContext();
        r4 = com.xiaomi.push.service.clientReport.PushClientReportManager.getInstance(r4);
        r5 = r13.getPackageName();
        r6 = com.xiaomi.push.service.MIPushNotificationHelper.getInterfaceId(r13);
        r7 = r20.getId();
        r8 = "receive a mipush message, we can see the app, but we can't see the receiver.";
        r4.reportEvent4ERROR(r5, r6, r7, r8);
        goto L_0x004d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.MIPushEventProcessor.postProcessMIPushMessage(com.xiaomi.push.service.XMPushService, java.lang.String, byte[], android.content.Intent, boolean):void");
    }

    private static boolean shouldSendBroadcast(XMPushService pushService, String realTargetPackage, XmPushActionContainer container, PushMetaInfo metaInfo) {
        boolean sendBroadcast = true;
        if (metaInfo != null && metaInfo.getExtra() != null && metaInfo.getExtra().containsKey("__check_alive") && metaInfo.getExtra().containsKey("__awake")) {
            XmPushActionNotification notification = new XmPushActionNotification();
            notification.setAppId(container.getAppid());
            notification.setPackageName(realTargetPackage);
            notification.setType(NotificationType.AwakeSystemApp.value);
            notification.setId(metaInfo.getId());
            notification.extra = new HashMap();
            boolean appRunning = AppInfoUtils.isAppRunning(pushService.getApplicationContext(), realTargetPackage);
            notification.extra.put("app_running", Boolean.toString(appRunning));
            if (!appRunning) {
                boolean awake = Boolean.parseBoolean((String) metaInfo.getExtra().get("__awake"));
                notification.extra.put("awaked", Boolean.toString(awake));
                if (!awake) {
                    sendBroadcast = false;
                }
            }
            try {
                MIPushHelper.sendPacket(pushService, MIPushHelper.generateRequestContainer(container.getPackageName(), container.getAppid(), notification, ActionType.Notification));
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
        return sendBroadcast;
    }

    private static void sendAppNotInstallNotification(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    MIPushHelper.sendPacket(pushService, MIPushHelper.contructAppAbsentMessage(container.getPackageName(), container.getAppid()));
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send app absent message.";
            }
        });
    }

    private static boolean verifyGeoMessage(Map<String, String> extra) {
        if (extra != null && extra.containsKey("__geo_ids")) {
            return true;
        }
        return false;
    }

    private static boolean geoMessageIsValidated(XMPushService pushService, XmPushActionContainer container) {
        if (!GeoFenceUtils.checkMetoknlpVersionAbove(pushService)) {
            return false;
        }
        if (!GeoFenceUtils.verifyGeoChannel(pushService)) {
            return false;
        }
        if (AppInfoUtils.isPkgInstalled(pushService, container.packageName)) {
            Map<String, String> extra = container.getMetaInfo().getExtra();
            if (extra == null) {
                return false;
            }
            if (!"12".contains((CharSequence) extra.get("__geo_action"))) {
                return false;
            }
            if (TextUtils.isEmpty((CharSequence) extra.get("__geo_ids"))) {
                return false;
            }
            return true;
        }
        sendAppNotInstallNotification(pushService, container);
        return false;
    }

    private static boolean isMIUIPushMessage(XmPushActionContainer container) {
        return "com.xiaomi.xmsf".equals(container.packageName) && container.getMetaInfo() != null && container.getMetaInfo().getExtra() != null && container.getMetaInfo().getExtra().containsKey("miui_package_name");
    }

    private static boolean predefinedNotification(XmPushActionContainer container) {
        Map<String, String> extra = container.getMetaInfo().getExtra();
        return extra != null && extra.containsKey("notify_effect");
    }

    private static boolean isMIUIPushSupported(Context context, String packageName) {
        Intent notiIntent = new Intent("com.xiaomi.mipush.miui.CLICK_MESSAGE");
        notiIntent.setPackage(packageName);
        Intent passThroughIntent = new Intent("com.xiaomi.mipush.miui.RECEIVE_MESSAGE");
        passThroughIntent.setPackage(packageName);
        PackageManager pmgr = context.getPackageManager();
        try {
            List<ResolveInfo> brInfos = pmgr.queryBroadcastReceivers(passThroughIntent, 32);
            List<ResolveInfo> srInfos = pmgr.queryIntentServices(notiIntent, 32);
            if (brInfos.isEmpty() && srInfos.isEmpty()) {
                return false;
            }
            return true;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    private static boolean isMIUIOldAdsSDKMessage(XmPushActionContainer container) {
        if (container.getMetaInfo() == null || container.getMetaInfo().getExtra() == null) {
            return false;
        }
        return "1".equals(container.getMetaInfo().getExtra().get("obslete_ads_message"));
    }

    private static void sendAckMessage(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    MIPushHelper.sendPacket(pushService, MIPushEventProcessor.constructAckMessage(pushService, container));
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send ack message for message.";
            }
        });
    }

    private static void sendMIUIOldAdsAckMessage(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(pushService, container);
                    ackContainer.getMetaInfo().putToExtra("message_obsleted", "1");
                    MIPushHelper.sendPacket(pushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send ack message for obsleted message.";
            }
        });
    }

    private static void sendMIUINewAdsAckMessage(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(pushService, container);
                    ackContainer.getMetaInfo().putToExtra("miui_message_unrecognized", "1");
                    MIPushHelper.sendPacket(pushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send ack message for unrecognized new miui message.";
            }
        });
    }

    private static void sendAppAbsentAck(final XMPushService pushService, final XmPushActionContainer container, final String realTargetPackage) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(pushService, container);
                    ackContainer.getMetaInfo().putToExtra("absent_target_package", realTargetPackage);
                    MIPushHelper.sendPacket(pushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send app absent ack message for message.";
            }
        });
    }

    private static void sendErrorAck(XMPushService pushService, XmPushActionContainer container, String error, String reason) {
        final XMPushService xMPushService = pushService;
        final XmPushActionContainer xmPushActionContainer = container;
        final String str = error;
        final String str2 = reason;
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(xMPushService, xmPushActionContainer);
                    ackContainer.metaInfo.putToExtra("error", str);
                    ackContainer.metaInfo.putToExtra("reason", str2);
                    MIPushHelper.sendPacket(xMPushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    xMPushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send wrong message ack for message.";
            }
        });
    }

    public static void sendGeoAck(XMPushService pushService, XmPushActionContainer container, boolean isGeoReceived, boolean isGeoShowed, boolean isGeoPassed) {
        sendGeoAck(pushService, container, isGeoReceived, isGeoShowed, isGeoPassed, false);
    }

    public static void sendGeoAck(XMPushService pushService, XmPushActionContainer container, boolean isGeoReceived, boolean isGeoShowed, boolean isGeoPassed, boolean isGeoUnauthorized) {
        final XMPushService xMPushService = pushService;
        final XmPushActionContainer xmPushActionContainer = container;
        final boolean z = isGeoReceived;
        final boolean z2 = isGeoShowed;
        final boolean z3 = isGeoPassed;
        final boolean z4 = isGeoUnauthorized;
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(xMPushService, xmPushActionContainer, z, z2, z3);
                    if (z4) {
                        ackContainer.getMetaInfo().putToExtra("permission_to_location", PushServiceConstants.GEO_VALUE_AUTHORIZATION_NOT_GRANT);
                    }
                    MIPushHelper.sendPacket(xMPushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    xMPushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send wrong message ack for message.";
            }
        });
    }

    public static XmPushActionContainer constructAckMessage(Context context, XmPushActionContainer container) {
        return constructAckMessage(context, container, false, false, false);
    }

    public static XmPushActionContainer constructAckMessage(Context context, XmPushActionContainer container, boolean isGeoReceived, boolean isGeoShowed, boolean isGeoPassed) {
        XmPushActionAckMessage ackMessage = new XmPushActionAckMessage();
        ackMessage.setAppId(container.getAppid());
        PushMetaInfo metaInfo = container.getMetaInfo();
        if (metaInfo != null) {
            ackMessage.setId(metaInfo.getId());
            ackMessage.setMessageTs(metaInfo.getMessageTs());
            if (!TextUtils.isEmpty(metaInfo.getTopic())) {
                ackMessage.setTopic(metaInfo.getTopic());
            }
        }
        ackMessage.setDeviceStatus(XmPushThriftSerializeUtils.getDeviceStatus(context, container));
        ackMessage.setGeoMsgStatus(XmPushThriftSerializeUtils.getGeoMsgStatus(isGeoReceived, isGeoShowed, isGeoPassed));
        XmPushActionContainer actionContainer = MIPushHelper.generateRequestContainer(container.getPackageName(), container.getAppid(), ackMessage, ActionType.AckMessage);
        PushMetaInfo actionMetaInfo = container.getMetaInfo().deepCopy();
        actionMetaInfo.putToExtra("mat", Long.toString(System.currentTimeMillis()));
        actionContainer.setMetaInfo(actionMetaInfo);
        return actionContainer;
    }

    private static boolean isIntentAvailable(Context context, Intent intent) {
        try {
            List<ResolveInfo> resolveInfos = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (resolveInfos == null || resolveInfos.isEmpty()) {
                return false;
            }
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public static boolean shouldGeoLocalCheck(PushMetaInfo metaInfo) {
        if (metaInfo == null) {
            return false;
        }
        Map<String, String> extra = metaInfo.getExtra();
        if (extra != null) {
            return TextUtils.equals("1", (CharSequence) extra.get("__geo_local_check"));
        }
        return false;
    }
}
