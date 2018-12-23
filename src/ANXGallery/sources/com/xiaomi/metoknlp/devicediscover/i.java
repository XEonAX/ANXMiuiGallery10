package com.xiaomi.metoknlp.devicediscover;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.net.DhcpInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* compiled from: DiscoverUtils */
class i {
    public static DhcpInfo b(Context context) {
        if (context == null) {
            return null;
        }
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (wifiManager == null || !wifiManager.isWifiEnabled()) {
            return null;
        }
        DhcpInfo dhcpInfo;
        try {
            dhcpInfo = context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", context.getPackageName()) == 0 ? wifiManager.getDhcpInfo() : null;
        } catch (Exception e) {
            dhcpInfo = null;
        }
        return dhcpInfo;
    }

    public static String c(Context context) {
        try {
            DhcpInfo b = b(context);
            if (b == null) {
                return null;
            }
            return intToInetAddress(b.gateway).getHostAddress();
        } catch (Exception e) {
            return null;
        }
    }

    public static String d(Context context) {
        try {
            DhcpInfo b = b(context);
            if (b == null) {
                return null;
            }
            return intToInetAddress(b.serverAddress).getHostAddress();
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(Context context, int i) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager == null || !wifiManager.isWifiEnabled()) {
                return null;
            }
            WifiInfo connectionInfo;
            try {
                if (context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", context.getPackageName()) == 0) {
                    connectionInfo = wifiManager.getConnectionInfo();
                } else {
                    connectionInfo = null;
                }
            } catch (Exception e) {
                connectionInfo = null;
            }
            if (connectionInfo == null) {
                return null;
            }
            if (i == 0) {
                return connectionInfo.getMacAddress();
            }
            if (i == 1) {
                return connectionInfo.getBSSID();
            }
            if (i == 2) {
                return l(connectionInfo.getSSID());
            }
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    private static String l(String str) {
        if (str.startsWith("\"") && str.endsWith("\"")) {
            return str.substring(1, str.length() - 1);
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0046 A:{SYNTHETIC, Splitter: B:25:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0050 A:{SYNTHETIC, Splitter: B:31:0x0050} */
    public static java.lang.String e(android.content.Context r6) {
        /*
        r0 = 0;
        r0 = a(r6, r0);
        if (r0 == 0) goto L_0x0015;
    L_0x0007:
        r1 = r0.isEmpty();
        if (r1 != 0) goto L_0x0015;
    L_0x000d:
        r1 = "02:00:00:00:00:00";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x0037;
    L_0x0015:
        r2 = 0;
        r1 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r3 = new char[r1];	 Catch:{ FileNotFoundException -> 0x0038, Exception -> 0x0042, all -> 0x004c }
        r1 = new java.io.FileReader;	 Catch:{ FileNotFoundException -> 0x0038, Exception -> 0x0042, all -> 0x004c }
        r4 = "/sys/class/net/wlan0/address";
        r1.<init>(r4);	 Catch:{ FileNotFoundException -> 0x0038, Exception -> 0x0042, all -> 0x004c }
        r2 = 0;
        r4 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r2 = r1.read(r3, r2, r4);	 Catch:{ FileNotFoundException -> 0x005c, Exception -> 0x005a, all -> 0x0058 }
        r4 = new java.lang.String;	 Catch:{ FileNotFoundException -> 0x005c, Exception -> 0x005a, all -> 0x0058 }
        r5 = 0;
        r4.<init>(r3, r5, r2);	 Catch:{ FileNotFoundException -> 0x005c, Exception -> 0x005a, all -> 0x0058 }
        r0 = r4.trim();	 Catch:{ FileNotFoundException -> 0x005c, Exception -> 0x005a, all -> 0x0058 }
        if (r1 == 0) goto L_0x0037;
    L_0x0034:
        r1.close();	 Catch:{ Exception -> 0x0054 }
    L_0x0037:
        return r0;
    L_0x0038:
        r1 = move-exception;
        r1 = r2;
    L_0x003a:
        if (r1 == 0) goto L_0x0037;
    L_0x003c:
        r1.close();	 Catch:{ Exception -> 0x0040 }
        goto L_0x0037;
    L_0x0040:
        r1 = move-exception;
        goto L_0x0037;
    L_0x0042:
        r1 = move-exception;
        r1 = r2;
    L_0x0044:
        if (r1 == 0) goto L_0x0037;
    L_0x0046:
        r1.close();	 Catch:{ Exception -> 0x004a }
        goto L_0x0037;
    L_0x004a:
        r1 = move-exception;
        goto L_0x0037;
    L_0x004c:
        r0 = move-exception;
        r1 = r2;
    L_0x004e:
        if (r1 == 0) goto L_0x0053;
    L_0x0050:
        r1.close();	 Catch:{ Exception -> 0x0056 }
    L_0x0053:
        throw r0;
    L_0x0054:
        r1 = move-exception;
        goto L_0x0037;
    L_0x0056:
        r1 = move-exception;
        goto L_0x0053;
    L_0x0058:
        r0 = move-exception;
        goto L_0x004e;
    L_0x005a:
        r2 = move-exception;
        goto L_0x0044;
    L_0x005c:
        r2 = move-exception;
        goto L_0x003a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.metoknlp.devicediscover.i.e(android.content.Context):java.lang.String");
    }

    public static void a(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences("devicediscover", 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public static String b(Context context, String str, String str2) {
        return context.getSharedPreferences("devicediscover", 0).getString(str, str2);
    }

    public static InetAddress intToInetAddress(int i) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)});
        } catch (UnknownHostException e) {
            throw new AssertionError();
        }
    }
}
