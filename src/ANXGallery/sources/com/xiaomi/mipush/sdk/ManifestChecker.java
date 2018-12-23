package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class ManifestChecker {

    public static class IllegalManifestException extends RuntimeException {
        private static final long serialVersionUID = 1;

        public IllegalManifestException(String message) {
            super(message);
        }
    }

    public static class ServiceCheckInfo {
        public boolean enabled;
        public boolean exported;
        public String permission;
        public String serviceName;

        public ServiceCheckInfo(String serviceName, boolean enabled, boolean exported, String permission) {
            this.serviceName = serviceName;
            this.enabled = enabled;
            this.exported = exported;
            this.permission = permission;
        }
    }

    public static void asynCheckManifest(final Context context) {
        new Thread(new Runnable() {
            public void run() {
                try {
                    PackageInfo pkgInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4612);
                    ManifestChecker.checkReceivers(context);
                    ManifestChecker.checkServices(context, pkgInfo);
                    ManifestChecker.checkPermissions(context, pkgInfo);
                } catch (Throwable e) {
                    Log.e("ManifestChecker", "", e);
                }
            }
        }).start();
    }

    private static void checkPermissions(Context context, PackageInfo pkgInfo) {
        Set<String> requiredPermsSet = new HashSet();
        requiredPermsSet.addAll(Arrays.asList(new String[]{"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", context.getPackageName() + ".permission.MIPUSH_RECEIVE", "android.permission.ACCESS_WIFI_STATE", "android.permission.READ_PHONE_STATE", "android.permission.GET_TASKS", "android.permission.VIBRATE"}));
        boolean isDefined = false;
        if (pkgInfo.permissions != null) {
            for (PermissionInfo pinfo : pkgInfo.permissions) {
                if (selfDefinedPerm.equals(pinfo.name)) {
                    isDefined = true;
                    break;
                }
            }
        }
        if (isDefined) {
            if (pkgInfo.requestedPermissions != null) {
                for (String permName : pkgInfo.requestedPermissions) {
                    if (!TextUtils.isEmpty(permName) && requiredPermsSet.contains(permName)) {
                        requiredPermsSet.remove(permName);
                        if (requiredPermsSet.isEmpty()) {
                            break;
                        }
                    }
                }
            }
            if (!requiredPermsSet.isEmpty()) {
                throw new IllegalManifestException(String.format("<uses-permission android:name=\"%1$s\"/> is missing in AndroidManifest.", new Object[]{requiredPermsSet.iterator().next()}));
            }
            return;
        }
        throw new IllegalManifestException(String.format("<permission android:name=\"%1$s\" .../> is undefined in AndroidManifest.", new Object[]{selfDefinedPerm}));
    }

    /* JADX WARNING: Missing block: B:3:0x0051, code:
            if (containAnyService(r14, new java.lang.String[]{"com.xiaomi.push.service.XMJobService", "com.xiaomi.push.service.XMPushService"}) != false) goto L_0x0053;
     */
    private static void checkServices(android.content.Context r13, android.content.pm.PackageInfo r14) {
        /*
        r1 = new java.util.HashMap;
        r1.<init>();
        r6 = new java.util.HashMap;
        r6.<init>();
        r7 = com.xiaomi.mipush.sdk.PushMessageHandler.class;
        r7 = r7.getCanonicalName();
        r8 = new com.xiaomi.mipush.sdk.ManifestChecker$ServiceCheckInfo;
        r9 = com.xiaomi.mipush.sdk.PushMessageHandler.class;
        r9 = r9.getCanonicalName();
        r10 = 1;
        r11 = 1;
        r12 = "";
        r8.<init>(r9, r10, r11, r12);
        r6.put(r7, r8);
        r7 = com.xiaomi.mipush.sdk.MessageHandleService.class;
        r7 = r7.getCanonicalName();
        r8 = new com.xiaomi.mipush.sdk.ManifestChecker$ServiceCheckInfo;
        r9 = com.xiaomi.mipush.sdk.MessageHandleService.class;
        r9 = r9.getCanonicalName();
        r10 = 1;
        r11 = 0;
        r12 = "";
        r8.<init>(r9, r10, r11, r12);
        r6.put(r7, r8);
        r7 = com.xiaomi.mipush.sdk.MiPushClient.shouldUseMIUIPush(r13);
        if (r7 == 0) goto L_0x0053;
    L_0x0040:
        r7 = 2;
        r7 = new java.lang.String[r7];
        r8 = 0;
        r9 = "com.xiaomi.push.service.XMJobService";
        r7[r8] = r9;
        r8 = 1;
        r9 = "com.xiaomi.push.service.XMPushService";
        r7[r8] = r9;
        r7 = containAnyService(r14, r7);
        if (r7 == 0) goto L_0x0073;
    L_0x0053:
        r7 = "com.xiaomi.push.service.XMJobService";
        r8 = new com.xiaomi.mipush.sdk.ManifestChecker$ServiceCheckInfo;
        r9 = "com.xiaomi.push.service.XMJobService";
        r10 = 1;
        r11 = 0;
        r12 = "android.permission.BIND_JOB_SERVICE";
        r8.<init>(r9, r10, r11, r12);
        r6.put(r7, r8);
        r7 = "com.xiaomi.push.service.XMPushService";
        r8 = new com.xiaomi.mipush.sdk.ManifestChecker$ServiceCheckInfo;
        r9 = "com.xiaomi.push.service.XMPushService";
        r10 = 1;
        r11 = 0;
        r12 = "";
        r8.<init>(r9, r10, r11, r12);
        r6.put(r7, r8);
    L_0x0073:
        r7 = com.xiaomi.mipush.sdk.MiPushClient.getOpenFCMPush();
        if (r7 == 0) goto L_0x0099;
    L_0x0079:
        r7 = "com.xiaomi.assemble.control.MiFireBaseInstanceIdService";
        r8 = new com.xiaomi.mipush.sdk.ManifestChecker$ServiceCheckInfo;
        r9 = "com.xiaomi.assemble.control.MiFireBaseInstanceIdService";
        r10 = 1;
        r11 = 0;
        r12 = "";
        r8.<init>(r9, r10, r11, r12);
        r6.put(r7, r8);
        r7 = "com.xiaomi.assemble.control.MiFirebaseMessagingService";
        r8 = new com.xiaomi.mipush.sdk.ManifestChecker$ServiceCheckInfo;
        r9 = "com.xiaomi.assemble.control.MiFirebaseMessagingService";
        r10 = 1;
        r11 = 0;
        r12 = "";
        r8.<init>(r9, r10, r11, r12);
        r6.put(r7, r8);
    L_0x0099:
        r7 = com.xiaomi.mipush.sdk.MiPushClient.getOpenOPPOPush();
        if (r7 == 0) goto L_0x00af;
    L_0x009f:
        r7 = "com.xiaomi.assemble.control.COSPushMessageService";
        r8 = new com.xiaomi.mipush.sdk.ManifestChecker$ServiceCheckInfo;
        r9 = "com.xiaomi.assemble.control.COSPushMessageService";
        r10 = 1;
        r11 = 1;
        r12 = "com.coloros.mcs.permission.SEND_MCS_MESSAGE";
        r8.<init>(r9, r10, r11, r12);
        r6.put(r7, r8);
    L_0x00af:
        r7 = r14.services;
        if (r7 == 0) goto L_0x0149;
    L_0x00b3:
        r8 = r14.services;
        r9 = r8.length;
        r7 = 0;
    L_0x00b7:
        if (r7 >= r9) goto L_0x0149;
    L_0x00b9:
        r4 = r8[r7];
        r10 = r4.name;
        r10 = android.text.TextUtils.isEmpty(r10);
        if (r10 != 0) goto L_0x016d;
    L_0x00c3:
        r10 = r4.name;
        r10 = r6.containsKey(r10);
        if (r10 == 0) goto L_0x016d;
    L_0x00cb:
        r10 = r4.name;
        r0 = r6.remove(r10);
        r0 = (com.xiaomi.mipush.sdk.ManifestChecker.ServiceCheckInfo) r0;
        r2 = r0.enabled;
        r3 = r0.exported;
        r5 = r0.permission;
        r10 = r4.enabled;
        if (r2 == r10) goto L_0x00f8;
    L_0x00dd:
        r7 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;
        r8 = "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b.";
        r9 = 2;
        r9 = new java.lang.Object[r9];
        r10 = 0;
        r11 = r4.name;
        r9[r10] = r11;
        r10 = 1;
        r11 = java.lang.Boolean.valueOf(r2);
        r9[r10] = r11;
        r8 = java.lang.String.format(r8, r9);
        r7.<init>(r8);
        throw r7;
    L_0x00f8:
        r10 = r4.exported;
        if (r3 == r10) goto L_0x0117;
    L_0x00fc:
        r7 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;
        r8 = "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b.";
        r9 = 2;
        r9 = new java.lang.Object[r9];
        r10 = 0;
        r11 = r4.name;
        r9[r10] = r11;
        r10 = 1;
        r11 = java.lang.Boolean.valueOf(r3);
        r9[r10] = r11;
        r8 = java.lang.String.format(r8, r9);
        r7.<init>(r8);
        throw r7;
    L_0x0117:
        r10 = android.text.TextUtils.isEmpty(r5);
        if (r10 != 0) goto L_0x013c;
    L_0x011d:
        r10 = r4.permission;
        r10 = android.text.TextUtils.equals(r5, r10);
        if (r10 != 0) goto L_0x013c;
    L_0x0125:
        r7 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;
        r8 = "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong permission attribute, which should be android:permission=\"%2$s\".";
        r9 = 2;
        r9 = new java.lang.Object[r9];
        r10 = 0;
        r11 = r4.name;
        r9[r10] = r11;
        r10 = 1;
        r9[r10] = r5;
        r8 = java.lang.String.format(r8, r9);
        r7.<init>(r8);
        throw r7;
    L_0x013c:
        r10 = r4.name;
        r11 = r4.processName;
        r1.put(r10, r11);
        r10 = r6.isEmpty();
        if (r10 == 0) goto L_0x016d;
    L_0x0149:
        r7 = r6.isEmpty();
        if (r7 != 0) goto L_0x0171;
    L_0x014f:
        r7 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;
        r8 = "<service android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest.";
        r9 = 1;
        r9 = new java.lang.Object[r9];
        r10 = 0;
        r11 = r6.keySet();
        r11 = r11.iterator();
        r11 = r11.next();
        r9[r10] = r11;
        r8 = java.lang.String.format(r8, r9);
        r7.<init>(r8);
        throw r7;
    L_0x016d:
        r7 = r7 + 1;
        goto L_0x00b7;
    L_0x0171:
        r7 = com.xiaomi.mipush.sdk.PushMessageHandler.class;
        r7 = r7.getCanonicalName();
        r7 = r1.get(r7);
        r7 = (java.lang.CharSequence) r7;
        r8 = com.xiaomi.mipush.sdk.MessageHandleService.class;
        r8 = r8.getCanonicalName();
        r8 = r1.get(r8);
        r8 = (java.lang.CharSequence) r8;
        r7 = android.text.TextUtils.equals(r7, r8);
        if (r7 != 0) goto L_0x01b0;
    L_0x018f:
        r7 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;
        r8 = "\"%1$s\" and \"%2$s\" must be running in the same process.";
        r9 = 2;
        r9 = new java.lang.Object[r9];
        r10 = 0;
        r11 = com.xiaomi.mipush.sdk.PushMessageHandler.class;
        r11 = r11.getCanonicalName();
        r9[r10] = r11;
        r10 = 1;
        r11 = com.xiaomi.mipush.sdk.MessageHandleService.class;
        r11 = r11.getCanonicalName();
        r9[r10] = r11;
        r8 = java.lang.String.format(r8, r9);
        r7.<init>(r8);
        throw r7;
    L_0x01b0:
        r7 = "com.xiaomi.push.service.XMJobService";
        r7 = r1.containsKey(r7);
        if (r7 == 0) goto L_0x01ef;
    L_0x01b8:
        r7 = "com.xiaomi.push.service.XMPushService";
        r7 = r1.containsKey(r7);
        if (r7 == 0) goto L_0x01ef;
    L_0x01c0:
        r7 = "com.xiaomi.push.service.XMJobService";
        r7 = r1.get(r7);
        r7 = (java.lang.CharSequence) r7;
        r8 = "com.xiaomi.push.service.XMPushService";
        r8 = r1.get(r8);
        r8 = (java.lang.CharSequence) r8;
        r7 = android.text.TextUtils.equals(r7, r8);
        if (r7 != 0) goto L_0x01ef;
    L_0x01d6:
        r7 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;
        r8 = "\"%1$s\" and \"%2$s\" must be running in the same process.";
        r9 = 2;
        r9 = new java.lang.Object[r9];
        r10 = 0;
        r11 = "com.xiaomi.push.service.XMJobService";
        r9[r10] = r11;
        r10 = 1;
        r11 = "com.xiaomi.push.service.XMPushService";
        r9[r10] = r11;
        r8 = java.lang.String.format(r8, r9);
        r7.<init>(r8);
        throw r7;
    L_0x01ef:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.ManifestChecker.checkServices(android.content.Context, android.content.pm.PackageInfo):void");
    }

    private static boolean containAnyService(PackageInfo pkgInfo, String[] serviceNames) {
        for (ServiceInfo info : pkgInfo.services) {
            if (containString(serviceNames, info.name)) {
                return true;
            }
        }
        return false;
    }

    private static boolean containString(String[] array, String str) {
        if (array == null || str == null) {
            return false;
        }
        for (String item : array) {
            if (TextUtils.equals(item, str)) {
                return true;
            }
        }
        return false;
    }

    private static ActivityInfo findReceiverInfo(PackageManager manager, Intent intent, Class<?> cls) {
        for (ResolveInfo r : manager.queryBroadcastReceivers(intent, 16384)) {
            ActivityInfo info = r.activityInfo;
            if (info != null && cls.getCanonicalName().equals(info.name)) {
                return info;
            }
        }
        return null;
    }

    private static void checkReceiverInfo(ActivityInfo info, Boolean[] properties) {
        if (properties[0].booleanValue() != info.enabled) {
            throw new IllegalManifestException(String.format("<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b.", new Object[]{info.name, properties[0]}));
        } else if (properties[1].booleanValue() != info.exported) {
            throw new IllegalManifestException(String.format("<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b.", new Object[]{info.name, properties[1]}));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x0051 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x007e A:{SYNTHETIC, EDGE_INSN: B:39:0x007e->B:23:0x007e ?: BREAK  } */
    private static void checkReceivers(android.content.Context r14) {
        /*
        r6 = r14.getPackageManager();
        r7 = r14.getPackageName();
        r4 = new android.content.Intent;
        r9 = com.xiaomi.push.service.PushConstants.ACTION_PING_TIMER;
        r4.<init>(r9);
        r4.setPackage(r7);
        r9 = "com.xiaomi.push.service.receivers.PingReceiver";
        r9 = java.lang.Class.forName(r9);	 Catch:{ ClassNotFoundException -> 0x0038 }
        r2 = findReceiverInfo(r6, r4, r9);	 Catch:{ ClassNotFoundException -> 0x0038 }
        r9 = com.xiaomi.mipush.sdk.MiPushClient.shouldUseMIUIPush(r14);	 Catch:{ ClassNotFoundException -> 0x0038 }
        if (r9 != 0) goto L_0x009f;
    L_0x0022:
        if (r2 != 0) goto L_0x0088;
    L_0x0024:
        r9 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;	 Catch:{ ClassNotFoundException -> 0x0038 }
        r10 = "<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest.";
        r11 = 1;
        r11 = new java.lang.Object[r11];	 Catch:{ ClassNotFoundException -> 0x0038 }
        r12 = 0;
        r13 = "com.xiaomi.push.service.receivers.PingReceiver";
        r11[r12] = r13;	 Catch:{ ClassNotFoundException -> 0x0038 }
        r10 = java.lang.String.format(r10, r11);	 Catch:{ ClassNotFoundException -> 0x0038 }
        r9.<init>(r10);	 Catch:{ ClassNotFoundException -> 0x0038 }
        throw r9;	 Catch:{ ClassNotFoundException -> 0x0038 }
    L_0x0038:
        r1 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r1);
    L_0x003c:
        r4 = new android.content.Intent;
        r9 = "com.xiaomi.mipush.RECEIVE_MESSAGE";
        r4.<init>(r9);
        r4.setPackage(r7);
        r9 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        r3 = r6.queryBroadcastReceivers(r4, r9);
        r5 = 0;
        r9 = r3.iterator();
    L_0x0051:
        r10 = r9.hasNext();
        if (r10 == 0) goto L_0x007e;
    L_0x0057:
        r8 = r9.next();
        r8 = (android.content.pm.ResolveInfo) r8;
        r2 = r8.activityInfo;
        if (r2 == 0) goto L_0x00b8;
    L_0x0061:
        r10 = r2.name;	 Catch:{ ClassNotFoundException -> 0x00ba }
        r10 = android.text.TextUtils.isEmpty(r10);	 Catch:{ ClassNotFoundException -> 0x00ba }
        if (r10 != 0) goto L_0x00b8;
    L_0x0069:
        r10 = com.xiaomi.mipush.sdk.PushMessageReceiver.class;
        r11 = r2.name;	 Catch:{ ClassNotFoundException -> 0x00ba }
        r11 = java.lang.Class.forName(r11);	 Catch:{ ClassNotFoundException -> 0x00ba }
        r10 = r10.isAssignableFrom(r11);	 Catch:{ ClassNotFoundException -> 0x00ba }
        if (r10 == 0) goto L_0x00b8;
    L_0x0077:
        r10 = r2.enabled;	 Catch:{ ClassNotFoundException -> 0x00ba }
        if (r10 == 0) goto L_0x00b8;
    L_0x007b:
        r5 = 1;
    L_0x007c:
        if (r5 == 0) goto L_0x0051;
    L_0x007e:
        if (r5 != 0) goto L_0x00bf;
    L_0x0080:
        r9 = new com.xiaomi.mipush.sdk.ManifestChecker$IllegalManifestException;
        r10 = "Receiver: none of the subclasses of PushMessageReceiver is enabled or defined.";
        r9.<init>(r10);
        throw r9;
    L_0x0088:
        r9 = 2;
        r9 = new java.lang.Boolean[r9];	 Catch:{ ClassNotFoundException -> 0x0038 }
        r10 = 0;
        r11 = 1;
        r11 = java.lang.Boolean.valueOf(r11);	 Catch:{ ClassNotFoundException -> 0x0038 }
        r9[r10] = r11;	 Catch:{ ClassNotFoundException -> 0x0038 }
        r10 = 1;
        r11 = 0;
        r11 = java.lang.Boolean.valueOf(r11);	 Catch:{ ClassNotFoundException -> 0x0038 }
        r9[r10] = r11;	 Catch:{ ClassNotFoundException -> 0x0038 }
        checkReceiverInfo(r2, r9);	 Catch:{ ClassNotFoundException -> 0x0038 }
        goto L_0x003c;
    L_0x009f:
        if (r2 == 0) goto L_0x003c;
    L_0x00a1:
        r9 = 2;
        r9 = new java.lang.Boolean[r9];	 Catch:{ ClassNotFoundException -> 0x0038 }
        r10 = 0;
        r11 = 1;
        r11 = java.lang.Boolean.valueOf(r11);	 Catch:{ ClassNotFoundException -> 0x0038 }
        r9[r10] = r11;	 Catch:{ ClassNotFoundException -> 0x0038 }
        r10 = 1;
        r11 = 0;
        r11 = java.lang.Boolean.valueOf(r11);	 Catch:{ ClassNotFoundException -> 0x0038 }
        r9[r10] = r11;	 Catch:{ ClassNotFoundException -> 0x0038 }
        checkReceiverInfo(r2, r9);	 Catch:{ ClassNotFoundException -> 0x0038 }
        goto L_0x003c;
    L_0x00b8:
        r5 = 0;
        goto L_0x007c;
    L_0x00ba:
        r0 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);
        goto L_0x0051;
    L_0x00bf:
        r9 = com.xiaomi.mipush.sdk.MiPushClient.getOpenHmsPush();
        if (r9 == 0) goto L_0x00d3;
    L_0x00c5:
        r9 = "com.huawei.android.push.intent.RECEIVE";
        r10 = "com.xiaomi.assemble.control.HmsPushReceiver";
        checkHmsReceiver(r14, r9, r10);
        r9 = "com.huawei.intent.action.PUSH";
        r10 = "com.huawei.hms.support.api.push.PushEventReceiver";
        checkHmsReceiver(r14, r9, r10);
    L_0x00d3:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.ManifestChecker.checkReceivers(android.content.Context):void");
    }

    private static void checkHmsReceiver(Context context, String action, String className) {
        PackageManager pkgManager = context.getPackageManager();
        String pkgName = context.getPackageName();
        Intent intent = new Intent(action);
        intent.setPackage(pkgName);
        boolean isHave = false;
        for (ResolveInfo r : pkgManager.queryBroadcastReceivers(intent, 16384)) {
            ActivityInfo info = r.activityInfo;
            if (info == null || TextUtils.isEmpty(info.name) || !info.name.equals(className)) {
                isHave = false;
                continue;
            } else {
                isHave = true;
                continue;
            }
            if (isHave) {
                break;
            }
        }
        if (!isHave) {
            throw new IllegalManifestException(String.format("<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest.", new Object[]{className}));
        }
    }
}
