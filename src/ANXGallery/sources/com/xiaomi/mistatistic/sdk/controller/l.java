package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.keyczar.Keyczar;

/* compiled from: NetworkUtils */
public abstract class l {
    private static boolean a;

    /* compiled from: NetworkUtils */
    public interface b {
        void a(String str);
    }

    /* compiled from: NetworkUtils */
    public static final class a extends FilterInputStream {
        private boolean a;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.a) {
                int read = super.read(bArr, i, i2);
                if (read != -1) {
                    return read;
                }
            }
            this.a = true;
            return -1;
        }
    }

    public static void a() {
        a = m.a(d.a(), "enable_network_connection", true);
    }

    public static boolean b() {
        return a;
    }

    public static boolean a(Context context) {
        if (context != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isConnectedOrConnecting();
                }
            } catch (Throwable e) {
                j.a("isNetworkConnected", e);
            }
        }
        return false;
    }

    public static boolean b(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                return 1 == activeNetworkInfo.getType();
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static String c(Context context) {
        if (b(context)) {
            return "WIFI";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return "";
                }
                return (activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName() + "-" + activeNetworkInfo.getExtraInfo()).toLowerCase();
            } catch (Exception e) {
                return "";
            }
        } catch (Exception e2) {
            return "";
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0073 A:{SYNTHETIC, Splitter: B:19:0x0073} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0078 A:{Catch:{ IOException -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0073 A:{SYNTHETIC, Splitter: B:19:0x0073} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0078 A:{Catch:{ IOException -> 0x0114 }} */
    public static void a(android.content.Context r10, java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12, com.xiaomi.mistatistic.sdk.controller.l.b r13) throws java.io.IOException {
        /*
        r1 = 0;
        r0 = b();
        if (r0 != 0) goto L_0x000f;
    L_0x0007:
        r0 = "NET";
        r1 = "Network connection is disabled.";
        com.xiaomi.mistatistic.sdk.controller.j.d(r0, r1);
    L_0x000e:
        return;
    L_0x000f:
        r0 = android.text.TextUtils.isEmpty(r11);
        if (r0 == 0) goto L_0x001d;
    L_0x0015:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "The url is empty.";
        r0.<init>(r1);
        throw r0;
    L_0x001d:
        r0 = com.xiaomi.mistatistic.sdk.controller.t.a(r10, r11);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = new java.net.URL;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2.<init>(r0);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r3 = a(r10, r2);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r3.setConnectTimeout(r2);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = 15000; // 0x3a98 float:2.102E-41 double:7.411E-320;
        r3.setReadTimeout(r2);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = "POST";
        r3.setRequestMethod(r2);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = "Connection";
        r4 = "close";
        r3.setRequestProperty(r2, r4);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = "NET";
        r4 = "paramsMap:%s";
        r5 = 1;
        r5 = new java.lang.Object[r5];	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r6 = 0;
        r5[r6] = r12;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r4 = java.lang.String.format(r4, r5);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        com.xiaomi.mistatistic.sdk.controller.j.b(r2, r4);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        a(r12);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = b(r12);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r4 = r2.isEmpty();	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        if (r4 == 0) goto L_0x007c;
    L_0x005e:
        r0 = new java.lang.IllegalArgumentException;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = "The content being uploaded is empty.";
        r0.<init>(r2);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        throw r0;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
    L_0x0066:
        r0 = move-exception;
        r2 = r1;
    L_0x0068:
        r3 = "NET";
        r4 = "IOException:";
        android.util.Log.d(r3, r4, r0);	 Catch:{ all -> 0x0070 }
        throw r0;	 Catch:{ all -> 0x0070 }
    L_0x0070:
        r0 = move-exception;
    L_0x0071:
        if (r2 == 0) goto L_0x0076;
    L_0x0073:
        r2.close();	 Catch:{ IOException -> 0x0114 }
    L_0x0076:
        if (r1 == 0) goto L_0x007b;
    L_0x0078:
        r1.close();	 Catch:{ IOException -> 0x0114 }
    L_0x007b:
        throw r0;
    L_0x007c:
        r4 = 1;
        r3.setDoOutput(r4);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r4 = r2.getBytes();	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = r3.getOutputStream();	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r5 = 0;
        r6 = r4.length;	 Catch:{ IOException -> 0x012f, Throwable -> 0x0128 }
        r2.write(r4, r5, r6);	 Catch:{ IOException -> 0x012f, Throwable -> 0x0128 }
        r2.flush();	 Catch:{ IOException -> 0x012f, Throwable -> 0x0128 }
        r2.close();	 Catch:{ IOException -> 0x012f, Throwable -> 0x0128 }
        r4 = 0;
        r2 = r3.getResponseCode();	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r5 = "NET";
        r6 = "url:%s, responseCode:%d";
        r7 = 2;
        r7 = new java.lang.Object[r7];	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r8 = 0;
        r7[r8] = r0;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r0 = 1;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r7[r0] = r2;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r0 = java.lang.String.format(r6, r7);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        com.xiaomi.mistatistic.sdk.controller.j.b(r5, r0);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r0 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r5 = new com.xiaomi.mistatistic.sdk.controller.l$a;	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r3 = r3.getInputStream();	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r5.<init>(r3);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r0.<init>(r5);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r2.<init>(r0);	 Catch:{ IOException -> 0x0066, Throwable -> 0x0101, all -> 0x011e }
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r3 = new java.lang.StringBuffer;	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r3.<init>();	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r5 = "line.separator";
        r5 = java.lang.System.getProperty(r5);	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
    L_0x00d3:
        if (r0 == 0) goto L_0x00e0;
    L_0x00d5:
        r3.append(r0);	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r3.append(r5);	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        goto L_0x00d3;
    L_0x00e0:
        r0 = r3.toString();	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r13.a(r0);	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r2.close();	 Catch:{ IOException -> 0x0132, Throwable -> 0x012a, all -> 0x0122 }
        r0 = 0;
        if (r1 == 0) goto L_0x00f0;
    L_0x00ed:
        r4.close();	 Catch:{ IOException -> 0x00f7 }
    L_0x00f0:
        if (r1 == 0) goto L_0x000e;
    L_0x00f2:
        r0.close();	 Catch:{ IOException -> 0x00f7 }
        goto L_0x000e;
    L_0x00f7:
        r0 = move-exception;
        r1 = "NET";
        r2 = "doHttpPost final exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r1, r2, r0);
        goto L_0x000e;
    L_0x0101:
        r0 = move-exception;
        r2 = r1;
    L_0x0103:
        r3 = "NET";
        r4 = "Throwable:";
        android.util.Log.d(r3, r4, r0);	 Catch:{ all -> 0x0070 }
        r3 = new java.io.IOException;	 Catch:{ all -> 0x0070 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x0070 }
        r3.<init>(r0);	 Catch:{ all -> 0x0070 }
        throw r3;	 Catch:{ all -> 0x0070 }
    L_0x0114:
        r1 = move-exception;
        r2 = "NET";
        r3 = "doHttpPost final exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r1);
        goto L_0x007b;
    L_0x011e:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0071;
    L_0x0122:
        r0 = move-exception;
        r9 = r2;
        r2 = r1;
        r1 = r9;
        goto L_0x0071;
    L_0x0128:
        r0 = move-exception;
        goto L_0x0103;
    L_0x012a:
        r0 = move-exception;
        r9 = r2;
        r2 = r1;
        r1 = r9;
        goto L_0x0103;
    L_0x012f:
        r0 = move-exception;
        goto L_0x0068;
    L_0x0132:
        r0 = move-exception;
        r9 = r2;
        r2 = r1;
        r1 = r9;
        goto L_0x0068;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.l.a(android.content.Context, java.lang.String, java.util.Map, com.xiaomi.mistatistic.sdk.controller.l$b):void");
    }

    protected static void a(Map<String, String> map) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            HashMap hashMap = new HashMap();
            if (map != null) {
                List<String> arrayList = new ArrayList(map.keySet());
                Collections.sort(arrayList);
                if (!arrayList.isEmpty()) {
                    for (String str : arrayList) {
                        stringBuilder.append(str + ((String) map.get(str)));
                    }
                }
            }
            stringBuilder.append("mistats_sdkconfig_jafej!@#)(*e@!#");
            map.put("sign", t.b(stringBuilder.toString()).toLowerCase(Locale.getDefault()));
        } catch (Throwable e) {
            j.a("NET", "sign exception:", e);
        }
    }

    public static String b(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        StringBuffer deleteCharAt;
        StringBuffer stringBuffer = new StringBuffer();
        for (Entry entry : map.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                try {
                    stringBuffer.append(URLEncoder.encode((String) entry.getKey(), Keyczar.DEFAULT_ENCODING));
                    stringBuffer.append("=");
                    stringBuffer.append(URLEncoder.encode((String) entry.getValue(), Keyczar.DEFAULT_ENCODING));
                    stringBuffer.append("&");
                } catch (UnsupportedEncodingException e) {
                    return null;
                }
            }
        }
        if (stringBuffer.length() > 0) {
            deleteCharAt = stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        } else {
            deleteCharAt = stringBuffer;
        }
        return deleteCharAt.toString();
    }

    public static HttpURLConnection a(Context context, URL url) throws IOException {
        if (!"http".equals(url.getProtocol())) {
            return (HttpURLConnection) url.openConnection();
        }
        if (e(context)) {
            return (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        }
        if (!d(context)) {
            return (HttpURLConnection) url.openConnection();
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(a(url)).openConnection();
        httpURLConnection.addRequestProperty("X-Online-Host", url.getHost());
        return httpURLConnection;
    }

    public static String a(URL url) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(url.getProtocol()).append("://").append("10.0.0.172").append(url.getPath());
        if (!TextUtils.isEmpty(url.getQuery())) {
            stringBuilder.append("?").append(url.getQuery());
        }
        return stringBuilder.toString();
    }

    public static boolean d(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3 || extraInfo.contains("ctwap")) {
                    return false;
                }
                return extraInfo.regionMatches(true, extraInfo.length() - 3, "wap", 0, 3);
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean e(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3) {
                    return false;
                }
                return extraInfo.contains("ctwap");
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static void a(String str, Map<String, String> map, b bVar) throws IOException {
        Context a = d.a();
        if (CustomSettings.isDataUploadingEnabled()) {
            if (map != null) {
                map.put("bc", BuildSetting.getMiuiBuildCode());
            }
            if (!CustomSettings.isUseSystemUploadingService()) {
                a(a, str, map, bVar);
                return;
            } else if (c()) {
                try {
                    b(a, str, map, bVar);
                    return;
                } catch (Exception e) {
                    throw new IOException("exception thrown from IPC." + e.getMessage());
                }
            } else {
                bVar.a(null);
                j.a("NET", "Uploading via sys service, metered network connected, skip");
                return;
            }
        }
        j.d("NET", "upload is disabled.");
        bVar.a("");
    }

    @SuppressLint({"NewApi"})
    public static boolean c() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) d.a().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            if (activeNetworkInfo.getType() == 1) {
                return true;
            }
            if (VERSION.SDK_INT < 16) {
                return false;
            }
            return !connectivityManager.isActiveNetworkMetered();
        } catch (Throwable e) {
            j.a("NET", "isUnmeteredNetworkConnected exception", e);
            return false;
        }
    }

    public static void b(final Context context, final String str, final Map<String, String> map, final b bVar) {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.xiaomi.xmsf", "com.xiaomi.xmsf.push.service.HttpService");
            if (!context.bindService(intent, new ServiceConnection() {
                private boolean e = false;

                public void onServiceDisconnected(ComponentName componentName) {
                    j.a("NET", "error while perform IPC connection.", null);
                    if (!this.e) {
                        bVar.a(null);
                        j.a("NET", "disconnected, remote http post hasn't not processed");
                    }
                }

                public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
                    r.b.execute(new Runnable() {
                        public void run() {
                            try {
                                bVar.a(com.xiaomi.xmsf.push.service.a.a.a(iBinder).a(t.a(context, str), map));
                                AnonymousClass1.this.e = true;
                                j.a("NET", "connected, do remote http post");
                                context.unbindService(this);
                            } catch (Throwable th) {
                                j.a("NET", "error while uploading the logs by IPC.", th);
                                bVar.a(null);
                                AnonymousClass1.this.e = true;
                            }
                        }
                    });
                }
            }, 1)) {
                j.a("NET", "Failed to bind IHttpService.");
                bVar.a(null);
            }
        } catch (Throwable e) {
            j.a("NET", "uploadDataThroughSystemService", e);
            bVar.a(null);
        }
    }

    public static String f(Context context) {
        try {
            if (t.g(context)) {
                return g(context);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return "unknown";
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() == 0) {
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return "2G";
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return "3G";
                    case 13:
                    case 18:
                    case 19:
                        return "4G";
                    default:
                        return "unknown";
                }
            }
            return "unknown";
        } catch (Throwable e) {
            j.a("NET", "getNetworkType exception", e);
        }
    }

    public static String g(Context context) {
        String str = "";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(9);
                if (networkInfo != null && networkInfo.isConnected()) {
                    return "WIFI" + h(context);
                }
                if (networkInfo2 != null && networkInfo2.isConnected()) {
                    return "ETHERNET";
                }
            }
        } catch (Throwable e) {
            j.a("NET", "getNetworkType exception", e);
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0099 A:{Catch:{ Exception -> 0x009e }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x008c A:{Catch:{ Exception -> 0x009e }} */
    public static java.lang.String h(android.content.Context r8) {
        /*
        r2 = 2;
        r3 = 1;
        r1 = "";
        r0 = android.os.Build.VERSION.SDK_INT;
        r4 = 22;
        if (r0 < r4) goto L_0x0040;
    L_0x000a:
        r0 = "wifi";
        r0 = r8.getSystemService(r0);	 Catch:{ NoSuchMethodError -> 0x002e, Exception -> 0x0037 }
        r0 = (android.net.wifi.WifiManager) r0;	 Catch:{ NoSuchMethodError -> 0x002e, Exception -> 0x0037 }
        r0 = r0.getConnectionInfo();	 Catch:{ NoSuchMethodError -> 0x002e, Exception -> 0x0037 }
        r0 = r0.getFrequency();	 Catch:{ NoSuchMethodError -> 0x002e, Exception -> 0x0037 }
        r2 = a(r0);	 Catch:{ NoSuchMethodError -> 0x002e, Exception -> 0x0037 }
        if (r2 == 0) goto L_0x0025;
    L_0x0021:
        r0 = "5G";
    L_0x0023:
        r1 = r0;
    L_0x0024:
        return r1;
    L_0x0025:
        r0 = b(r0);	 Catch:{ NoSuchMethodError -> 0x002e, Exception -> 0x0037 }
        if (r0 == 0) goto L_0x00aa;
    L_0x002b:
        r0 = "2G";
        goto L_0x0023;
    L_0x002e:
        r0 = move-exception;
        r2 = "NET";
        r3 = "getWififreband NoSuchMethodError";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);
        goto L_0x0024;
    L_0x0037:
        r0 = move-exception;
        r2 = "NET";
        r3 = "getWififreband exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);
        goto L_0x0024;
    L_0x0040:
        r4 = -1;
        r0 = "wifi";
        r0 = r8.getSystemService(r0);	 Catch:{ Exception -> 0x009e }
        r0 = (android.net.wifi.WifiManager) r0;	 Catch:{ Exception -> 0x009e }
        r5 = r0.getConnectionInfo();	 Catch:{ Exception -> 0x009e }
        r5 = r5.getSSID();	 Catch:{ Exception -> 0x009e }
        r6 = 1;
        r7 = r5.length();	 Catch:{ Exception -> 0x009e }
        r7 = r7 + -1;
        r6 = r5.substring(r6, r7);	 Catch:{ Exception -> 0x009e }
        if (r5 == 0) goto L_0x00a8;
    L_0x005f:
        r5 = r5.length();	 Catch:{ Exception -> 0x009e }
        if (r5 <= r2) goto L_0x00a8;
    L_0x0065:
        r0 = r0.getScanResults();	 Catch:{ Exception -> 0x009e }
        r5 = r0.iterator();	 Catch:{ Exception -> 0x009e }
    L_0x006d:
        r0 = r5.hasNext();	 Catch:{ Exception -> 0x009e }
        if (r0 == 0) goto L_0x00a8;
    L_0x0073:
        r0 = r5.next();	 Catch:{ Exception -> 0x009e }
        r0 = (android.net.wifi.ScanResult) r0;	 Catch:{ Exception -> 0x009e }
        r7 = r0.SSID;	 Catch:{ Exception -> 0x009e }
        r7 = r7.equals(r6);	 Catch:{ Exception -> 0x009e }
        if (r7 == 0) goto L_0x006d;
    L_0x0081:
        r5 = r0.frequency;	 Catch:{ Exception -> 0x009e }
        r5 = a(r5);	 Catch:{ Exception -> 0x009e }
        if (r5 == 0) goto L_0x008f;
    L_0x0089:
        r0 = r2;
    L_0x008a:
        if (r0 != r2) goto L_0x0099;
    L_0x008c:
        r1 = "5G";
        goto L_0x0024;
    L_0x008f:
        r0 = r0.frequency;	 Catch:{ Exception -> 0x009e }
        r0 = b(r0);	 Catch:{ Exception -> 0x009e }
        if (r0 == 0) goto L_0x00a8;
    L_0x0097:
        r0 = r3;
        goto L_0x008a;
    L_0x0099:
        if (r0 != r3) goto L_0x0024;
    L_0x009b:
        r1 = "2G";
        goto L_0x0024;
    L_0x009e:
        r0 = move-exception;
        r2 = "NET";
        r3 = "getWififreband exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);
        goto L_0x0024;
    L_0x00a8:
        r0 = r4;
        goto L_0x008a;
    L_0x00aa:
        r0 = r1;
        goto L_0x0023;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.l.h(android.content.Context):java.lang.String");
    }

    private static boolean a(int i) {
        return i > 4900 && i < 5900;
    }

    private static boolean b(int i) {
        return i > 2400 && i < 2500;
    }

    public static int i(Context context) {
        String f = f(context);
        if (TextUtils.isEmpty(f) || f.equals("unknown")) {
            return 0;
        }
        if (f.equals("2G")) {
            return 1;
        }
        if (f.equals("3G")) {
            return 2;
        }
        if (f.equals("4G")) {
            return 4;
        }
        if (f.startsWith("WIFI")) {
            return 8;
        }
        if (f.equals("ETHERNET")) {
            return 16;
        }
        return 0;
    }
}
