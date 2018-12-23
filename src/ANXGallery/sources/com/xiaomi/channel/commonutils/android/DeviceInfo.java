package com.xiaomi.channel.commonutils.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.FileLocker;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class DeviceInfo {
    private static String sCachedDeviceId = null;
    private static String sCachedIMEI = null;
    private static String sCachedSimpleDeviceId = null;
    private static String sCachedSubIMEIS = "";
    private static volatile boolean sVirtDevIDChecked = false;
    private static String sVirtDevId = null;

    public static String getDeviceId(Context context, boolean acceptEmpty) {
        if (sCachedDeviceId == null) {
            String deviceId = "";
            if (!MIUIUtils.isGDPREnable()) {
                deviceId = acceptEmpty ? blockingGetIMEI(context) : blockingGetIMEIWhenDeviceRegister(context);
            }
            String str = "";
            sCachedDeviceId = "a-" + XMStringUtils.getSHA1Digest(deviceId + getAndroidId(context) + getSerialNum());
        }
        return sCachedDeviceId;
    }

    public static String getDeviceId1(Context context) {
        String str = "";
        return "a-" + XMStringUtils.getSHA1Digest(null + getAndroidId(context) + null);
    }

    public static String getGaid(Context context) {
        try {
            return GoogleAdvertisingClient.getAdvertisingIdInfo(context).getId();
        } catch (Exception e) {
            MyLog.w("failure to get gaid:" + e.getMessage());
            return null;
        }
    }

    private static boolean isSupportVDevid(Context context) {
        boolean isSupoort = false;
        if (!PermissionUtils.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") || MIUIUtils.isMIUI()) {
            return false;
        }
        if (VERSION.SDK_INT >= 26) {
            isSupoort = true;
        }
        if (isSupoort) {
            return isSupoort;
        }
        return SystemUtils.isDebuggable(context);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    public static java.lang.String getVirtDevId(android.content.Context r8) {
        /*
        r6 = isSupportVDevid(r8);
        if (r6 != 0) goto L_0x0008;
    L_0x0006:
        r6 = 0;
    L_0x0007:
        return r6;
    L_0x0008:
        r6 = sVirtDevId;
        r6 = android.text.TextUtils.isEmpty(r6);
        if (r6 != 0) goto L_0x0013;
    L_0x0010:
        r6 = sVirtDevId;
        goto L_0x0007;
    L_0x0013:
        r0 = new java.io.File;
        r6 = r8.getFilesDir();
        r7 = ".vdevid";
        r0.<init>(r6, r7);
        r6 = com.xiaomi.channel.commonutils.file.IOUtils.fileToStr(r0);
        sVirtDevId = r6;
        r6 = sVirtDevId;
        r6 = android.text.TextUtils.isEmpty(r6);
        if (r6 != 0) goto L_0x002f;
    L_0x002c:
        r6 = sVirtDevId;
        goto L_0x0007;
    L_0x002f:
        r5 = 0;
        r2 = new java.io.File;	 Catch:{ IOException -> 0x005a }
        r6 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ IOException -> 0x005a }
        r7 = "/Xiaomi/";
        r2.<init>(r6, r7);	 Catch:{ IOException -> 0x005a }
        r1 = new java.io.File;	 Catch:{ IOException -> 0x005a }
        r6 = ".vdevid";
        r1.<init>(r2, r6);	 Catch:{ IOException -> 0x005a }
        r5 = com.xiaomi.channel.commonutils.file.FileLocker.lock(r8, r1);	 Catch:{ IOException -> 0x005a }
        r6 = "";
        sVirtDevId = r6;	 Catch:{ IOException -> 0x005a }
        r4 = com.xiaomi.channel.commonutils.file.IOUtils.fileToStr(r1);	 Catch:{ IOException -> 0x005a }
        if (r4 == 0) goto L_0x0052;
    L_0x0050:
        sVirtDevId = r4;	 Catch:{ IOException -> 0x005a }
    L_0x0052:
        r6 = sVirtDevId;	 Catch:{ IOException -> 0x005a }
        if (r5 == 0) goto L_0x0007;
    L_0x0056:
        r5.unlock();
        goto L_0x0007;
    L_0x005a:
        r3 = move-exception;
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x007d }
        r6.<init>();	 Catch:{ all -> 0x007d }
        r7 = "getVDevID failure :";
        r6 = r6.append(r7);	 Catch:{ all -> 0x007d }
        r7 = r3.getMessage();	 Catch:{ all -> 0x007d }
        r6 = r6.append(r7);	 Catch:{ all -> 0x007d }
        r6 = r6.toString();	 Catch:{ all -> 0x007d }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r6);	 Catch:{ all -> 0x007d }
        if (r5 == 0) goto L_0x007a;
    L_0x0077:
        r5.unlock();
    L_0x007a:
        r6 = sVirtDevId;
        goto L_0x0007;
    L_0x007d:
        r6 = move-exception;
        if (r5 == 0) goto L_0x0083;
    L_0x0080:
        r5.unlock();
    L_0x0083:
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.android.DeviceInfo.getVirtDevId(android.content.Context):java.lang.String");
    }

    public static String checkVirtDevId(Context ctx) {
        if (!isSupportVDevid(ctx) || sVirtDevIDChecked) {
            return null;
        }
        sVirtDevIDChecked = true;
        String deviceid = null;
        String localID = IOUtils.fileToStr(new File(ctx.getFilesDir(), ".vdevid"));
        FileLocker lock = null;
        try {
            File deviceFile = new File(new File(Environment.getExternalStorageDirectory(), "/Xiaomi/"), ".vdevid");
            lock = FileLocker.lock(ctx, deviceFile);
            deviceid = IOUtils.fileToStr(deviceFile);
            if (lock != null) {
                lock.unlock();
            }
        } catch (IOException e) {
            MyLog.w("check id failure :" + e.getMessage());
            if (lock != null) {
                lock.unlock();
            }
        } catch (Throwable th) {
            if (lock != null) {
                lock.unlock();
            }
        }
        if (TextUtils.isEmpty(localID)) {
            MyLog.w("empty local vid");
            return "F*";
        }
        sVirtDevId = localID;
        if (TextUtils.isEmpty(deviceid) || deviceid.length() > 128) {
            MyLog.w("recover vid :" + deviceid);
            updateVirtDevId(ctx, localID);
        } else if (!TextUtils.equals(localID, deviceid)) {
            MyLog.w("vid changed, need sync");
            return deviceid;
        }
        MyLog.v("vdevid = " + sVirtDevId + " " + deviceid);
        return null;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Failed to extract finally block: empty outs */
    public static void updateVirtDevId(android.content.Context r7, java.lang.String r8) {
        /*
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "update vdevid = ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        com.xiaomi.channel.commonutils.logger.MyLog.v(r5);
        r5 = android.text.TextUtils.isEmpty(r8);
        if (r5 == 0) goto L_0x001e;
    L_0x001d:
        return;
    L_0x001e:
        sVirtDevId = r8;
        r4 = 0;
        r5 = isSupportVDevid(r7);	 Catch:{ IOException -> 0x006a }
        if (r5 == 0) goto L_0x0054;
    L_0x0027:
        r1 = new java.io.File;	 Catch:{ IOException -> 0x006a }
        r5 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ IOException -> 0x006a }
        r6 = "/Xiaomi/";
        r1.<init>(r5, r6);	 Catch:{ IOException -> 0x006a }
        r5 = r1.exists();	 Catch:{ IOException -> 0x006a }
        if (r5 == 0) goto L_0x0041;
    L_0x0038:
        r5 = r1.isFile();	 Catch:{ IOException -> 0x006a }
        if (r5 == 0) goto L_0x0041;
    L_0x003e:
        r1.delete();	 Catch:{ IOException -> 0x006a }
    L_0x0041:
        r0 = new java.io.File;	 Catch:{ IOException -> 0x006a }
        r5 = ".vdevid";
        r0.<init>(r1, r5);	 Catch:{ IOException -> 0x006a }
        r4 = com.xiaomi.channel.commonutils.file.FileLocker.lock(r7, r0);	 Catch:{ IOException -> 0x006a }
        com.xiaomi.channel.commonutils.file.IOUtils.remove(r0);	 Catch:{ IOException -> 0x006a }
        r5 = sVirtDevId;	 Catch:{ IOException -> 0x006a }
        com.xiaomi.channel.commonutils.file.IOUtils.strToFile(r0, r5);	 Catch:{ IOException -> 0x006a }
    L_0x0054:
        r3 = new java.io.File;	 Catch:{ IOException -> 0x006a }
        r5 = r7.getFilesDir();	 Catch:{ IOException -> 0x006a }
        r6 = ".vdevid";
        r3.<init>(r5, r6);	 Catch:{ IOException -> 0x006a }
        r5 = sVirtDevId;	 Catch:{ IOException -> 0x006a }
        com.xiaomi.channel.commonutils.file.IOUtils.strToFile(r3, r5);	 Catch:{ IOException -> 0x006a }
        if (r4 == 0) goto L_0x001d;
    L_0x0066:
        r4.unlock();
        goto L_0x001d;
    L_0x006a:
        r2 = move-exception;
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x008c }
        r5.<init>();	 Catch:{ all -> 0x008c }
        r6 = "update vdevid failure :";
        r5 = r5.append(r6);	 Catch:{ all -> 0x008c }
        r6 = r2.getMessage();	 Catch:{ all -> 0x008c }
        r5 = r5.append(r6);	 Catch:{ all -> 0x008c }
        r5 = r5.toString();	 Catch:{ all -> 0x008c }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r5);	 Catch:{ all -> 0x008c }
        if (r4 == 0) goto L_0x001d;
    L_0x0088:
        r4.unlock();
        goto L_0x001d;
    L_0x008c:
        r5 = move-exception;
        if (r4 == 0) goto L_0x0092;
    L_0x008f:
        r4.unlock();
    L_0x0092:
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.android.DeviceInfo.updateVirtDevId(android.content.Context, java.lang.String):void");
    }

    public static String getSerialNum() {
        if (VERSION.SDK_INT > 8 && VERSION.SDK_INT < 26) {
            return Build.SERIAL;
        }
        if (VERSION.SDK_INT >= 26) {
            return (String) JavaCalls.callStaticMethod("android.os.Build", "getSerial", null);
        }
        return null;
    }

    public static String getAndroidId(Context context) {
        String androidId = null;
        try {
            return Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable e) {
            MyLog.e(e);
            return androidId;
        }
    }

    private static String blockingGetIMEIWhenDeviceRegister(Context context) {
        int cnt = 10;
        String deviceId = quicklyGetIMEI(context);
        while (TextUtils.isEmpty(deviceId)) {
            int cnt2 = cnt - 1;
            if (cnt <= 0) {
                cnt = cnt2;
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            deviceId = quicklyGetIMEI(context);
            cnt = cnt2;
        }
        return deviceId;
    }

    public static String blockingGetIMEI(Context context) {
        String deviceId = quicklyGetIMEI(context);
        int cnt = 10;
        while (deviceId == null) {
            int cnt2 = cnt - 1;
            if (cnt <= 0) {
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            deviceId = quicklyGetIMEI(context);
            cnt = cnt2;
        }
        return deviceId;
    }

    public static String quicklyGetIMEI(Context context) {
        if (MIUIUtils.isGDPREnable()) {
            return "";
        }
        if (sCachedIMEI != null) {
            return sCachedIMEI;
        }
        String deviceId = null;
        try {
            if (MIUIUtils.isMIUI()) {
                String className = "miui.telephony.TelephonyManager";
                Object miuiTelephonyManager = JavaCalls.callStaticMethod("miui.telephony.TelephonyManager", "getDefault", new Object[0]);
                if (miuiTelephonyManager != null) {
                    Object deviceIdObj = JavaCalls.callMethod(miuiTelephonyManager, "getMiuiDeviceId", new Object[0]);
                    if (deviceIdObj != null && (deviceIdObj instanceof String)) {
                        deviceId = (String) String.class.cast(deviceIdObj);
                    }
                }
            }
            if (deviceId == null && canReadPhoneState(context)) {
                TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
                if (VERSION.SDK_INT < 26) {
                    deviceId = tm.getDeviceId();
                } else if (1 == tm.getPhoneType()) {
                    deviceId = (String) JavaCalls.callMethod(tm, "getImei", null);
                } else if (2 == tm.getPhoneType()) {
                    deviceId = (String) JavaCalls.callMethod(tm, "getMeid", null);
                }
            }
            if (!verifyImei(deviceId)) {
                return "";
            }
            sCachedIMEI = deviceId;
            return deviceId;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    public static String blockingGetSubIMEISMd5(Context context) {
        String subImeisMd5 = quicklyGetSubIMEISMd5(context);
        int cnt = 10;
        while (subImeisMd5 == null) {
            int cnt2 = cnt - 1;
            if (cnt <= 0) {
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            subImeisMd5 = quicklyGetSubIMEISMd5(context);
            cnt = cnt2;
        }
        return subImeisMd5;
    }

    public static String quicklyGetSubIMEIS(Context context) {
        if (MIUIUtils.isGDPREnable()) {
            return "";
        }
        if (VERSION.SDK_INT < 22) {
            return "";
        }
        if (!TextUtils.isEmpty(sCachedSubIMEIS)) {
            return sCachedSubIMEIS;
        }
        if (!canReadPhoneState(context)) {
            return "";
        }
        sCachedIMEI = quicklyGetIMEI(context);
        if (TextUtils.isEmpty(sCachedIMEI)) {
            return "";
        }
        try {
            TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
            Integer count = (Integer) JavaCalls.callMethod(tm, "getPhoneCount", new Object[0]);
            if (count == null || count.intValue() <= 1) {
                return "";
            }
            String subImei = null;
            for (int i = 0; i < count.intValue(); i++) {
                if (VERSION.SDK_INT < 26) {
                    subImei = (String) JavaCalls.callMethod(tm, "getDeviceId", Integer.valueOf(i));
                } else if (1 == tm.getPhoneType()) {
                    subImei = (String) JavaCalls.callMethod(tm, "getImei", Integer.valueOf(i));
                } else if (2 == tm.getPhoneType()) {
                    subImei = (String) JavaCalls.callMethod(tm, "getMeid", Integer.valueOf(i));
                }
                if (!(TextUtils.isEmpty(subImei) || TextUtils.equals(sCachedIMEI, subImei))) {
                    sCachedSubIMEIS += subImei + ",";
                }
            }
            sCachedSubIMEIS = sCachedSubIMEIS.substring(0, sCachedSubIMEIS.length() - 1);
            return sCachedSubIMEIS;
        } catch (Exception e) {
            MyLog.e(e.toString());
            return "";
        }
    }

    public static String quicklyGetSubIMEISMd5(Context context) {
        quicklyGetSubIMEIS(context);
        if (TextUtils.isEmpty(sCachedSubIMEIS)) {
            return "";
        }
        String result = "";
        for (String subImei : sCachedSubIMEIS.split(",")) {
            if (verifyImei(subImei)) {
                result = result + XMStringUtils.getMd5Digest(subImei) + ",";
            }
        }
        int length = result.length();
        if (length > 0) {
            return result.substring(0, length - 1);
        }
        return result;
    }

    public static ArrayList<String> getIMEIList(Context context) {
        sCachedIMEI = quicklyGetIMEI(context);
        sCachedSubIMEIS = quicklyGetSubIMEIS(context);
        if (TextUtils.isEmpty(sCachedIMEI)) {
            return null;
        }
        ArrayList<String> imeiList = new ArrayList();
        imeiList.add(sCachedIMEI);
        if (TextUtils.isEmpty(sCachedSubIMEIS)) {
            return imeiList;
        }
        for (String subImei : sCachedSubIMEIS.split(",")) {
            imeiList.add(subImei);
        }
        return imeiList;
    }

    private static boolean canReadPhoneState(Context context) {
        String permissionName = "android.permission.READ_PHONE_STATE";
        return context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0;
    }

    public static synchronized String getSimpleDeviceId(Context context) {
        String str;
        synchronized (DeviceInfo.class) {
            if (sCachedSimpleDeviceId != null) {
                str = sCachedSimpleDeviceId;
            } else {
                String androidId = getAndroidId(context);
                sCachedSimpleDeviceId = XMStringUtils.getSHA1Digest(androidId + getSerialNum());
                str = sCachedSimpleDeviceId;
            }
        }
        return str;
    }

    public static String getSimOperatorName(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimOperatorName();
    }

    @TargetApi(17)
    public static int getSpaceId() {
        if (VERSION.SDK_INT < 17) {
            return -1;
        }
        Object myUserId = JavaCalls.callStaticMethod("android.os.UserHandle", "myUserId", new Object[0]);
        if (myUserId != null) {
            return ((Integer) Integer.class.cast(myUserId)).intValue();
        }
        return -1;
    }

    public static String getMacAddress(Context context) {
        if (MIUIUtils.isGDPREnable()) {
            return "";
        }
        try {
            String macString = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (verifyMac(macString)) {
                return XMStringUtils.toUpperCase(macString);
            }
            return "";
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    private static boolean verifyImei(String imeiString) {
        if (!TextUtils.isEmpty(imeiString) && imeiString.length() <= 15 && imeiString.length() >= 14 && XMStringUtils.isNumberAndLetter(imeiString) && !XMStringUtils.isTheSameChars(imeiString)) {
            return true;
        }
        return false;
    }

    private static boolean verifyMac(String macStr) {
        if (TextUtils.isEmpty(macStr) || macStr.length() != 17 || !Pattern.compile("^([A-Fa-f0-9]{2}[-,:]){5}[A-Fa-f0-9]{2}$").matcher(macStr).matches()) {
            return false;
        }
        boolean isInvalid = true;
        char char0 = macStr.charAt(0);
        if (char0 == '0' || char0 == 'f' || char0 == 'F') {
            int i = 1;
            while (i < macStr.length()) {
                if (macStr.charAt(i) != char0) {
                    isInvalid = false;
                    break;
                }
                if (i < macStr.length() - 1 && (macStr.charAt(i + 1) == '-' || macStr.charAt(i + 1) == ':')) {
                    i++;
                }
                i++;
            }
        }
        if (isInvalid) {
            return false;
        }
        return true;
    }
}
